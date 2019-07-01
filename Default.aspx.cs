using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Configuration;
using System.Data.SqlClient;
using MySql.Data.MySqlClient;

namespace wazishare
{
    public partial class _Default : Page
    {

        MySqlConnection conn = new MySqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            //    if (Session["username"] == null)
            //        Response.Redirect("Login.aspx", true);

            //ddlImages.DataSource = GetData("SELECT FieldId, FileName FROM users");
            //ddlImages.DataTextField = "Name";
            //ddlImages.DataValueField = "Id";
            //ddlImages.DataBind();

        }

        //private DataTable GetData(string query)
        //{
        //    DataTable dt = new DataTable();
        //    string conn = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        //    SqlConnection con = new SqlConnection(conn);
        //    {
        //        SqlCommand cmd = new SqlCommand(query);
        //        SqlDataAdapter sda = new SqlDataAdapter();

        //        cmd.CommandType = CommandType.Text;
        //        cmd.Connection = con;
        //        sda.SelectCommand = cmd;
        //        sda.Fill(dt);

        //        return dt;
        //    }

        //}

        //protected void FetchImage(object sender, EventArgs e)
        //{
        //    string id = ddlImages.SelectedItem.Value;
        //    Image1.Visible = id != "0";
        //    if (id != "0")
        //    {
        //        //byte[] bytes = (byte[])GetData("SELECT Content FROM users WHERE Id =" + id).Rows[0]["Data"];
        //        //string base64String = Convert.ToBase64String(bytes, 0, bytes.Length);
        //        //Image1.ImageUrl = "data:image/png;base64," + base64String;
        //    }
        //}



    }
}