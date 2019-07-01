using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace wazishare
{
    public partial class SiteMaster : MasterPage
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
           

            if (Session["username"] != null)
            {
                //((LoginView)Login22.FindControl("AnonymousTemplate")).EnableViewState = false;
                //AnonymousTemplate.Visible = false;
                //lgin.Visible = false;


                logoutLink.Visible = true;
                registerLink.Visible = false;
                loginHide.Visible = false;
                imgpic.Visible = true;
                //lblusername.Text = "This is my first Label";
                //lblusername.Image = Image.FromFile("C:\\testimage.jpg");
                //lblusername.InnerText = "Hello," + Session["email"].ToString();

                //((LoginView)Login22.FindControl("AnonymousTemplate")).Visible = false;
                //((TextBox)Login22.FindControl("uname")).Text = "Hello," + Session["email"].ToString();
                //((Label)Master.FindControl("lblusername")).Text = "Hello," + Session["email"].ToString();
            }
            else
            {
                logoutLink.Visible = false;
               registerLink.Visible = true;
                loginHide.Visible = true;
                imgpic.Visible = false;
            }
            
        }
    }
}