using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication15
{
    public partial class viewad : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            images();
        }
        projectDataContext db = new projectDataContext();
       protected void images()
        {
            var data = from i in db.postads  select i;
            Literal l1 = new Literal();
            foreach (var d in data)
            {
                if (d.carname == "")
                {
                    Response.Write("<script language='javascript'>alert('no record exist!');</script>");
                }
                else
                {
                    Literal ltrDyn = new Literal();
                    string table = "<br><table class='table table-bordered'>";
                    table += "<tr><th>Car name</th><th>Model</th><th>mileage</th><th>color</th><th>registeration</th><th>phone number</th><th>city</th><th>price</th></tr>";
                    table += "<tr>";
                    table += "<td>";
                    table += d.carname;
                    table += "</td>";
                    table += "<td>";
                    table += d.carmodel;
                    table += "</td>";
                    table += "<td>";
                    table += d.mileage;
                    table += "</td>";
                    table += "<td>";
                    table += d.color;
                    table += "</td>";
                    table += "<td>";
                    table += d.registration;
                    table += "</td>";
                    var data2 = from i in db.signups where i.Id == d.seller select i;
                    foreach (var d4 in data2)
                    {
                        if (d4.Id == d.seller)
                        {
                            string t1 = "";
                            t1 += "<td>";
                            t1 += d4.pnumber;
                            t1 += "</td>";
                            ViewState["table"] = t1;
                        }
                    }
                    table += ViewState["table"];
                    table += "<td>";
                    table += d.city;
                    table += "</td>";
                    table += "<td>";
                    table += d.price;
                    table += "</td>";
                    table += "</tr>";
                    table += "</table>";
                    ltrDyn.Text = table;
                    FileInfo f = new FileInfo(d.photo);
                    Image image1 = new Image();
                    image1.ImageUrl = "~/image/" + f.Name;
                    image1.CssClass = "col-5";
                    image1.Height = Unit.Pixel(350);
                    image1.Style.Add("object-fit", "fill");
                    image1.Style.Add("object-position", "center");
                    Panel1.Controls.Add(ltrDyn);
                    Panel1.Controls.Add(image1);
                }
            }
        }
    }
}