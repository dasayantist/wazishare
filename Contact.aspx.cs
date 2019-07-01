using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace wazishare
{
    public partial class Contact : Page
    {
        MySqlConnection conn = new
   MySqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);


        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (!Page.IsPostBack)
                {
                    //BindGridView();  
                    if (Session["username"] == null)
                        Response.Redirect("Login.aspx", true);
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

        protected void search_Click(object sender, EventArgs e)
        {
            try
            {
                conn.Open();
                string input = ((TextBox)FindControl("txt_search")).Text.Trim();
                MySqlCommand cmd = new MySqlCommand();
                string sql = "SELECT * FROM waziclient WHERE phoneNumber = '" + input + "';";
                MySqlDataAdapter da = new MySqlDataAdapter(sql, conn);
                DataTable dt = new DataTable();
                da.Fill(dt);

                if (dt.Rows.Count == 0)
                {
                    ShowMessage(input + " does not exist.");
                }
                else
                {
                    ((TextBox)FindControl("fname")).Text = dt.Rows[0][0] + "";
                    ((TextBox)FindControl("oname")).Text = dt.Rows[0][1] + "";
                    ((TextBox)FindControl("national_id")).Text = dt.Rows[0][1] + "";
                }
            


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