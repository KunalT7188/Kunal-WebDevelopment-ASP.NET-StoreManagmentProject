using Bussinesslogic;
using BussinessObject;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StoreManagment
{
    public partial class ForgotPassword : System.Web.UI.Page
    {
           
        SqlDataReader dr;
        UserBO bo = new UserBO();
        UserBL BL = new UserBL();
       
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

            }
        }

      

        protected void Btn_forgot_Click(object sender, EventArgs e)
        {
            bo.Email = Txt_RegEmailid.Text;
            dr = BL.Forgot_Password(bo);
            if(dr.Read())
            {
                if (Txt_RegEmailid.Text == dr["EmailId"].ToString())
                {

                    Lbl_yourPassword.Text = dr["Password"].ToString();

                    MailMessage ms = new MailMessage();

                    ms.To.Add(Txt_RegEmailid.Text);
                    ms.From = new MailAddress("talwekarka@rknec.edu");
                    ms.Subject = " Customer Deatils ";

                    ms.Body = " <img src='https://cdn3.vectorstock.com/i/1000x1000/43/57/kt-monogram-logo-vector-33144357.jpg'/><br><br><br>" + "Dear " + Txt_RegEmailid.Text +
                        ",<br>" + "Your Password Deatils <br>" +
                        "Your Password Is: " + Lbl_yourPassword.Text + "<br>" + "Click on following link for login: https://localhost:44356/LoginPage.aspx" +
                        "<br><br>" + "<b>Contact us for more Details:</b>" + "<br><br>" +
                        "<img src='https://img.icons8.com/ios-filled/2x/contact-card.png' width='20' height='20'/> " + "KT STORE" + "<br>" +
                         "<img src='https://img.icons8.com/nolan/2x/email.png' width='20' height='20'/> " + "talwekarka@rknec.edu";



                    // ms.Attachments.Add(new Attachment(FileUpload1.FileContent, System.IO.Path.GetFileName(FileUpload1.FileName)));
                    ms.IsBodyHtml = true;


                    SmtpClient smtp1 = new SmtpClient();
                    smtp1.Host = "smtp.gmail.com";
                    smtp1.Credentials = new System.Net.NetworkCredential("talwekarka@rknec.edu", "Kunal@786");
                    smtp1.EnableSsl = true;
                    smtp1.Send(ms);
                    Lb_ForgotMsg.Visible = true;
                    Lb_ForgotMsg.Text = " Mail Send to your Emailid Please Check...!!";

                }



            }
            dr.Close();
        }
            

        }
    }
