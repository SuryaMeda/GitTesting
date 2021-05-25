using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using DAL1;

namespace BLL
{
    public class Bussiness
    {
        DataAccess dal = new DataAccess();
        public int Id { set; get; }
        public string Bno { set; get; }
        public string Name { set; get; }
        public string Group { set; get; }
        public string Dod { set; get; }
        public string Phone { set; get; }
        public string Country { set; get; }
        public string State { set; get; }
        public string Distric { set; get; }
        public string City { set; get; }
        public string Email { set; get; }
        public string Pwd { set; get;}
        public string Cpwd { set; get; }
        public string Gender { set; get; }
        public string Lang { set; get; }
        public string Add { set; get; }
        public string Blood { set; get; }
        public string Photo { set; get; }

        SqlCommand cmd = new SqlCommand();


        public DataSet Bind_record()
        {
            return dal.Bind_data();
        }

        public void  insert_record()
        {
               
                cmd.Parameters.AddWithValue("@name",Name);
                cmd.Parameters.AddWithValue("@dob",Dod);             
                cmd.Parameters.AddWithValue("@phone", Phone);
                cmd.Parameters.AddWithValue("@country", Country);
                cmd.Parameters.AddWithValue("@state", State);
                cmd.Parameters.AddWithValue("@district", Distric);
                cmd.Parameters.AddWithValue("@city", City);
                cmd.Parameters.AddWithValue("@email", Email);
                cmd.Parameters.AddWithValue("@pwd", Pwd);
                cmd.Parameters.AddWithValue("@Cpwd",Cpwd);
                cmd.Parameters.AddWithValue("@gender",Gender);
                cmd.Parameters.AddWithValue("@lang",Lang);
                cmd.Parameters.AddWithValue("@addres",Add);
                cmd.Parameters.AddWithValue("@blood", Blood);
                cmd.Parameters.AddWithValue("@photo", Photo);
                cmd.Parameters.AddWithValue("@bloodgroup", Group);
                //cmd.Parameters.AddWithValue("@bno",Bno);
                dal.insert_data(cmd);
        }
        public void delete_record(string bno)
        {
            cmd.Parameters.AddWithValue("@bno", Bno);
            dal.delete_data(cmd);
        }
        public void update_record()
        {
            cmd.Parameters.AddWithValue("@name", Name);
            cmd.Parameters.AddWithValue("@dob", Dod);
            cmd.Parameters.AddWithValue("@phone", Phone);
            cmd.Parameters.AddWithValue("@country", Country);
            cmd.Parameters.AddWithValue("@state", State);
            cmd.Parameters.AddWithValue("@district", Distric);
            cmd.Parameters.AddWithValue("@city", City);
            cmd.Parameters.AddWithValue("@email", Email);
            cmd.Parameters.AddWithValue("@pwd", Pwd);
            cmd.Parameters.AddWithValue("@Cpwd", Cpwd);
            cmd.Parameters.AddWithValue("@gender", Gender);
            cmd.Parameters.AddWithValue("@lang", Lang);
            cmd.Parameters.AddWithValue("@addres", Add);
            cmd.Parameters.AddWithValue("@blood", Blood);
            cmd.Parameters.AddWithValue("@photo", Photo);
            cmd.Parameters.AddWithValue("@bloodgroup", Group);
            cmd.Parameters.AddWithValue("@bno", Bno);
             dal.update_data(cmd);
        }
    }
}
