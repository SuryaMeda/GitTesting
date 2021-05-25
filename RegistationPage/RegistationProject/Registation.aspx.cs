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
    public partial class WebForm1 : System.Web.UI.Page
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

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("Login.aspx");
        }

        string gen = "";
        string lan = "";
        string blood = "";
       
        protected void Button1_Click(object sender, EventArgs e)
        {
            //try
            //{
                bal.Name = TextBox1.Text;
                bal.Dod = TextBox2.Text;
                bal.Group = DropDownList1.Text;
                bal.Phone =TextBox3.Text;
                bal.Country = DropDownList2.SelectedItem.Text;
                bal.State = DropDownList3.SelectedItem.Text;
                bal.Distric = DropDownList4.SelectedItem.Text;
                bal.City = DropDownList5.SelectedItem.Text;
                bal.Email = TextBox4.Text;
                bal.Pwd = TextBox5.Text;
                bal.Cpwd = TextBox6.Text;
                //Gender Radiobutton
                if (RadioButton1.Checked == true)
                {
                    gen = RadioButton1.Text;
                }
                else
                {
                    gen = RadioButton2.Text;
                }
                bal.Gender = gen;
                //language Checkbox
                if (CheckBox1.Checked == true)
                {
                    lan = CheckBox1.Text + ",";
                }
                if (CheckBox2.Checked == true)
                {
                    lan = lan + CheckBox2.Text + ",";
                }
                if (CheckBox3.Checked == true)
                {
                    lan = lan + CheckBox3.Text;
                }
                bal.Lang = lan;
                bal.Add = TextBox7.Text;
                //Blood radiobutton
                if (RadioButton3.Checked == true)
                {
                    blood = RadioButton3.Text;
                }
                else
                {
                    blood = RadioButton4.Text;
                }
                bal.Blood = blood;
                //Image 
                string filename = string.Empty;

            if(FileUpload1.HasFile)
            {
                string imag = FileUpload1.FileName;
                FileUpload1.PostedFile.SaveAs(Server.MapPath("~/UserImages/" + imag));
                string imag1 = "~/UserImages/" + imag.ToString();
                bal.Photo = imag1;
            }
            else
            {
                filename = "Default.png";
                bal.Photo = filename;
            }
                bal.insert_record();
            //}
            //catch(Exception ex)
            //{
            //    Response.Write("Details enter Correctly...."+ex.Message);
            //}

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            TextBox1.Text = "";
            TextBox2.Text = "";
            DropDownList1.SelectedIndex = 0;
            TextBox3.Text = "";
            DropDownList2.SelectedIndex = 0;
            DropDownList3.SelectedIndex = 0;
            DropDownList4.SelectedIndex = 0;
            DropDownList5.SelectedIndex = 0;
            TextBox4.Text = "";
            TextBox5.Text = "";
            TextBox6.Text = "";
            TextBox7.Text = "";
            FileUpload1.Attributes.Clear();            
        }

        public void countryDropdownlist()
        {
            SqlDataAdapter da = new SqlDataAdapter("select * from Country order by country_name ", con);
            DataSet ds = new DataSet();
            DropDownList2.DataTextField = "country_name";
            DropDownList2.DataValueField = "country_id";
            da.Fill(ds);
            DropDownList2.DataSource = ds;
            DropDownList2.DataBind();
            DropDownList2.Items.Insert(0, "---Select---");
        }
        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {
            SqlDataAdapter da = new SqlDataAdapter("select state_id,state_Name from State where country_id='" + DropDownList2.SelectedItem.Value + "'order by state_Name ", con);
            DataSet ds = new DataSet();
            DropDownList3.DataTextField = "state_Name";
            DropDownList3.DataValueField = "state_id";
            da.Fill(ds);
            DropDownList3.DataSource = ds;
            DropDownList3.DataBind();
            DropDownList3.Items.Insert(0, "---Select---");
        }

        protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
        {
            SqlDataAdapter da = new SqlDataAdapter("select distic_id,distic_name from Distric where state_id='" + DropDownList3.SelectedItem.Value + "' order by distic_name", con);
            DataSet ds = new DataSet();
            DropDownList4.DataTextField = "distic_name";
            DropDownList4.DataValueField = "distic_id";
            da.Fill(ds);
            DropDownList4.DataSource = ds;
            DropDownList4.DataBind();
            DropDownList4.Items.Insert(0, "---Select---");
        }

        protected void DropDownList4_SelectedIndexChanged(object sender, EventArgs e)
        {
            SqlDataAdapter da = new SqlDataAdapter("select city_id,city_name from City where distic_id='" + DropDownList4.SelectedItem.Value + "' order by city_name ", con);
            DataSet ds = new DataSet();
            DropDownList5.DataTextField = "city_name";
            DropDownList5.DataValueField = "city_id";
            da.Fill(ds);
            DropDownList5.DataSource = ds;
            DropDownList5.DataBind();
            DropDownList5.Items.Insert(0, "---Select---");
        }
    }
}