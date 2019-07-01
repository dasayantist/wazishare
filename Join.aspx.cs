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
    public partial class Join : System.Web.UI.Page
    {
        MySqlConnection conn = new
MySqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);


        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (!Page.IsPostBack)
                {
                    if (Session["username"] == null)
                       // Response.Redirect("Login.aspx", true);
                    //BindGridView();  

                    tarehe.Text = DateTime.Now.ToString();

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

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                conn.Open();
                MySqlCommand cmd = new MySqlCommand("Insert into waziclient(national_id,phoneNumber,fName,OName,gender,address,Date_Reg,sloc,loc,ward,constituency,county,pin,acno)values(@national_id,@phoneNumber,@fName,@OName,@gender,@address,@Date_Reg,@sloc,@loc,@ward,@constituency,@county,@pin,@acno)", conn);
                cmd.Parameters.AddWithValue("@national_id", national_id.Text);
                cmd.Parameters.AddWithValue("@phoneNumber", phoneNumber.Text);
                cmd.Parameters.AddWithValue("@fName", fName.Text);
                cmd.Parameters.AddWithValue("@OName", oName.Text);
                cmd.Parameters.AddWithValue("@gender", gendert.Text);
                cmd.Parameters.AddWithValue("@address", address.Text);
                cmd.Parameters.AddWithValue("@Date_Reg", tarehe.Text);
                cmd.Parameters.AddWithValue("@sloc", slocation1.Text);
                cmd.Parameters.AddWithValue("@loc", location1.Text);
                cmd.Parameters.AddWithValue("@ward", ward1.Text);
                cmd.Parameters.AddWithValue("@constituency", constituency1.Text);
                cmd.Parameters.AddWithValue("@county", county1.Text);
                cmd.Parameters.AddWithValue("@pin", pin.Text);
                cmd.Parameters.AddWithValue("@acno", "wazi001");
                cmd.ExecuteNonQuery();
                cmd.Dispose();
                ShowMessage("Registered successfully......!");
                //clear();
                //BindGridView();
            }
            catch (MySqlException ex)
            {
                ShowMessage(ex.Message);
            }
            finally
            {
                conn.Close();
            }
        }
    }
}

#endregion