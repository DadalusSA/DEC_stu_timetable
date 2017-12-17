using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;

public partial class AdminContactpage : System.Web.UI.Page
{
    MySqlConnection connection;
    MySqlCommand command;
    private void BindGrid()
    {
        connection = new MySqlConnection("Server=localhost;Uid=root;Pwd=dadalus123;Database=pf;");
        connection.Open();
        command = new MySqlCommand();
        command.Connection = connection;
        command.CommandText = "SELECT * FROM locationptpl";
        MySqlDataAdapter DA = new MySqlDataAdapter(command);
        DataSet DT = new DataSet();
        DA.Fill(DT);
        GridView1.DataSource = DT;
        GridView1.DataBind();
    }
    /*protected void Add_Click(object sender, EventArgs e)
    {
        connection = new MySqlConnection("Server=localhost;Uid=root;Pwd=dadalus123;Database=pf;");
        connection.Open();         //Stored Procedure name 
        command = new MySqlCommand();
        command.Connection = connection;
        command.CommandText = "SELECT CampusName FROM locationptpl where CampusName = '" + TextBox2.Text + " '";
        MySqlDataReader dataread = command.ExecuteReader();
        if( dataread.Read() == true)
        {
            connection.Close();
            Response.Write("<script>alert('Campus exist, Please try again')</script>");

        }
        else
        {
            connection.Close();
            connection.Open();
            command.CommandText = "Insert into locationptpl values(@camname,@Ad1,@tel,@Fax,@Mapip,@ad2,@ad3)";
            command.Parameters.AddWithValue("@camname", TextBox2.Text);
            command.Parameters.AddWithValue("@Ad1", TextBox3.Text);
            command.Parameters.AddWithValue("@tel", TextBox4.Text);
            command.Parameters.AddWithValue("@Fax", TextBox5.Text);
            command.Parameters.AddWithValue("@Mapip", TextBox6.Text);
            command.Parameters.AddWithValue("@ad2", TextBox7.Text);
            command.Parameters.AddWithValue("@ad3", TextBox8.Text);
            command.ExecuteNonQuery();  
            Response.Write("<script>alert('Records Added')</script>)");
            connection.Close();
        }
        
    }
    */

    protected void OnRowEditing(object sender, GridViewEditEventArgs e)
    {
        GridView1.EditIndex = e.NewEditIndex;
        this.BindGrid();
    }

    protected void OnRowUpdating(object sender, GridViewUpdateEventArgs e)
    {
            GridViewRow row = GridView1.Rows[e.RowIndex];
            string campusname = (row.FindControl("lblcampusname") as Label).Text.Trim();
            string AD1 = (row.FindControl("txtAddress1") as TextBox).Text.Trim();
            string AD2 = (row.FindControl("txtAddress2") as TextBox).Text.Trim();
        string AD3 = (row.FindControl("txtAddress3") as TextBox).Text.Trim();
        string tel = (row.FindControl("txttel") as TextBox).Text.Trim();
        string Fax = (row.FindControl("txtfax") as TextBox).Text.Trim();
        string map = (row.FindControl("txtMapAddress") as TextBox).Text.Trim();
        connection = new MySqlConnection("Server=localhost;Uid=root;Pwd=dadalus123;Database=pf;");
            command = new MySqlCommand();
        command.Connection = connection;
        command.CommandText = "UPDATE locationptpl SET AddressLine1 = @ad, AddressLine2 = @ad2, AddressLine3 = @ad3, Tel = @t, Fax = @f, MapAddress = @map WHERE CampusName = @cn";
        command.Parameters.AddWithValue("@cn", campusname);
        command.Parameters.AddWithValue("@ad", AD1);
        command.Parameters.AddWithValue("@ad2", AD2);
        command.Parameters.AddWithValue("@ad3", AD3);
        command.Parameters.AddWithValue("@f", Fax);
        command.Parameters.AddWithValue("@t", tel);
        command.Parameters.AddWithValue("@map", map);
        command.Connection = connection;
        connection.Open();
        command.ExecuteNonQuery();
        connection.Close();
        Response.Write("<script>alert('Campus info Updated.')</script>");
        GridView1.EditIndex = -1;
        this.BindGrid();
    }
    protected void OnRowCancelingEdit(object sender, EventArgs e)
    {
        GridView1.EditIndex = -1;
        this.BindGrid();
    }
    protected void OnRowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        string id = GridView1.DataKeys[e.RowIndex].Value.ToString();
        connection = new MySqlConnection("Server=localhost;Uid=root;Pwd=dadalus123;Database=pf;");
        command = new MySqlCommand();
        command.Connection = connection;
        command.CommandText = "DELETE FROM locationptpl WHERE CampusName = @cn";
        command.Parameters.AddWithValue("@cn",id);
                    command.Connection = connection;
                    connection.Open();
                    command.ExecuteNonQuery();
                    connection.Close();
                
            
        this.BindGrid();
    }

    protected void OnRowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow && e.Row.RowIndex != GridView1.EditIndex)
        {
            (e.Row.Cells[7].Controls[2] as LinkButton).Attributes["onclick"] = "return confirm('Are you sure you want to delete?');";
        }
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        
        if (!this.IsPostBack)
        {
            this.BindGrid();
        }
    }
    

    
}
 
 