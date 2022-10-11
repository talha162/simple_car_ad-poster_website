using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication15
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        projectDataContext db = new projectDataContext();
        public static string carname = "";
        public static string city = "";
        public static int price = 0;
        int c = 0;
        protected void Button1_Click(object sender, EventArgs e)
        {
            var data = from i in db.postads where i.carname == TextBox1.Text && i.city == TextBox2.Text && (i.price <= Convert.ToInt32(TextBox3.Text) || i.price >= Convert.ToInt32(TextBox4.Text)) select i;
            if (data.Any()) {
                foreach (var i in data)
                {
                    if (i.carname == TextBox1.Text && i.city == TextBox2.Text && (i.price <= Convert.ToInt32(TextBox3.Text) || i.price >= Convert.ToInt32(TextBox4.Text)))
                    {
                        carname = i.carname;
                        city = i.city;
                        price = i.price;
                        Response.Redirect("search.aspx");
                    }
                }
            }
            if(!data.Any())
            {
                Response.Write("<script language='javascript'>alert('no found!');</script>");
            }
        }
    }
}