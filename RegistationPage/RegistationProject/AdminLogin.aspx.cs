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
    public partial class AdminLogin : System.Web.UI.Page
    {
        public static SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ToString());
        public static SqlCommand cmd = new SqlCommand();
        public static SqlDataReader dr;
        protected void Page_Load(object sender, EventArgs e)
        {
            con.Open();
        }
        protected void Page_UnLoad(object sender, EventArgs e)
        {
            con.Close();
        }

        protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
        {
            //cmd = new SqlCommand("select * from Registation where email='"+TextBox1.Text+"' and pwd='"+TextBox2.Text+"'",con);
            // dr = cmd.ExecuteReader();
            //dr.Read();
            if (TextBox1.Text == "bhanumurthy074@gmail.com" && TextBox2.Text == "Bhanusurya*1")
            {
                //Session["x"]=TextBox1.Text;
                //dr.Close();
                Response.Redirect("AdminLogout.aspx");
            }
            //else
            //{
            //    //dr.Close();
            //    ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Invalid Username and Password')</script>");
            //}

        }

    }
}