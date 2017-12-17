<%@ WebHandler Language="C#" Class="Handler" %>

using System;
using System.Web;
using MySql.Data.MySqlClient;
using System.Collections;

public class Handler : IHttpHandler
{

    const string DBconn = "Server=localhost;Pwd=dadalus123;Uid=root;Database=pf";
    public ArrayList AL = new ArrayList();
    public void ProcessRequest(HttpContext context)
    {

        MySqlConnection connection = new MySqlConnection();
        MySqlCommand command = new MySqlCommand();
        string pass1subject = context.Request.QueryString["stusub"];
        string pass2stuid = context.Request.QueryString["stustuid"];
        string pass3stuname = context.Request.QueryString["stustuname"];

        try {

            connection.ConnectionString = DBconn;
            connection.Open();
            command.Connection = connection;
            command.CommandText = "INSERT INTO student_selected_subjects(SubjectID,StudentID,StudentName) Values(?subid, ?stuid, ?stuname)";
            command.Parameters.AddWithValue("?subid",pass1subject);
            command.Parameters.AddWithValue("?stuid",pass2stuid);
            command.Parameters.AddWithValue("?stuname",pass3stuname);
            command.ExecuteNonQuery();
            connection.Close();
            connection = null;
            context.Response.Write("Added");
        }
        catch
        {
                context.Response.Write("Student already registered to take this subject!");
        }
    }


    /*public void ProcessRequest (HttpContext context) {
        MySqlConnection connection = new MySqlConnection();
        MySqlCommand command = new MySqlCommand();
        MySqlDataReader reader;
        String JSON = string.Empty;
        connection.ConnectionString = DBconn;
        connection.Open();
        command.Connection = connection;
        command.CommandText = "SELECT name FROM lol";
        reader = command.ExecuteReader();
        JSON = "[";

        while(reader.Read())
        {
            JSON += "{\"name\":\"";
            JSON += reader.GetString("name") + "\"},";


        }
        JSON = JSON.Substring(0, JSON.Length - 1);
         JSON += "]";
        reader.Close();
        reader.Dispose();
        reader = null;

        connection.Close();
        connection = null;


    */
    //string JSON = "{\"name\":\"Josh Josh josh of the jungle\",\"street\":\"Live in the jungleeeeeeeeeeeeeeeeeeeeeeee\",\"phone\":\"Wut is pon nambar???????????\"}";
    //string noJSON = "{\'txt1\':\'Dada likes Dota2\',\'txt2\':\'Dada is Smart\',\'txt3\':\'Be like Dada\'}";
    //context.Response.ContentType = "image/png";

    //var JSON = "[{\"name\":\"Josh Josh josh of the jungle\",\"street\":\"Live in the jungleeeeeeeeeeeeeeeeeeeeeeee\",\"phone\":\"Wut is pon nambar???????????\"},{\"name\":\"Bili\",\"street\":\"Ba\",\"phone\":\"la\"}]" ;
    //context.Response.ContentType = "application/JSON";
    //context.Response.ContentType = "text/JSON";

    //context.Response.Write(JSON);
    /*
    string file = context.Request.QueryString["file"];
    switch(file)
    {
        case "logo": context.Response.WriteFile("logo.png"); break;
        case "logo1": context.Response.WriteFile("logo1.png"); break;
    }
    if (file == "logo")
        context.Response.WriteFile("logo.png");*/


    public bool IsReusable
    {
        get
        {
            return false;
        }
    }
}
public class getstudentinfo
{
    public string getstudentID { get; set; }
    public string getstudentsubname { get; set; }
}