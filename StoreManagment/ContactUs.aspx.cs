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
    public partial class ContactUs : System.Web.UI.Page
    {
        SqlConnection cn;  //read the data base part
        SqlCommand cm;     // read all query like join query
        SqlDataReader dr;

        UserBO bo = new UserBO();
        UserBL BL = new UserBL();
        protected void Page_Load(object sender, EventArgs e)
        {
            Txt_emailaddress.Text = Session["Emailid1"].ToString();
            if (!IsPostBack)
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
                   Txt_fullname .Text = dr["Name"].ToString();
                  // Txt_emailaddress.Text = dr["MobileNo"].ToString();
                    
                }
                dr.Close();
            }
        }

        protected void Btn_submit_Click(object sender, EventArgs e)
        {
            bo.Email = Txt_emailaddress.Text;
            bo.Name = Txt_fullname.Text;
            bo.Subject= Txt_subject.Text;
            bo.MSG = Txt_msg.Text;
           

            BL.ContactUSDeatil(bo);
           
            //cm.ExecuteNonReader();
        }
    }
}