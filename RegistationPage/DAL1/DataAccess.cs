using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace DAL1
{
    public class DataAccess
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ToString());
        public DataSet Bind_data()
        {
            SqlDataAdapter da = new SqlDataAdapter("select_reg", con);
            DataSet ds = new DataSet();
            da.Fill(ds);

            return ds;
        }
        public void  insert_data(SqlCommand cmd)
        {
            con.Open();
            cmd.Connection = con;
            cmd.CommandText = "insert_reg";
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.ExecuteNonQuery();
            //con.Close();

        }
        public void delete_data(SqlCommand cmd)
        {
            con.Open();
            cmd.Connection = con;
            cmd.CommandText = "delete_reg";
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.ExecuteNonQuery();
            con.Close();
        }
        public void update_data(SqlCommand cmd)
        {
            con.Open();
            cmd.Connection = con;
            cmd.CommandText = "update_reg";
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.ExecuteNonQuery();
            con.Close();
            
           
        }
        //public void search_data(SqlCommand cmd)
        //{
        //    con.Open();
        //    cmd.Connection = con;
        //    cmd.CommandText = "";
        //    cmd.CommandType = CommandType.StoredProcedure;
        //    cmd.ExecuteReader();
        //    con.Close();
        //}
    }
}
