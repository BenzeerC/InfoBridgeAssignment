using System;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Windows.Forms;
using System.Configuration;
using System.Web.UI.WebControls;
using System.Web.UI;
using System.Web;

namespace InfoBridgeAssignment
{
    public partial class Employee : System.Web.UI.Page
    {


        string connectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=E:\Practice\InfoBridgeAssignment\InfoBridgeAssignment\App_Data\Mydatabase.mdf;Integrated Security=True";
        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter adapter;
        DataTable dt;


        public void Data_Load()
        {
            if(IsPostBack) {
                dgViewEmployee.DataBind(); 
            }
        }

        public void Clear_All()
        {
            txtId.Text = "";
            txtName.Text = "";
            drpSex.SelectedValue = drpSex.Items[0].ToString();
            txtPhone.Text = "";
            txtDateOfBirth.Text=DateTime.Today.Date.ToString();
            lblMessage.Text = "";
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand(connectionString);
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            lblId.Text = dgViewEmployee.SelectedRow.Cells[1].Text;
            txtName.Text = dgViewEmployee.SelectedRow.Cells[2].Text;
            drpSex.Text = dgViewEmployee.SelectedRow.Cells[3].Text;
            txtName.Text = dgViewEmployee.SelectedRow.Cells[4].Text;
            txtPhone.Text= dgViewEmployee.SelectedRow.Cells[5].Text;
            txtDateOfBirth.Text = dgViewEmployee.SelectedRow.Cells[6].Text;
            //FileUpload1. = dgViewEmployee.SelectedRow.Cells[7].Text;

        }

        //Add Employee
        protected void btnAdd_Click(object sender, EventArgs e)
        {
            try
            {
                if (txtName.Text != "" && txtPhone.Text != "")
                {
                    using (con = new SqlConnection(connectionString))
                    {
                        con.Open();
                        cmd = new SqlCommand("Insert into Employee(Id,Name,DateOfBirth,Sex,Phone,Image) " +
                            "values(@Id,@Name,@DateOfBirth,@Sex,@Phone,@Image)", con);
                        FileUpload1.SaveAs(Server.MapPath("~/EmployeeImg/") + System.IO.Path.GetFileName(FileUpload1.FileName));
                        string linkpath = "EmployeeImg/" + System.IO.Path.GetFileName(FileUpload1.FileName);
                        cmd.Parameters.AddWithValue("@Id", txtId.Text);
                        cmd.Parameters.AddWithValue("@Name", txtName.Text);
                        cmd.Parameters.AddWithValue("@DateOfBirth", txtDateOfBirth.Text);
                        cmd.Parameters.AddWithValue("@Sex", drpSex.Text);
                        cmd.Parameters.AddWithValue("@Phone", txtPhone.Text);
                        cmd.Parameters.AddWithValue("@Image", linkpath);

                        cmd.ExecuteNonQuery();
                        con.Close();
                        Clear_All();
                    }
                    MessageBox.Show("Record Added Successfully..");
                }
                else
                {
                    lblMessage.Text = "Fill All Information";
                }

            }
            catch(Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
            
        } 
        

        protected void btnView_Click(object sender, EventArgs e)
        {
            Data_Load();


        }

        protected void btnEdit_Click(object sender, EventArgs e)
        {
            try {
                if (txtName.Text != "" && txtPhone.Text != "")
                {
                    using (con = new SqlConnection(connectionString))
                    {
                        con.Open();
                        cmd = new SqlCommand("Update Employee set Name=@Name,DateOfBirth=@DateOfBirth,Sex=@Sex,Phone=@Phone," +
                            "Image=@Image where Id=@Id", con);

                        FileUpload1.SaveAs(Server.MapPath("~/EmployeeImg/") + System.IO.Path.GetFileName(FileUpload1.FileName));
                        string linkpath = "EmployeeImg/" + System.IO.Path.GetFileName(FileUpload1.FileName);

                        cmd.Parameters.AddWithValue("@Name", txtName.Text);
                        cmd.Parameters.AddWithValue("@DateOfBirth", txtDateOfBirth.Text);
                        cmd.Parameters.AddWithValue("@Sex", drpSex.Text);
                        cmd.Parameters.AddWithValue("@Phone", txtPhone.Text);
                        cmd.Parameters.AddWithValue("@Image", linkpath);
                        cmd.Parameters.AddWithValue("@Id", lblId.Text);

                        cmd.ExecuteNonQuery();
                        con.Close();
                        Clear_All();
                    }
                    MessageBox.Show("Record Updated...");
                }
                else
                {
                    lblMessage.Text = "Error";
                }



            }
            catch(Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
         }
        protected void btnDelete_Click(object sender, EventArgs e)
        {
            try
            {
                using (con = new SqlConnection(connectionString))
                {
                    con.Open();

                    cmd = new SqlCommand("delete from Employee where Id=@Id", con);
                    cmd.Parameters.AddWithValue("@Id", lblId.Text);
                    cmd.ExecuteNonQuery();
                    con.Close();
                    Clear_All();

                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }
    }
}
    
