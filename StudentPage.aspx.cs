using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;

public partial class StudentPage : System.Web.UI.Page
{
    MySqlConnection connection;
    MySqlCommand command, command1;
    protected void Redirectstumain(object sender, EventArgs e)
    {
        Response.Redirect("StudentPage.aspx");
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["StudentID"] == null)
        {
            Response.Write("<script language='javascript'>alert('Please login to continue')</script>");
            Response.Write("<script language='javascript'>window.location='MainPage.aspx';</script>");
        }
        else
        {
            GetStuInfo.InnerText = "" + Session["StudentID"] + " " + Session["Name"];
        }
    }







    protected void Button1_Click(object sender, EventArgs e)
    {
        if (newpw.Text == confirmnewpw.Text)
        {
            connection = new MySqlConnection("Server=localhost;Uid=root;Pwd=dadalus123;Database=pf;");
            connection.Open();
            command = new MySqlCommand();
            command.Connection = connection;
            command.CommandText = "SELECT Password FROM Student Where Password = @StuPass";
            command.Parameters.AddWithValue("@StuPass", oldpw.Text);
            command.ExecuteNonQuery();
            MySqlDataAdapter DA = new MySqlDataAdapter(command);
            DataTable DT = new DataTable();
            DA.Fill(DT);
            if (DT.Rows.Count == 1)
            {
                connection.Close();
                connection = new MySqlConnection("Server=localhost;Uid=root;Pwd=dadalus123;Database=pf;");
                connection.Open();
                command = new MySqlCommand();
                command.Connection = connection;
                command.CommandText = "UPDATE Student SET Password = @newpass WHERE StudentID = @thistu";
                command.Parameters.AddWithValue("@thistu", Session["StudentID"]);
                command.Parameters.AddWithValue("@newpass", confirmnewpw.Text);
                command.ExecuteNonQuery();
                Response.Write("<script>alert('Your password has been changed :)')</script>");
            }

            else
            {
                Response.Write("<script>alert('Wrong Old password. Please re-enter')</script>");
            }
            connection.Close();
        }
        else
        {
            Response.Write("<script>alert('New password mismatch with Confirm new password or Empty field. Please re-enter')</script>");
        }


    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        connection = new MySqlConnection("Server=localhost;Database=oop;Uid=root;Pwd=dadalus123");
        command1 = new MySqlCommand();
        command1.Connection = connection;
        connection.Open();

        command1.CommandText = "insert into feedback(feedback) values (?1);";
        command1.Parameters.AddWithValue("?1", feed.Text.Trim());

        {
            command1.ExecuteNonQuery();

            ScriptManager.RegisterStartupScript(this, this.GetType(),
            "alert",
            "alert('Comment has been submitted ');window.location ='StudentPage.aspx';",
            true);
        }

        connection.Close();
        connection.Dispose();
    }
}