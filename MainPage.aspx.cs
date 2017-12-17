using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using MySql.Data.MySqlClient;

public partial class MainPage : System.Web.UI.Page
{
    MySqlConnection connection;
    MySqlCommand command;

    protected void Page_Load(object sender, EventArgs e)
    {
        Session.Clear();
        
        
    }

    protected void Login_Click(object sender, ImageClickEventArgs e)
    {
        connection = new MySqlConnection("Server=localhost;Uid=root;Pwd=dadalus123;Database=pf;");
        connection.Open();
        command = new MySqlCommand();
        command.Connection = connection;
        command.CommandText = "SELECT AdminID,AdminPass FROM Admin Where AdminID COLLATE latin1_general_cs = @adminid AND AdminPass COLLATE latin1_general_cs = @adminpass";
        
        command.Parameters.AddWithValue("@adminid", adminname.Value);
        command.Parameters.AddWithValue("@adminpass", adminpass.Value);
        MySqlDataAdapter DA = new MySqlDataAdapter(command);
        DataTable DT = new DataTable();
        DA.Fill(DT);
        if (DT.Rows.Count == 1)
        {
            foreach (DataRow dr in DT.Rows)
            {
                Session["AdminID"] = dr["AdminID"].ToString();
                Response.Redirect("Adminpage1.aspx");
            }
        }
        else
        {
            Response.Write("<script language='javascript'>alert('Invalid Username and Password')</script>");
        }
        Session.Timeout = 10;
    }

}

