using Bussinesslogic;
using BussinessObject;
using System;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StoreManagment
{
    public partial class OurProduct : System.Web.UI.Page
    {
        SqlConnection cn;  
        SqlCommand cm;     
        SqlDataReader dr;
        UserBO bo = new UserBO();
        UserBL BL = new UserBL();

        protected void Page_Load(object sender, EventArgs e)
        {
            LBLEMAIL.Text = Session["Emailid1"].ToString();
         
            if (!IsPostBack)
            {
                Display();
            }
           
        }
        protected void Display()
        {

            MyClass1 my = new MyClass1();
            string cs = my.Connection();
            cn = new SqlConnection(cs);
            cn.Open();
            String k = "Select * from Pro_DB2";
            cm = new SqlCommand(k, cn);
            dr = cm.ExecuteReader();
            DataList1.DataSource = dr;
            DataList1.DataBind();
            dr.Close();

        }

        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (e.CommandName == "AddCART")
            {
               
                Label Lpn = (Label)e.Item.FindControl("Txt_pname");
                Label Lid = (Label)e.Item.FindControl("Txt_id");
                Label Trate = (Label)e.Item.FindControl("Txt_Prate");
                int a = Convert.ToInt32(Trate.Text);
               
                TextBox Tqyt = (TextBox)e.Item.FindControl("Txt_Qyt");
                int b = Convert.ToInt32(Tqyt.Text);
                
                int total = a * b;
                TextBox amount = (TextBox)e.Item.FindControl("TextBox1");
                amount.Text = total.ToString();
               
                bo.P_ID = Lid.Text;
                bo.P_NAME = Lpn.Text;
                bo.P_RATE = Trate.Text;
                bo.P_QYT = Tqyt.Text;
                bo.P_AMOUNT = amount.Text;
                bo.P_Email = LBLEMAIL.Text;
                int flag =  BL.ADD_CART_PRINT(bo);
                if (flag>0)
                {
                   
                    ScriptManager.RegisterStartupScript(this, GetType(), "alert", "toast.success('ADDED TO CART');", true);
                }
                // Response.Write("<script>alert('.........Product added to Cart..........')</script>");
            }
        }

        protected void Btn_cart_Click(object sender, EventArgs e)
        { 
            Response.Redirect("BillPrint.aspx");
        }

        protected void Btn_search_Click(object sender, EventArgs e)
        {
            bo.Product_name = TxtSearch.Text;
            dr = BL.Search_PRODUCT(bo);
            DataList1.DataSource = dr;
            DataList1.DataBind();
        }
    }
}