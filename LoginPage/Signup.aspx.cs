using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;



namespace LoginPage
{
    public partial class Signup : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
        }
                protected void Button1_Click(object sender, EventArgs e)
        {

            SqlConnection con = new SqlConnection
            {
                ConnectionString = "Data Source=ANIKET\\SQLEXPRESS;Initial Catalog=login;Persist Security Info=True;User ID=sa;Password=sa*123"
            };
            con.Open();

            SqlCommand cmd = new SqlCommand("insert into signup(fname,lname,email,gender,address,phone,pass)values(@fname,@lname,@email,@gender,@address,@phone,@pass)", con);
            cmd.Parameters.AddWithValue("@fname", TextBox1.Text);
            cmd.Parameters.AddWithValue("@lname", TextBox2.Text);
            cmd.Parameters.AddWithValue("@email", TextBox3.Text);
            cmd.Parameters.AddWithValue("@address", TextBox4.Text);
            cmd.Parameters.AddWithValue("@phone", TextBox5.Text);
            cmd.Parameters.AddWithValue("@pass", TextBox6.Text);
            cmd.Parameters.AddWithValue("@gender", DropDownList1.SelectedItem.Value);
            cmd.ExecuteNonQuery();

            Label1.Text = "Sign up insert";
        }
    }
}