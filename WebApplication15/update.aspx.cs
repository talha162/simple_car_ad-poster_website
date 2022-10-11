using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication15
{
    public partial class update : System.Web.UI.Page
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
                var data1 = from c in db.postads where c.seller==Convert.ToInt32(Session["id"]) &&c.carname==TextBox9.Text && c.city==TextBox7.Text && c.price ==Convert.ToInt32(TextBox8.Text) && c.carmodel==TextBox10.Text select c;
                var path = Server.MapPath("~/image/") + FileUpload1.FileName;
             foreach(var data in data1)
                {
                    if (data.seller == Convert.ToInt32(Session["id"]) && data.carname == TextBox9.Text && data.city == TextBox7.Text && data.price == Convert.ToInt32(TextBox8.Text) && data.carmodel == TextBox10.Text)
                    {
                        data.carname = TextBox1.Text;
                        data.carmodel = TextBox2.Text;
                        data.color = TextBox3.Text;
                        data.mileage = TextBox4.Text;
                        data.photo = path;
                        data.city = TextBox6.Text;
                        data.registration = DropDownList1.SelectedItem.ToString();
                        data.price = Convert.ToInt32(TextBox5.Text);
                        data.seller = Convert.ToInt32(Session["id"]);
                        FileUpload1.PostedFile.SaveAs(path);
                        Response.Write("<script>alert('Ad updated successfully')</script>");
                    }
                }
                if (!data1.Any())
                {

                    string msg = "<script>alert('you can not update or you write wrong data')";
                    Response.Write(msg);
                }
                    
                db.SubmitChanges();
                Response.Redirect("WebForm1.aspx");
            }
            else
            {
                l.Text = "alert('please upload file')";
            }
        }
    }
}