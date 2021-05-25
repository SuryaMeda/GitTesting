using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;

namespace LoginPage
{
    public class Class1
    {
        public static SqlConnection con = new SqlConnection("Data Source=DESKTOP-BRSC3EK;Initial Catalog=practice;Persist Security Info=True;User ID=sa;Password=7473");
        public static SqlCommand cmd = new SqlCommand();
        public static SqlDataReader dr;
    }
}