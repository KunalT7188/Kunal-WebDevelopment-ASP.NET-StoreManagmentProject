using BussinessObject;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Bussinesslogic;
using System.Net.Mail;

namespace StoreManagment
{
    public partial class SignUp : System.Web.UI.Page
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

        protected void Btn_sign_Click(object sender, EventArgs e)
        {
           
            bo.Name = name.Text;
            bo.Email = email.Text;
            bo.Mobile = mobile.Text;
            bo.Password = password.Text;
            bo.ConfirmPassword = cpassword.Text;
            bo.ProfilePic = FileUpload1.FileName;
            FileUpload1.SaveAs(Server.MapPath("~") + "//Upload//" + FileUpload1.FileName);
            dr = BL.Forgot_Password(bo);  //check for Allready  registred or not
            if(dr.Read())
            {
                if(email.Text==dr["EmailId"].ToString())
                {
                    Response.Write("<script>alert('Email ID Allready Registred....')</script>");
                }
            }
            else
            {
                BL.SignUp_Insert(bo);

                MailMessage ms = new MailMessage();

                ms.To.Add(email.Text);
                ms.From = new MailAddress("talwekarka@rknec.edu");
                ms.Subject = " Registration Details ";

                ms.Body = " <img src='https://cdn3.vectorstock.com/i/1000x1000/43/57/kt-monogram-logo-vector-33144357.jpg'/><br><br><br>" + "Dear " + name.Text +
                    ",<br>" + "Your Registration Process Sucessfully Submitted.<br>" +
                    "Your Username:" + email.Text + "<br>" +
                    "Your Password:" + password.Text + "<br>" +
                     "Click on following link for login: https://localhost:44356/LoginPage.aspx" +
                    "<br><br>" + "<b>Contact us for more Details:</b>" + "<br><br>" +
                    "<img src='https://img.icons8.com/ios-filled/2x/contact-card.png' width='20' height='20'/> " + "KT Store" + "<br>" +
                     "<img src='https://img.icons8.com/nolan/2x/email.png' width='20' height='20'/> " + "talwekarka@rknec.edu" + "<br>";



                ms.IsBodyHtml = true;


                SmtpClient smtp1 = new SmtpClient();
                smtp1.Host = "smtp.gmail.com";
                smtp1.Credentials = new System.Net.NetworkCredential("talwekarka@rknec.edu", "Kunal@786");
                smtp1.EnableSsl = true;
                smtp1.Send(ms);
                LBL_MSG.Visible = true;




                LBL_MSG.Text = "Registration Sucessfuly...Please Login for more Offer.....!!";
               
            }
        }

        protected void LBSignup_Click(object sender, EventArgs e)
        {
            Response.Redirect("LoginPage.aspx");
        }
    }
}