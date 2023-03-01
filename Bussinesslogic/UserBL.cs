using BussinessObject;
using DataAccess;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Bussinesslogic
{
   public class UserBL
    {
        public int SignUp_Insert(UserBO objUserBL) // SignUp page 
        {
            try
            {
                UserDA objUserda = new UserDA(); // 
                return objUserda.AddUserDetails(objUserBL);
            }
            catch
            {
                throw;
            }
        }
        public SqlDataReader Login_Check(UserBO objUserBL) // LOginPage  
        {
            try
            {
                UserDA objUserda = new UserDA();
                return objUserda.LoginDetails(objUserBL);
            }
            catch
            {
                throw;
            }
        }
        public SqlDataReader Forgot_Password(UserBO objUserBL) // ForgotPage   for if you forgotPassword
        {
            try
            {
                UserDA objUserda = new UserDA();
                return objUserda.ForgotPassword(objUserBL);
            }
            catch
            {
                throw;
            }
        }
        public SqlDataReader View_ALLProductList(UserBO objUserBL) // OurProduct Show 
        {
            try
            {
                UserDA objUserda = new UserDA();
                return objUserda.View_ALL_PRODUCT(objUserBL);
            }
            catch
            {
                throw;
            }
        }
        public int ADD_CART_PRINT(UserBO objUserBL) // add to cart our project
        {
            try
            {
                UserDA objUserda = new UserDA(); // 
                return objUserda.Add_TO_CART(objUserBL);
            }
            catch
            {
                throw;
            }
        }
        public SqlDataReader ProfileEdit(UserBO objUserBL) // add to cart our project
        {
            try
            {
                UserDA objUserda = new UserDA();  
                return objUserda.userProfileEdit(objUserBL);
            }
            catch
            {
                throw;
            }
        }
        public int ContactUSDeatil(UserBO objUserBL) // SignUp page 
        {
            try
            {
                UserDA objUserda = new UserDA(); // 
                return objUserda.Conatct_WITH_ADMIN(objUserBL);
            }
            catch
            {
                throw;
            }
        }
        public SqlDataReader Search_PRODUCT(UserBO objUserBL) // add to cart our project
        {
            try
            {
                UserDA objUserda = new UserDA();
                return objUserda.PRODUCT_search(objUserBL);
            }
            catch
            {
                throw;
            }
        }
    }
}
