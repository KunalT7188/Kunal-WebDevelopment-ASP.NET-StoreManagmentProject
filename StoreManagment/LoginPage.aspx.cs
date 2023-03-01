using Bussinesslogic;
using BussinessObject;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StoreManagment
{
    public partial class LoginPage : System.Web.UI.Page
    {
        UserBO bo = new UserBO();
        UserBL BL = new UserBL();
        SqlDataReader dr;
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {

            }
        }

        protected void LBForgot_Click(object sender, EventArgs e)
        {
            Response.Redirect("ForgotPassword.aspx");
        }

        

        protected void Btn_login_Click(object sender, EventArgs e)
        {
            bo.Email = user_email.Text;
            dr = BL.Login_Check(bo);
            if(user_email.Text=="Admin@gmail.com" && user_password.Text=="Admin@123")
            {
                Session["Emailid1"] = user_email.Text;
                Response.Redirect("AdminAddProduct.aspx");
            }
           
            else if (dr.Read())
            {
                if (user_email.Text == dr["EmailId"].ToString() && user_password.Text == dr["Password"].ToString())
                {
                    Session["Emailid1"] = user_email.Text;
                    
                 Response.Redirect("HomePage.aspx");
                   

                }
                else
                {
                    LblMsgLogin.Text = "Invalid Emaili and Password...Please register your Email Id !!!";
                }
            }
            else
            {
                LblMsgLogin.Text = "Invalid Emaili and Password...Please register your Email Id !!!";
            }
            dr.Close();
            
        }

        protected void LBSignup_Click(object sender, EventArgs e)
        {
            Response.Redirect("SignUp.aspx");
        }
    }
}