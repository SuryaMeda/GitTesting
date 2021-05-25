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
    public partial class AdminLogout : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ToString());
        Bussiness bal = new Bussiness();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                filldata();
            }
           
        }

        public void filldata()
        {
            GridViewAdmin.DataSource = bal.Bind_record();
            GridViewAdmin.DataBind();
        }
       
        protected void GridViewAdmin_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            GridViewRow row = GridViewAdmin.Rows[e.RowIndex];
            Control c1 = row.FindControl("Label16");
            Label l1 = (Label)c1;
            bal.Bno = l1.Text;
            bal.delete_record(bal.Bno);
            filldata();
        }

        protected void GridViewAdmin_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridViewAdmin.EditIndex = e.NewEditIndex;
            filldata();

        }

        protected void GridViewAdmin_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            GridViewRow row = GridViewAdmin.Rows[e.RowIndex];
            Control c1 = row.FindControl("TextBox1");
            TextBox t1 = (TextBox)c1;
            Control c2 = row.FindControl("TextBox2");
            TextBox t2 = (TextBox)c2;
            Control c3 = row.FindControl("TextBox3");
            TextBox t3 = (TextBox)c3;
            Control c4 = row.FindControl("TextBox4");
            TextBox t4 = (TextBox)c4;
            Control c5 = row.FindControl("TextBox5");
            TextBox t5 = (TextBox)c5;
            Control c6 = row.FindControl("TextBox6");
            TextBox t6 = (TextBox)c6;
            Control c7 = row.FindControl("TextBox7");
            TextBox t7 = (TextBox)c7;
            Control c8 = row.FindControl("TextBox8");
            TextBox t8 = (TextBox)c8;
            Control c9 = row.FindControl("TextBox9");
            TextBox t9 = (TextBox)c9;
            Control c10 = row.FindControl("TextBox10");
            TextBox t10 = (TextBox)c10;
            Control c11 = row.FindControl("TextBox11");
            TextBox t11 = (TextBox)c11;
            Control c12 = row.FindControl("TextBox12");
            TextBox t12 = (TextBox)c12;
            Control c13 = row.FindControl("TextBox13");
            TextBox t13 = (TextBox)c13;
            Control c14 = row.FindControl("TextBox14");
            TextBox t14 = (TextBox)c14;
            Control c15 = row.FindControl("TextBox15");
            TextBox t15 = (TextBox)c15;
            Control c16 = row.FindControl("TextBox16");
            TextBox t16 = (TextBox)c16;
            Control c17 = row.FindControl("TextBox17");
            TextBox t17 = (TextBox)c17;

            bal.Name = t1.Text;
            bal.Dod = t2.Text;
            bal.Phone = t3.Text;
            bal.Country = t4.Text;
            bal.State = t5.Text;
            bal.Distric = t6.Text;
            bal.City = t7.Text;
            bal.Email = t8.Text;
            bal.Pwd = t9.Text;
            bal.Cpwd = t10.Text;
            bal.Gender = t11.Text;
            bal.Lang = t12.Text;
            bal.Add = t13.Text;
            bal.Blood = t14.Text;
            bal.Photo = t15.Text;
            bal.Bno = t16.Text;
            bal.Group = t17.Text;
            bal.update_record();
            //var data = bal.update_record();
            //var list = new List<object> { data };
            //SqlDataAdapter da = new SqlDataAdapter(data,con);
            //DataSet ds = new DataSet();
            //da.Fill(ds);
            GridViewAdmin.DataSource = bal.Bind_record();  
            GridViewAdmin.EditIndex = -1;
            filldata();
        }

        protected void GridViewAdmin_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridViewAdmin.EditIndex = -1;
            filldata();
        }

        protected void GridViewAdmin_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            GridViewRow row = GridViewAdmin.FooterRow;
            Control c1 = row.FindControl("TextBox1");
            TextBox t1 = (TextBox)c1;
            Control c2 = row.FindControl("TextBox2");
            TextBox t2 = (TextBox)c2;
            Control c3 = row.FindControl("TextBox3");
            TextBox t3 = (TextBox)c3;
            Control c4 = row.FindControl("TextBox4");
            TextBox t4 = (TextBox)c4;
            Control c5 = row.FindControl("TextBox5");
            TextBox t5 = (TextBox)c5;
            Control c6 = row.FindControl("TextBox6");
            TextBox t6 = (TextBox)c6;
            Control c7 = row.FindControl("TextBox7");
            TextBox t7 = (TextBox)c7;
            Control c8 = row.FindControl("TextBox8");
            TextBox t8 = (TextBox)c8;
            Control c9 = row.FindControl("TextBox9");
            TextBox t9 = (TextBox)c9;
            Control c10 = row.FindControl("TextBox10");
            TextBox t10 = (TextBox)c10;
            Control c11 = row.FindControl("TextBox11");
            TextBox t11 = (TextBox)c11;
            Control c12 = row.FindControl("TextBox12");
            TextBox t12 = (TextBox)c12;
            Control c13 = row.FindControl("TextBox13");
            TextBox t13 = (TextBox)c13;
            Control c14 = row.FindControl("TextBox14");
            TextBox t14 = (TextBox)c14;
            Control c15 = row.FindControl("TextBox15");
            TextBox t15 = (TextBox)c15;
            Control c16 = row.FindControl("TextBox16");
            TextBox t16 = (TextBox)c16;
            Control c17 = row.FindControl("TextBox17");
            TextBox t17 = (TextBox)c17;

            bal.Name = t1.Text;
            bal.Dod = t2.Text;
            bal.Phone = t3.Text;
            bal.Country = t4.Text;
            bal.State = t5.Text;
            bal.Distric = t6.Text;
            bal.City = t7.Text;
            bal.Email = t8.Text;
            bal.Pwd = t9.Text;
            bal.Cpwd = t10.Text;
            bal.Gender = t11.Text;
            bal.Lang = t12.Text;
            bal.Add = t13.Text;
            bal.Blood = t14.Text;
            bal.Photo = t15.Text;
            bal.Bno = t16.Text;
            bal.Group = t17.Text;

            bal.insert_record();
            filldata();
        }

        protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
        {
            Session.Clear();
            Response.Redirect("AdminLogin.aspx");
        }
    }
}