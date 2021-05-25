using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace RegistationProject
{
    public partial class UserReport : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ToString());
        protected void Page_Load(object sender, EventArgs e)
        {
            string id = Request.QueryString["Name"].ToString();
            Label1.Text = id;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("UserLogout.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            con.Open();
            string query = "insert into Report values('"+ Label1.Text+"' ,'"+DropDownList1.Text+"','"+TextBox1.Text+"')";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.ExecuteNonQuery();
            con.Close();
        }
    }
}