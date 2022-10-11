using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication15
{
    public partial class signup : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        projectDataContext db = new projectDataContext();
        protected void Button1_Click(object sender, EventArgs e)
        {
            var data = new signup()
            {
                name=TextBox1.Text  ,
                email=TextBox2.Text  ,
                pnumber= TextBox3.Text  ,
                password=Password1.Value  ,
                cpassword=Password2.Value  
            };
            db.signups.InsertOnSubmit(data);
            db.SubmitChanges();
        }
    }
}