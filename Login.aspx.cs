using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace wazishare
{
    public partial class Login : System.Web.UI.Page
    {
        MySqlConnection conn = new MySqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        
        
      
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (!Page.IsPostBack)
                {
                    //BindGridView();  

                }
            }
            catch (Exception ex)
            {
                ShowMessage(ex.Message);
            }

        }

        //#endregion  
        #region show message  
        /// <summary>  
        /// This function is used for show message.  
        /// </summary>  
        /// <param name="msg"></param>  
        void ShowMessage(string msg)
        {
            ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('" + msg + "');</script>");
        }
        /// <summary>  
        /// This Function is used TextBox Empty.  
        /// </summary>  
        // }



        private bool validate_login(string user, string pass)
        {
            conn.Open();
            MySqlCommand cmd = new MySqlCommand();
            cmd.CommandText = "Select * from waziclient where phoneNumber=@user and pin=@pass";
            cmd.Parameters.AddWithValue("@user", user);
            cmd.Parameters.AddWithValue("@pass", pass);
            cmd.Connection = conn;
            MySqlDataReader login = cmd.ExecuteReader();
            if (login.Read())
            {
                conn.Close();
                return true;
            }
            else
            {
                conn.Close();
                return false;
            }
        }

        public void Button1_Click(object sender, EventArgs e)
        {
            //string pass = password.Text;
            //string user = username.Text;
            // string user = this.username.Text;
            string pass = ((TextBox)Login1.FindControl("Password")).Text;
            string user = ((TextBox)Login1.FindControl("UserName")).Text;

            if (user == "" || pass == "")
            {
                ShowMessage("Empty Fields Detected ! Please fill up all the fields");
                return;
            }
            bool r = validate_login(user, pass);
            if (r)
            {
                Session["username"] = ((TextBox)Login1.FindControl("UserName")).Text;
                //ShowMessage("Correct Login Credentials" + Session["email"]);
                Response.Redirect("Cust_Info.aspx");
            }
            else {
                ShowMessage("Incorrect Login Credentials");
            }
                
        }


    }
}
#endregion