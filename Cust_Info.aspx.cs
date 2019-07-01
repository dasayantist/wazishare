using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data;
using System.Configuration;
using MySql.Data.MySqlClient;


namespace wazishare
{
    public partial class Cust_Info : System.Web.UI.Page
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
                    LoadData();
                    LoadContrib();
                    LoadTarget();
                    
                    this.BindGrid();

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

        public void LoadData()
        {
            try
            {
                conn.Open();
                string input = Session["username"].ToString();
                //string input = ((TextBox)FindControl("txt_search")).Text.Trim();
                //string input = txt_search.Text.Trim();
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
                    Id.Text = dt.Rows[0][0] + "";
                    national_id.Text = dt.Rows[0][1] + "";
                    phoneNumber.Text = dt.Rows[0][2] + "";
                    fName.Text = dt.Rows[0][3] + "";
                    OName.Text = dt.Rows[0][4] + "";
                    gender.Text = dt.Rows[0][5] + "";
                    Address.Text = dt.Rows[0][6] + "";
                    Date_Reg.Text = dt.Rows[0][7] + "";
                    sloc.Text = dt.Rows[0][8] + "";
                    loc.Text = dt.Rows[0][9] + "";
                    ward.Text = dt.Rows[0][10] + "";
                    constituency.Text = dt.Rows[0][11] + "";
                    county.Text = dt.Rows[0][12] + "";
                    pin.Text = dt.Rows[0][13] + "";
                    acno.Text = dt.Rows[0][14] + "";
                    

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

        public void LoadContrib(){
            try
            {
                conn.Open();
                string input = Session["username"].ToString();
                //string input = ((TextBox)FindControl("txt_search")).Text.Trim();
                //string input = txt_search.Text.Trim();
                MySqlCommand cmd = new MySqlCommand();
                string sql = "SELECT acno, phoneNumber, gross_amnt, net_amnt, status FROM contrib WHERE phoneNumber = '" + input + "'";
                MySqlDataAdapter da = new MySqlDataAdapter(sql, conn);
                DataTable dt = new DataTable();
                da.Fill(dt);

                if (dt.Rows.Count == 0)
                {
                    ShowMessage(input + " does not exist.");
                }
                else
                {
                    //Id.Text = dt.Rows[0][0] + "";
                    contrib_acno.Text = dt.Rows[0][0] + "";
                    contrib_phoneNumber.Text = dt.Rows[0][1] + "";
                    gross_amnt.Text = dt.Rows[0][2] + "";
                    net_amnt.Text = dt.Rows[0][3] + "";
                    contrib_status.Text = dt.Rows[0][4] + "";
                    Session["acno"] = dt.Rows[0][0] + "";

                    LoadACDetails();

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

        public void LoadTarget()
        {
            try
            {
                conn.Open();
                string input = Session["username"].ToString();
                //string input = ((TextBox)FindControl("txt_search")).Text.Trim();
                //string input = txt_search.Text.Trim();
                MySqlCommand cmd = new MySqlCommand();
                string sql = "SELECT * FROM daily_target WHERE phoneNumber = '" + input + "'";
                MySqlDataAdapter da = new MySqlDataAdapter(sql, conn);
                DataTable dt = new DataTable();
                da.Fill(dt);

                if (dt.Rows.Count == 0)
                {
                    ShowMessage(input + " does not exist.");
                }
                else
                {
                    //Id.Text = dt.Rows[0][0] + "";
                    gross_target.Text = dt.Rows[0][2] + "";
                    no_of_subs.Text = dt.Rows[0][4] + "";
                    net_target.Text = dt.Rows[0][5] + "";
                    
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

        public void LoadACDetails()
        {
            try
            {
               // conn.Open();
                string anno = Session["acno"].ToString();
                //string input = ((TextBox)FindControl("txt_search")).Text.Trim();
                //string input = txt_search.Text.Trim();
                MySqlCommand cmd = new MySqlCommand();
                string sql = "SELECT acno, namnt, status, isMember FROM ac_details WHERE phoneNumber = '" + anno + "'";
                MySqlDataAdapter da = new MySqlDataAdapter(sql, conn);
                DataTable dt = new DataTable();
                da.Fill(dt);

                if (dt.Rows.Count == 0)
                {
                    ShowMessage(anno + " does not exist.");
                }
                else
                {
                    //Id.Text = dt.Rows[0][0] + "";
                    ac_acno.Text = dt.Rows[0][0] + "";
                    namnt.Text = dt.Rows[0][1] + "";
                    //dos.Text = dt.Rows[0][3] + "";
                    status.Text = dt.Rows[0][2] + "";
                    isMember.Text = dt.Rows[0][3] + "";
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

        protected void UploadFile(object sender, EventArgs e)
        {
            string filename = Path.GetFileName(FileUpload1.PostedFile.FileName);
            string contentType = FileUpload1.PostedFile.ContentType;
            using (Stream fs = FileUpload1.PostedFile.InputStream)
            {
                using (BinaryReader br = new BinaryReader(fs))
                {
                    byte[] bytes = br.ReadBytes((Int32)fs.Length);
                    string constr = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
                    using (MySqlConnection con = new MySqlConnection(constr))
                    {
                        //if (Session["username"] != null) ;
                            string input_user = Session["username"].ToString();
                        string query = "INSERT INTO users(FileName, ContentType, Content, Username) VALUES (@FileName, @ContentType, @Content, @username)";
                        using (MySqlCommand cmd = new MySqlCommand(query))
                        {
                            cmd.Connection = con;
                            cmd.Parameters.AddWithValue("@FileName", filename);
                            cmd.Parameters.AddWithValue("@ContentType", contentType);
                            cmd.Parameters.AddWithValue("@Content", bytes);
                            cmd.Parameters.AddWithValue("@username", input_user);
                            con.Open();
                            cmd.ExecuteNonQuery();
                            con.Close();
                        }
                    }
                }
            }
            Response.Redirect("Cust_Info.aspx");
        }

        protected void OnRowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                byte[] bytes = (byte[])(e.Row.DataItem as DataRowView)["Content"];
                string base64String = Convert.ToBase64String(bytes, 0, bytes.Length);
                (e.Row.FindControl("Image1") as Image).ImageUrl = "data:image/jpg;base64," + base64String;
            }
        }

        private void BindGrid()
        {
            string constr = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            using (MySqlConnection con = new MySqlConnection(constr))
            {
                using (MySqlCommand cmd = new MySqlCommand())
                {
                    string input = Session["username"].ToString();
                    cmd.CommandText = "SELECT FileId, FileName, ContentType, Content FROM users";
                    cmd.Connection = con;
                    using (MySqlDataAdapter sda = new MySqlDataAdapter(cmd))
                    {
                        DataTable dt = new DataTable();
                        sda.Fill(dt);
                        gvImages.DataSource = dt;
                        gvImages.DataBind();
                    }
                }
            }
        }

        protected void search_Click(object sender, EventArgs e)
        {
            try
            {
                conn.Open();
                string input = Session["username"].ToString();

                LoadContrib();
                LoadTarget();
                LoadACDetails();
                //string input = ((TextBox)FindControl("txt_search")).Text.Trim();
                //string input = txt_search.Text.Trim();
                MySqlCommand cmd = new MySqlCommand();
                string sql = "SELECT * FROM waziclient WHERE phoneNumber = '" + input + "'";
                MySqlDataAdapter da = new MySqlDataAdapter(sql, conn);
                DataTable dt = new DataTable();
                da.Fill(dt);

                if (dt.Rows.Count == 0)
                {
                    ShowMessage(input + " does not exist.");
                }
                else
                {
                    Id.Text = dt.Rows[0][0] + "";
                    national_id.Text = dt.Rows[0][1] + "";
                    phoneNumber.Text = dt.Rows[0][2] + "";
                    fName.Text = dt.Rows[0][3] + "";
                    OName.Text = dt.Rows[0][4] + "";
                    gender.Text = dt.Rows[0][5] + "";
                    Address.Text = dt.Rows[0][6] + "";
                    Date_Reg.Text = dt.Rows[0][7] + "";
                    sloc.Text = dt.Rows[0][8] + "";
                    loc.Text = dt.Rows[0][9] + "";
                    ward.Text = dt.Rows[0][10] + "";
                    constituency.Text = dt.Rows[0][11] + "";
                    county.Text = dt.Rows[0][12] + "";
                    pin.Text = dt.Rows[0][13] + "";
                    acno.Text = dt.Rows[0][14] + "";
                    
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