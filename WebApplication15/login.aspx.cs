using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication15
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        projectDataContext db = new projectDataContext();
        protected void Button1_Click(object sender, EventArgs e)
        {
            var data = from d in db.signups where d.email == Te
                       xtBox1.Text && d.password == Password1.Value select d;
            foreach(var d2 in data)
            {
                if(d2.email==TextBox1.Text&& d2.password == Password1.Value)
                {
                    Session["name"] = d2.name;
                    Session["id"] = d2.Id;
                    Session["role"] = "user";
                    Response.Write("<script>alert('Successfully login..');window.location = 'WebForm1.aspx';</script>");
                }
            }
        }
    }
}