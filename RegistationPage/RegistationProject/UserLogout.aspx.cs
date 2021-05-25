using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;
using BLL;

namespace RegistationProject
{
    public partial class UserLogout : System.Web.UI.Page
    {
        Bussiness bal = new Bussiness();
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ToString());
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["log"] == null)
            {
                Response.Redirect("Login.aspx");
            }
            else
            {
                filldata();
            }
        }

        protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
        {
            Session.Clear();
            Response.Redirect("Login.aspx");
        }
        public void filldata()
        {
            string query = "select * from Registation where email='" + Session["log"] + "'";
            SqlCommand cmd = new SqlCommand(query,con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            GridViewUser.DataSource = ds;
            GridViewUser.DataBind();
        }

        protected void GridViewUser_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void link_Click(object sender, EventArgs e)
        {
            
        }

        protected void GridViewUser_RowCommand(object sender, GridViewCommandEventArgs e)
        {
          if(e.CommandName=="Reports")
          {
              string lb = e.CommandArgument.ToString();
              Response.Redirect("~/UserReport.aspx?Name="+lb);
          }
        }
    }
}