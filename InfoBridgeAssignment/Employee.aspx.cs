using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Reflection.Emit;
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
        //SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Mydatabase.mdf;Integrated Security=True");


        protected void Page_Load(object sender, EventArgs e)
        {
        }

        //Add Employee
        protected void btnAdd_Click(object sender, EventArgs e)
        {


            try
            {
                using (SqlConnection con = new SqlConnection(connectionString))
                {
                    if (FileUpload1.HasFile)
                    {
                        con.Open();
                        string query = "Insert into Employee(Id,Name,DateOfBirth,Sex,Phone,Image) values(@Id,@Name,@DateOfBirth,@Sex,@Phone,@Image)";
                        SqlCommand cmd = new SqlCommand(query, con);
                        string path = Path.GetFileName(FileUpload1.FileName);
                        path = path.Replace(" ", "");
                        String filename1 = path;
                        FileUpload1.SaveAs(Server.MapPath("~/EmployeeImg/") + path);
                        //Label3.Text = "Image Uploaded and Saved in Server Successfully";
                        //FileUpload1.SaveAs(Server.MapPath("~/EmployeeImg/") + System.IO.Path.GetFileName(FileUpload1.FileName));
                        //string linkpath = "EmployeeImg/" + System.IO.Path.GetFileName(FileUpload1.FileName);
                        cmd.Parameters.AddWithValue("@Id", txtId.Text);
                        cmd.Parameters.AddWithValue("@Name", txtName.Text);
                        cmd.Parameters.AddWithValue("@DateOfBirth", txtDateOfBirth.Text);
                        cmd.Parameters.AddWithValue("@Sex", drpSex.Text);
                        cmd.Parameters.AddWithValue("@Phone", txtPhone.Text);
                        cmd.Parameters.AddWithValue("@Image", path);

                        cmd.ExecuteNonQuery();
                        con.Close();
                    }

                }
                //object MessageBox = null;
                MessageBox.Show("Add Sucessful!");

            }
            catch (Exception ex)
            {
                MessageBox.Show(ex + "Error:Record not added");
            }
            // Display_Data();
        }
        //public void Display_Data()
        //{
        //    using (SqlConnection con = new SqlConnection(connectionString))
        //    {
        //        SqlCommand cmd = con.CreateCommand();
        //        cmd.CommandType = CommandType.Text;
        //         con.Open();
        //        cmd.CommandText = "select * from Employee";
        //        cmd.ExecuteNonQuery();
        //        con.Close() ;

        //        DataTable dt = new DataTable();
        //        SqlDataAdapter da = new SqlDataAdapter(cmd);
        //        da.Fill(dt);
        //        GridView1.DataSource = dt;
        //        GridView1.DataBind();
        //        con.Close();
        //    }
        //}

        protected void btnView_Click(object sender, EventArgs e)
        {
            // Display_Data();
            try
            {
                int recordIdToView;
                if(int.TryParse(txtId.Text,out recordIdToView))
                {
                    using(SqlConnection con =new SqlConnection(connectionString))
                    {
                        string query = "select Id,Name,DateOfBirth,Sex,Phone,Image from  Employee where Id=@Id";
                        using(SqlDataAdapter da=new SqlDataAdapter(query, con))
                        {
                            da.SelectCommand.Parameters.AddWithValue("@Id", recordIdToView);
                            DataTable dt = new DataTable();
                            da.Fill(dt);
                            GridView1.DataSource = dt;
                            GridView1.DataBind();
                        }
                    }
                }
            }
            catch(Exception ex)
            {
                MessageBox.Show(ex + "Record Not Found");
            }

        }

        protected void btnEdit_Click(object sender, EventArgs e)
        {
            try
            {
                int recordId = Convert.ToInt32(txtId.Text);
                using (SqlConnection con = new SqlConnection(connectionString))
                {
                    string qry = "update Employee set Name=@Name,DateOfBirth=@DateOfBirth,Sex=@Sex,Phone=@Phone,Image=@Image " +
                        "where Id=@Id";
                    SqlCommand cmd = new SqlCommand(qry, con);
                    cmd.Parameters.AddWithValue("@Id", recordId);

                    cmd.Parameters.AddWithValue("@Name", txtName.Text);
                    cmd.Parameters.AddWithValue("@DateOfBirth", txtDateOfBirth.Text);
                    cmd.Parameters.AddWithValue("@Sex", drpSex.Text);
                    cmd.Parameters.AddWithValue("@Phone", txtPhone.Text);
                    cmd.Parameters.AddWithValue("@Image", FileUpload1.FileName);

                    con.Open();
                    int res = cmd.ExecuteNonQuery();
                    con.Close();
                    if (res > 0)
                    {
                        MessageBox.Show("Record Edit Successfully..");
                    }

                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex + "Error:Record not Found");
            }
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            try
            {
                int recordIdToDelete = Convert.ToInt32(txtId.Text);
                using (SqlConnection con = new SqlConnection(connectionString))
                {
                    string qry = "delete from Employee where Id=@Id";
                    SqlCommand cmd = new SqlCommand(qry, con);
                    cmd.Parameters.AddWithValue("@Id", recordIdToDelete);
                    con.Open();
                    int res = cmd.ExecuteNonQuery();
                    if (res > 0)
                    {
                        MessageBox.Show("Record Deleted..");
                    }

                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex + "Record Not Found");
            }
        }
    }
}
    
