using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication15
{
    public partial class postad : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        projectDataContext db = new projectDataContext();
        protected void Button1_Click(object sender, EventArgs e)
        {
            
                Literal l = new Literal();
                if (FileUpload1.HasFile)
                {
                    var path = Server.MapPath("~/image/") + FileUpload1.FileName;
                    var data = new postad()
                    {
                        carname = TextBox1.Text,
                        carmodel = TextBox2.Text,
                        color = TextBox3.Text,
                        mileage = TextBox4.Text,
                        photo = path,
                        city = TextBox6.Text,
                        registration = DropDownList1.SelectedItem.ToString(),
                        price = Convert.ToInt32(TextBox5.Text),
                        seller = Convert.ToInt32(Session["id"])
                    };
                    db.postads.InsertOnSubmit(data);
                    FileUpload1.PostedFile.SaveAs(path);
                    db.SubmitChanges();
                Response.Write("<script>alert('ad posted successfully')</script>");
            }
                else
                {
                    l.Text = "alert('please upload file')";
                }
            }
        
    }
}