using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace LoginPage
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Class1.con.Open();
        }

        protected void Page_UnLoad(object sender, EventArgs e)
        {
            Class1.con.Close();
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            Class1.cmd = new SqlCommand("select * from login where username='"+TextBox1.Text+"' and password='"+TextBox2.Text+"'",Class1.con);
            Class1.dr = Class1.cmd.ExecuteReader();
            Class1.dr.Read();
            if(Class1.dr.HasRows)
            {
                Session["log"] = TextBox1.Text;
                Class1.dr.Close();
                Response.Redirect("logout.aspx");
            }
            else
            {
                Class1.dr.Close();
                Response.Write("Incorrect.");
            }
               
        }
    }
}