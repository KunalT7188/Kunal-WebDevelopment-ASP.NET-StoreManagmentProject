using BussinessObject;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataAccess
{
   public class UserDA
    {
        SqlDataReader dr;
        SqlConnection con = new SqlConnection(@"Data Source = KUNAL\SQLEXPRESS01; Initial Catalog = College; Integrated Security = True");

        public int AddUserDetails(UserBO ObjBO) //SIgnuP Page 
        {
            try
            {
               
                SqlCommand cmd = new SqlCommand("StoreSignup", con);
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.AddWithValue("@name1", ObjBO.Name);
                cmd.Parameters.AddWithValue("@email1", ObjBO.Email);
                cmd.Parameters.AddWithValue("@mobile1", ObjBO.Mobile);
                cmd.Parameters.AddWithValue("@password1", ObjBO.Password);
                cmd.Parameters.AddWithValue("@cpassword1", ObjBO.ConfirmPassword);
                cmd.Parameters.AddWithValue("@profile1", ObjBO.ProfilePic);
                cmd.Parameters.AddWithValue("@select", "INSERT");
                con.Open();
                int Result = cmd.ExecuteNonQuery();
                cmd.Dispose();
                return Result;
            }
            catch
            {
                throw;
            }
        }

        public SqlDataReader LoginDetails(UserBO ObjBO) //Login Page
        {
            try
            {
               
                SqlCommand cmd = new SqlCommand("StoreSignup", con);
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.AddWithValue("@select", "LOGINCHECK");
                cmd.Parameters.AddWithValue("@email1", ObjBO.Email);
                cmd.Parameters.AddWithValue("@password1", ObjBO.Password);
                con.Open();
                dr= cmd.ExecuteReader();
                cmd.Dispose();
                return dr;
               
            }
            catch
            {
                throw;
            }
        }
        public SqlDataReader ForgotPassword(UserBO ObjBO) //forgot password
        {
            try
            {

                SqlCommand cmd = new SqlCommand("StoreSignup", con);
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.AddWithValue("@select", "FORGOTPASSWORD");
                cmd.Parameters.AddWithValue("@password1", ObjBO.Password);
                cmd.Parameters.AddWithValue("@email1", ObjBO.Email);
                con.Open();
                dr = cmd.ExecuteReader();
                cmd.Dispose();
                return dr;

            }
            catch
            {
                throw;
            }
        }
        public SqlDataReader View_ALL_PRODUCT(UserBO ObjBO) //View All Product
        {
            try
            {

                SqlCommand cmd = new SqlCommand("StoreSignup", con);
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.AddWithValue("@select", "ViewProductpage");
                
                

                con.Open();
                dr = cmd.ExecuteReader();
                cmd.Dispose();
                return dr;

            }
            catch
            {
                throw;
            }
        }
        public int Add_TO_CART(UserBO ObjBO) // Insert For BILLprint 
        {
            try
            {
                string k = "insert into Cart(Pid,Name,UserEmail,Qyt,Rate,Amount) values(@pro_id1,@pro_name1,@pro_useremail1,@pro_qyt1,@pro_rate1,@pro_amount1)";
                SqlCommand cmd = new SqlCommand(k, con);
                con.Open();
                //SqlCommand cmd = new SqlCommand("StoreSignup", con);
                //cmd.CommandType = CommandType.StoredProcedure;
                //cmd.Parameters.AddWithValue("@select", "Insert_FOR_PRINTBILL");
                cmd.Parameters.AddWithValue("@pro_id1", ObjBO.P_ID);
                cmd.Parameters.AddWithValue("@pro_name1", ObjBO.P_NAME);
                cmd.Parameters.AddWithValue("@pro_rate1", ObjBO.P_RATE);
                cmd.Parameters.AddWithValue("@pro_qyt1", ObjBO.P_QYT);
                cmd.Parameters.AddWithValue("@pro_amount1", ObjBO.P_AMOUNT);
                cmd.Parameters.AddWithValue("@pro_useremail1", ObjBO.P_Email);
                
                int Result = cmd.ExecuteNonQuery();
                cmd.Dispose();
                return Result;
            }
            catch
            {
                throw;
            }
        }
        public SqlDataReader userProfileEdit(UserBO ObjBO) //UserProfile PAge
        {
            try
            {

                SqlCommand cmd = new SqlCommand("StoreSignup", con);
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.AddWithValue("@name1", ObjBO.Name);
                cmd.Parameters.AddWithValue("@email1", ObjBO.Email);
                cmd.Parameters.AddWithValue("@mobile1", ObjBO.Mobile);
                cmd.Parameters.AddWithValue("@password1", ObjBO.Password);
                cmd.Parameters.AddWithValue("@cpassword1", ObjBO.ConfirmPassword);
                cmd.Parameters.AddWithValue("@profile1", ObjBO.ProfilePic);
                cmd.Parameters.AddWithValue("@select", "EditProfile");

                //con.Open();
                //int Result = cmd.ExecuteNonQuery();
                //cmd.Dispose();
                //return Result;

                con.Open();
                dr = cmd.ExecuteReader();
                cmd.Dispose();
                return dr;
            }
            catch
            {
                throw;
            }
        }
        public int Conatct_WITH_ADMIN(UserBO ObjBO) //SIgnuP Page 
        {
            try
            {

                SqlCommand cmd = new SqlCommand("StoreSignup", con);
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.AddWithValue("@name1", ObjBO.Name);
                cmd.Parameters.AddWithValue("@email1", ObjBO.Email);
                cmd.Parameters.AddWithValue("@subject1", ObjBO.Subject);
                cmd.Parameters.AddWithValue("@msg1", ObjBO.MSG);
                cmd.Parameters.AddWithValue("@select", "AdminContact");
                con.Open();
                int Result = cmd.ExecuteNonQuery();
                cmd.Dispose();
                return Result;
            }
            catch
            {
                throw;
            }
        }
        public SqlDataReader PRODUCT_search(UserBO ObjBO) //SIgnuP Page 
        {
            try
            {

                SqlCommand cmd = new SqlCommand("StoreSignup", con);
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.AddWithValue("@Apname1", ObjBO.Product_name);
                
                cmd.Parameters.AddWithValue("@select", "SEARCH");
                con.Open();
                dr = cmd.ExecuteReader();
                cmd.Dispose();
                return dr;
            }
            catch
            {
                throw;
            }
        }



    }
}
