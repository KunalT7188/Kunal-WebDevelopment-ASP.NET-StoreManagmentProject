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
    public partial class ProfilePage : System.Web.UI.Page
    {
        SqlConnection cn;  //read the data base part
        SqlCommand cm;     // read all query like join query
        SqlDataReader dr;

        UserBO bo = new UserBO();
        UserBL BL = new UserBL();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ShowProfile();
            }
            profileEmail.Text = Session["Emailid1"].ToString();
        }
        protected void ShowProfile()
        {
            MyClass1 my = new MyClass1();
            string cs = my.Connection();
            cn = new SqlConnection(cs);

            String k = "Select * from Store_Signup where EmailId='" + Session["Emailid1"].ToString() + "'";
            SqlCommand cm = new SqlCommand(k, cn);
            cn.Open();
            dr = cm.ExecuteReader();
            if (dr.Read())
            {
                profileName.Text = dr["Name"].ToString();
                profileMobile.Text = dr["MobileNo"].ToString();
                ProfilePassword.Text = dr["Password"].ToString();
                Img_pic.ImageUrl = "~/upload/" + dr["pic"].ToString();
            }
            dr.Close();
        }
        protected void Btn_edit_Click(object sender, EventArgs e)
        {
            
            FUP1.SaveAs(Server.MapPath("~") + "//upload//" + FUP1.FileName);

            bo.Name = profileName.Text;
            bo.Email = profileEmail.Text;
            bo.Mobile = profileMobile.Text;
            bo.Password = ProfilePassword.Text;
            bo.ConfirmPassword = ProfileConfirmPassword.Text;
            bo.ProfilePic = FUP1.FileName;

            BL.ProfileEdit(bo);
            Response.Write("<script>alert('.......Profile Edit.........')</script>");
        }
    }
}