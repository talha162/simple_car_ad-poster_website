using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication15
{
    public partial class deletead : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        projectDataContext db = new projectDataContext();
        protected void Button1_Click(object sender, EventArgs e)
        {
                    var data1 = from c in db.postads where c.seller == Convert.ToInt32(Session["id"]) && c.carname == TextBox9.Text && c.city == TextBox7.Text && c.price == Convert.ToInt32(TextBox8.Text) && c.carmodel == TextBox10.Text select c;

            if (data1.Any())
            {
                db.postads.DeleteAllOnSubmit(data1);
                db.SubmitChanges();
                Response.Write("<script>alert('deleted..');window.location = 'WebForm1.aspx';</script>");
               
            }
            if(!data1.Any())
            {
                string msg = "<script>alert('you can not delete ');window.location = 'WebForm1.aspx';";
                Response.Write(msg);
            }
            Response.Redirect("WebForm1.aspx");
        }
    }
}