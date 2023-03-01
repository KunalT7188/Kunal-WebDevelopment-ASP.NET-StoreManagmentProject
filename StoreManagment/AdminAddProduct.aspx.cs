using Bussinesslogic;
using BussinessObject;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StoreManagment
{
    public partial class AdminAddProduct : System.Web.UI.Page
    {
        SqlConnection cn;  //read the data base part
        SqlCommand cm;     // read all query like join query
        SqlDataReader dr;

        UserBO bo = new UserBO();
        UserBL BL = new UserBL();
        protected void Page_Load(object sender, EventArgs e)
        {
            Label_email.Text = Session["Emailid1"].ToString();
            

            if (!IsPostBack)
            {

            }

        }

        protected void Btn_genrateid_Click(object sender, EventArgs e)
        {
            MyClass1 my = new MyClass1();
            string cs = my.Connection();
            cn = new SqlConnection(cs);
            cn.Open();
            String k = "Select max(id)+1 from Pro_DB2";
            cm = new SqlCommand(k, cn);
            if (Label_email.Text == Session["Emailid1"].ToString())
            {
                txtpid.Text = "Pro-" + DateTime.Now.ToString("yyyy") + "-00" + cm.ExecuteScalar().ToString();
            }
            cn.Close();
        }

        protected void Btn_addproduct_Click(object sender, EventArgs e)
        {
            MyClass1 my = new MyClass1();
            my.AdditemProduct(txtpid.Text, txtproductName.Text, txtproductrate.Text, TxtproductQyt.Text, ProductFileUpload.FileName);
            ProductFileUpload.SaveAs(Server.MapPath("~") + "//Upload//" + ProductFileUpload.FileName);


        }

        protected void btn_viewProduct_Click(object sender, EventArgs e)
        {


            MyClass1 my = new MyClass1();

            string cs = my.Connection();
            cn = new SqlConnection(cs);
            cn.Open();
            string k = "select * from Pro_DB2";
            cm = new SqlCommand(k, cn);
            DataSet ds = new DataSet();
            SqlDataAdapter sd = new SqlDataAdapter(k, cn);
            sd.Fill(ds);
            ListView1.DataSource = ds;
            ListView1.DataBind();
           // ListView1.AllowPaging = true;

        }

        protected void ListView1_PagePropertiesChanging(object sender, PagePropertiesChangingEventArgs e)
        {
            (ListView1.FindControl("DataPager1") as DataPager).SetPageProperties(e.StartRowIndex, e.MaximumRows, false);
            this.Display();
        }
        protected void Display()
        {
            MyClass1 my = new MyClass1();

            string cs = my.Connection();
            cn = new SqlConnection(cs);
            cn.Open();
            string k = "select * from Pro_DB2";
            cm = new SqlCommand(k, cn);
            DataSet ds = new DataSet();
            SqlDataAdapter sd = new SqlDataAdapter(k, cn);
            sd.Fill(ds);
            ListView1.DataSource = ds;
            ListView1.DataBind();
        }

        protected void ListView1_ItemCommand(object sender, ListViewCommandEventArgs e)
        {
            MyClass1 my = new MyClass1();

            string cs = my.Connection();
            cn = new SqlConnection(cs);
            cn.Open();
            if (e.CommandName == "UpdateRate")
            {
                Label lblidd = (Label)e.Item.FindControl("Lblid");
                TextBox Txt_QYT = (TextBox)e.Item.FindControl("TxtQyt");
                TextBox Txt_Rate = (TextBox)e.Item.FindControl("TxtRATE");
                string update = "Update Pro_DB2  set Quantity='" + Txt_QYT.Text + "',Prate='" + Txt_Rate.Text + "' where Pid='" + lblidd.Text + "' ";

                cm = new SqlCommand(update, cn);
                cm.ExecuteNonQuery();
                Display();
            }
            if(e.CommandName== "Remove")
            {
                Label lblidd = (Label)e.Item.FindControl("Lblid");
                string remove="Delete from Pro_DB2 where Pid='"+lblidd.Text+"'";
                cm = new SqlCommand(remove, cn);
                cm.ExecuteNonQuery();
                Display();
            }
        }

        protected void Btn_search_Click(object sender, EventArgs e)
        {
            bo.Product_name = TxtSearch.Text;
            dr=BL.Search_PRODUCT(bo);
            ListView1.DataSource = dr;
            ListView1.DataBind();

        }
    }
}