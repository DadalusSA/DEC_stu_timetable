using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;

public partial class Adminlogin : System.Web.UI.Page
{
    MySqlConnection connection;
    MySqlCommand command;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Request.Cookies["stuid"] != null && Request.Cookies["stupass"] != null)
            {
                stulogin.Text = Request.Cookies["stuid"].Value;
                stupass.Attributes["Value"] = Request.Cookies["stupass"].Value;
                unprmbme.Checked = true;
            }
        }
    }
    

    protected void stusubmitbtn_Click1(object sender, ImageClickEventArgs e)
    {
        if (unprmbme.Checked)
        {
            Response.Cookies["Stuid"].Expires = DateTime.Now.AddDays(30);
            Response.Cookies["stupass"].Expires = DateTime.Now.AddDays(30);
        }
        else
        {
            Response.Cookies["Stuid"].Expires = DateTime.Now.AddDays(-1);
            Response.Cookies["stupass"].Expires = DateTime.Now.AddDays(-1);

        }
        Response.Cookies["Stuid"].Value = stulogin.Text.Trim();
        Response.Cookies["stupass"].Value = stupass.Text.Trim();
        connection = new MySqlConnection("Server=localhost;Uid=root;Pwd=dadalus123;Database=pf;");
        connection.Open();
        command = new MySqlCommand();
        command.Connection = connection;
        command.CommandText = "SELECT * FROM Student Where StudentID COLLATE latin1_general_cs = @StudentID AND Password COLLATE latin1_general_cs = @StuPass";
        command.Parameters.AddWithValue("@StudentID", stulogin.Text);
        command.Parameters.AddWithValue("@StuPass", stupass.Text);
        MySqlDataAdapter DA = new MySqlDataAdapter(command);
        DataTable DT = new DataTable();
        DA.Fill(DT);
        if (DT.Rows.Count == 1)
        {
            foreach (DataRow dr in DT.Rows)
            {
                Session["StudentID"] = dr["StudentID"].ToString();
                Session["Name"] = dr["Name"].ToString();
                Response.Write("<script>parent.window.location.href ='StudentPage.aspx'</script> ");
            }
        }
        else
        {
            Response.Write("<script>alert('Invalid Username and Password')</script>");
        }
        Session.Timeout = 10;
        connection.Close();
    }
}