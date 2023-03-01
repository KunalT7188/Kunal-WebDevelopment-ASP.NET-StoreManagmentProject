using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace StoreManagment
{
    public class MyClass1
    {
        SqlConnection cnn = new SqlConnection(@"Data Source = KUNAL\SQLEXPRESS01; Initial Catalog = College; Integrated Security = True");
        public MyClass1()
        {
            cnn.Open();
        }
        public string Connection()
        {
            string cs = ConfigurationSettings.AppSettings["MyDB"];
            return cs;
        }
        public string AddCart()
        {
            string k = "insert into Cart values ";
            return k;
        }
        public void AdditemProduct(string AGid,string APname,string Arate, string Aqyt,string Apic)
        {
            try
            {

                SqlCommand cmd = new SqlCommand("StoreSignup", cnn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@select", "INSERTPRODUCTADMIN");
                cmd.Parameters.AddWithValue("@Agid1", AGid);
                cmd.Parameters.AddWithValue("@Apname1", APname);
                cmd.Parameters.AddWithValue("@Arate1", Arate);
                cmd.Parameters.AddWithValue("@Aqyt1", Aqyt);
                cmd.Parameters.AddWithValue("@AproIMG1", Apic);
               
               
                cmd.ExecuteNonQuery();
               
            }
            catch
            {
                throw;
            }
          
        }
    }

    }
