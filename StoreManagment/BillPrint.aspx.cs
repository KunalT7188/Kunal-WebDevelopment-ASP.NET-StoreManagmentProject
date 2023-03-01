using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data;
using iTextSharp.text;
using iTextSharp.text.pdf;
using iTextSharp.text.html.simpleparser;

namespace StoreManagment
{
    public partial class BillPrint : System.Web.UI.Page
    {
        SqlConnection cn;  //read the data base part
        SqlCommand cm;     // read all query like join query
        SqlDataReader dr;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Display();
                Calculate();
            }
            Txt_date.Text = DateTime.Now.ToString("d/MMMM/yyyy");
            Temail.Text = Session["Emailid1"].ToString();
        }
        protected void Display()
        {

            MyClass1 my = new MyClass1();

            string cs = my.Connection();
            cn = new SqlConnection(cs);
            cn.Open();
            string k = "select * from Cart where UserEmail='" + Session["Emailid1"].ToString()+ "' ";
         
            cm = new SqlCommand(k, cn);
            dr = cm.ExecuteReader();
            ListView1.DataSource = dr;
            ListView1.DataBind();
            dr.Close();
        }
        protected void Calculate()
        {
            MyClass1 my = new MyClass1();

            string cs = my.Connection();
            cn = new SqlConnection(cs);
            cn.Open();
            foreach (ListViewItem r1 in ListView1.Items)
            {
                Label Txtbox1 = (Label)r1.FindControl("LBL_AMT");
                string s = "select sum(cast(Amount as decimal)) as Amount from Cart where UserEmail ='" + Session["Emailid1"].ToString() + "'";
                cm = new SqlCommand(s, cn);
                // GridView1.FooterRow.Cells[5].Text = cm.ExecuteScalar().ToString();
                amt.Text = cm.ExecuteScalar().ToString();


            }

        }

       

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.ContentType = "application/pdf";
            Response.AddHeader("content-disposition", "attachment;filename=KTStore.pdf");
            Response.Cache.SetCacheability(HttpCacheability.NoCache);
            StringWriter sw = new StringWriter();
            HtmlTextWriter hw = new HtmlTextWriter(sw);
            ListView1.RenderControl(hw);
            StringReader sr = new StringReader(sw.ToString());
            Document pdfDoc = new Document(PageSize.A4, 10f, 10f, 100f, 0f);
            HTMLWorker htmlparser = new HTMLWorker(pdfDoc);
            PdfWriter.GetInstance(pdfDoc, Response.OutputStream);
            pdfDoc.Open();
            htmlparser.Parse(sr);
            pdfDoc.Close();
            Chunk chunk = new Chunk("KT Store", FontFactory.GetFont("dax-black"));
            chunk.SetUnderline(0.5f, -1.5f);

            Response.Write(pdfDoc);
            Response.End();
            ListView1.DataBind();

        }

        protected void ListView1_PagePropertiesChanging(object sender, PagePropertiesChangingEventArgs e)
        {
            (ListView1.FindControl("DataPager1") as DataPager).SetPageProperties(e.StartRowIndex, e.MaximumRows, false);
            this.Display();
        }
    }
}