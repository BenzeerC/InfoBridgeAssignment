using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;

namespace InfoBridgeAssignment
{
    public partial class Employee : System.Web.UI.Page
    {
        //Connection server
        string connectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=E:\Practice\InfoBridgeAssignment\InfoBridgeAssignment\App_Data\Mydatabase.mdf;Integrated Security=True";


        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                Calendar1.Visible = false;
            }
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            if(Calendar1.Visible)
            {
                Calendar1.Visible=false;
            }
            else
            {
                Calendar1.Visible=true;
            }
            Calendar1.Attributes.Add("style", "position:absolute");
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            txtDateOfBirth.Text=Calendar1.SelectedDate.ToString("yyyy/MM/dd");
            Calendar1.Visible = false;
        }

        protected void Calendar1_DayRender(object sender, DayRenderEventArgs e)
        {
            if(e.Day.IsOtherMonth)
            {
                e.Day.IsSelectable = false;
            }
        }
        //Add Employee
        protected void btnAdd_Click(object sender, EventArgs e)
        {
            try
            {
                using (SqlConnection con = new SqlConnection(connectionString))
                {
                    if(FileUpload1.HasFile)
                    {
                        con.Open();
                        string query = "Insert into Employee(Id,Name,DateOfBirth,Sex,Phone,Image) values(@Id,@Name,@DateOfBirth,@Sex,@Phone,@Image)";
                        SqlCommand cmd = new SqlCommand(query, con);
                        FileUpload1.SaveAs(Server.MapPath("~/EmployeeImg/") + System.IO.Path.GetFileName(FileUpload1.FileName));
                        string linkpath = "EmployeeImg/" + System.IO.Path.GetFileName(FileUpload1.FileName);
                        cmd.Parameters.AddWithValue("@Id", txtId.Text);
                        cmd.Parameters.AddWithValue("@Name", txtName.Text);
                        cmd.Parameters.AddWithValue("@DateOfBirth", txtDateOfBirth.Text);
                        cmd.Parameters.AddWithValue("@Sex", txtSex.Text);
                        cmd.Parameters.AddWithValue("@Phone", txtPhone.Text);
                        cmd.Parameters.AddWithValue("@Image", linkpath);

                        cmd.ExecuteNonQuery();
                        con.Close();
                    }
                    
                }
                //object MessageBox = null;
                MessageBox.Show("Add Sucessful!");

            }
            catch(Exception ex)
            {
                MessageBox.Show(ex+ "Failed");
            }

        }
    }
}