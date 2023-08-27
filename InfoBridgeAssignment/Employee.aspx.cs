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


        //string connectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=E:\Practice\InfoBridgeAssignment\InfoBridgeAssignment\App_Data\Mydatabase.mdf;Integrated Security=True";
        


        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                GetEmployeeList();
            }
        }

        SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=E:\\Practice\\InfoBridgeAssignment\\InfoBridgeAssignment\\App_Data\\Mydatabase.mdf;Integrated Security=True");


        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }
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
            int id=int.Parse(txtId.Text);
            string name = txtName.Text, sex = drpSex.Text, phone = txtPhone.Text, dateofbirth = txtDateOfBirth.Text;
            string image =Path.GetFileName( FileUpload1.FileName);
            FileUpload1.SaveAs(Server.MapPath("EmployeeImg/") + image);
            //DateTime dateofbirth=DateTime.Parse(txtDateOfBirth.Text);
                       con.Open();
            SqlCommand cmd = new SqlCommand("Insert into Employee values" +
            "('" + id + "','" + name + "', '" + dateofbirth + "','" + sex + "','" + phone + "','" + image + "')",con);
            cmd.ExecuteNonQuery();
            con.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Successfully Saved')", true);
            GetEmployeeList();
            Clear_All();
        }
        
        void GetEmployeeList()
        {
            SqlCommand cmd = new SqlCommand("Select * from Employee", con);
            SqlDataAdapter da= new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
        

        protected void btnView_Click(object sender, EventArgs e)
        {

            int id = int.Parse(txtId.Text);
            SqlCommand cmd = new SqlCommand("Select * from Employee where Id='"+id+"'", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();


        }

        protected void btnEdit_Click(object sender, EventArgs e)
        {
            int id = int.Parse(txtId.Text);
            string name = txtName.Text, sex = drpSex.Text, phone = txtPhone.Text,dateofbirth=txtDateOfBirth.Text,
            image = FileUpload1.FileName;
            //DateTime dateofbirth = DateTime.Parse(txtDateOfBirth.Text);
            con.Open();
            SqlCommand cmd = new SqlCommand("Update  Employee set Name='" + name + "',DateOfBirth= '" + dateofbirth + "', Sex='" + sex + "',Phone='" + phone + "',Image='" + image + "' where Id='" + id + "'", con);
            cmd.ExecuteNonQuery();
            con.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Successfully Updated')", true);
            GetEmployeeList();
            Clear_All();

        }
        protected void btnDelete_Click(object sender, EventArgs e)
        {
            int id = int.Parse(txtId.Text);
            con.Open();
            SqlCommand cmd = new SqlCommand("Delete  Employee  where Id='" + id + "'", con);
            cmd.ExecuteNonQuery();
            con.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Successfully Deleted')", true);
            GetEmployeeList();
            Clear_All();
        }
    }
}
    
