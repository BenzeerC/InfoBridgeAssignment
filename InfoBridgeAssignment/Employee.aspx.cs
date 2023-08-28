using System;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Windows.Forms;
using System.Configuration;
using System.Web.UI.WebControls;
using System.Web.UI;
using System.Web;
using System.Xml.Linq;

namespace InfoBridgeAssignment
{
    public partial class Employee : System.Web.UI.Page
    {


        string connectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=E:\Practice\InfoBridgeAssignment\InfoBridgeAssignment\App_Data\Mydatabase.mdf;Integrated Security=True";

        SqlConnection con;
        SqlCommand cmd;
        SqlDataReader dr;

        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                GetEmployeeList();
            }
        }

        //SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=E:\\Practice\\InfoBridgeAssignment\\InfoBridgeAssignment\\App_Data\\Mydatabase.mdf;Integrated Security=True");


        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }
        //Clear data
        public void Clear_All()
        {
            txtId.Text = "";
            txtName.Text = "";
            drpSex.SelectedValue = drpSex.Items[0].ToString();
            txtPhone.Text = "";
            txtDateOfBirth.Text = DateTime.Today.Date.ToString();
            lblMessage.Text = "";
        }




        //Add Employee
        protected void btnAdd_Click(object sender, EventArgs e)
        {
            try
            {
                con = new SqlConnection(connectionString);
                int id = int.Parse(txtId.Text);
                string name = txtName.Text, sex = drpSex.Text, phone = txtPhone.Text, dateofbirth = txtDateOfBirth.Text;
                string image = Path.GetFileName(FileUpload1.FileName);
                FileUpload1.SaveAs(Server.MapPath("EmployeeImg/") + image);
                
                string qry = "Insert into Employee values(@Id,@Name,@DateOfBirth,@Sex,@Phone,@Image)";
                cmd = new SqlCommand(qry, con);
                
                cmd.Parameters.AddWithValue("@Id", id);
                cmd.Parameters.AddWithValue("@Name", name);
                cmd.Parameters.AddWithValue("@DateOfBirth", dateofbirth);
                cmd.Parameters.AddWithValue("@Sex", sex);
                cmd.Parameters.AddWithValue("@Phone", phone);
                cmd.Parameters.AddWithValue("@Image", image);
                con.Open();
                
                cmd.ExecuteNonQuery();
                con.Close();
                MessageBox.Show("Successfully Added..");
                
                GetEmployeeList();
                Clear_All();
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }
        //view all employee
        void GetEmployeeList()
        { 
            con = new SqlConnection(connectionString);
            string qry = "Select * from Employee";
            cmd= new SqlCommand(qry,con);
            con.Open() ;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
        
        //View by Id
        protected void btnView_Click(object sender, EventArgs e)
        {
            try
            {
                con = new SqlConnection(connectionString);
                int id = int.Parse(txtId.Text);
                string qry = "Select * from Employee Where @Id=id";
                cmd = new SqlCommand(qry, con);
                cmd.Parameters.AddWithValue("@Id", id);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                GridView1.DataSource = dt;
                GridView1.DataBind();
            }
            catch(Exception ex) {
                MessageBox.Show(ex.Message);
            }

        }
        //Edit by Id
        protected void btnEdit_Click(object sender, EventArgs e)
        {
            try { 
            con = new SqlConnection(connectionString);
            int id = int.Parse(txtId.Text);
            string name = txtName.Text, sex = drpSex.Text, phone = txtPhone.Text, dateofbirth = txtDateOfBirth.Text,
            image = FileUpload1.FileName;
            string qry = "Update Employee set name=@Name,dateofbirth=@DateOfBirth,sex=@Sex,phone=@Phone,image=@Image where @Id=id";
            cmd = new SqlCommand(qry, con);
                cmd.Parameters.AddWithValue("@Name", name);
                cmd.Parameters.AddWithValue("@DateOfBirth", dateofbirth);
                cmd.Parameters.AddWithValue("@Sex", sex);
                cmd.Parameters.AddWithValue("@Phone", phone);
                cmd.Parameters.AddWithValue("@Image", image);
                cmd.Parameters.AddWithValue("@Id", id);
                con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            MessageBox.Show("Successfully Edited..");               
            GetEmployeeList();
            Clear_All();

            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message + "Error");
            }
        }
        //Delete by Id
        protected void btnDelete_Click(object sender, EventArgs e)
        {
            try
            {
                con = new SqlConnection(connectionString);
                int id = int.Parse(txtId.Text);
                string qry = "Delete Employee Where @Id=id";
                cmd = new SqlCommand(qry, con);
                cmd.Parameters.AddWithValue("@Id", id);
                con.Open();
                
                cmd.ExecuteNonQuery();
                con.Close();
                MessageBox.Show("Successfully Deleted");
                
                GetEmployeeList();
                Clear_All();
            }
            catch(Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }
    }
}
    
