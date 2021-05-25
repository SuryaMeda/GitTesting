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
    public partial class SearchPage : System.Web.UI.Page
    {
        Bussiness bal = new Bussiness();
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ToString());
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                countryDropdownlist();
            }
        }
        public void countryDropdownlist()
        {
            SqlDataAdapter da = new SqlDataAdapter("select * from Country order by country_name ", con);
            DataSet ds = new DataSet();
            DropDownList1.DataTextField = "country_name";
            DropDownList1.DataValueField = "country_id";
            da.Fill(ds);
            DropDownList1.DataSource = ds;
            DropDownList1.DataBind();
            DropDownList1.Items.Insert(0, "---Select---");
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            SqlDataAdapter da = new SqlDataAdapter("select state_id,state_Name from State where country_id='" + DropDownList1.SelectedItem.Value + "'order by state_Name ", con);
            DataSet ds = new DataSet();
            DropDownList2.DataTextField = "state_Name";
            DropDownList2.DataValueField = "state_id";
            da.Fill(ds);
            DropDownList2.DataSource = ds;
            DropDownList2.DataBind();
            DropDownList2.Items.Insert(0, "---Select---");
        }

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {
            SqlDataAdapter da = new SqlDataAdapter("select distic_id,distic_name from Distric where state_id='" + DropDownList2.SelectedItem.Value + "' order by distic_name", con);
            DataSet ds = new DataSet();
            DropDownList3.DataTextField = "distic_name";
            DropDownList3.DataValueField = "distic_id";
            da.Fill(ds);
            DropDownList3.DataSource = ds;
            DropDownList3.DataBind();
            DropDownList3.Items.Insert(0, "---Select---");
        }

        protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
        {
            SqlDataAdapter da = new SqlDataAdapter("select city_id,city_name from City where distic_id='" + DropDownList3.SelectedItem.Value + "' order by city_name ", con);
            DataSet ds = new DataSet();
            DropDownList4.DataTextField = "city_name";
            DropDownList4.DataValueField = "city_id";
            da.Fill(ds);
            DropDownList4.DataSource = ds;
            DropDownList4.DataBind();
            DropDownList4.Items.Insert(0, "---Select---");
        }

        public void Get_Data()
        {
            if (DropDownList1.SelectedItem.Text != "---Select---" && DropDownList2.SelectedItem.Text != "---Select---" && DropDownList3.SelectedItem.Text != "---Select---" && DropDownList4.SelectedItem.Text != "---Select---" && DropDownList5.SelectedItem.Text != "---Select---")
            {
                SqlCommand cmd = new SqlCommand("Search_data",con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@bloodGroup",DropDownList5.SelectedItem.Text);
                cmd.Parameters.AddWithValue("@country",DropDownList1.SelectedItem.Text);
                cmd.Parameters.AddWithValue("@states",DropDownList2.SelectedItem.Text);
                cmd.Parameters.AddWithValue("@district", DropDownList3.SelectedItem.Text);
                cmd.Parameters.AddWithValue("@city",DropDownList4.SelectedItem.Text);
                SqlDataAdapter da=new SqlDataAdapter(cmd);
                DataSet ds=new DataSet();
                da.Fill(ds);
                GridView1.DataSource=ds;
                GridView1.DataBind();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Get_Data();
        }

        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            Get_Data();
        }

    }
}