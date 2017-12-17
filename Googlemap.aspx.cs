using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;
using System.Collections;

public partial class Googlemap : System.Web.UI.Page
{
    MySqlConnection connection;
    MySqlCommand command;
    MySqlDataReader reader;

    public ArrayList Arl = new ArrayList();
    protected void Page_Load(object sender, EventArgs e)
    {
        connection = new MySqlConnection("Server=localhost;Uid=root;Pwd=dadalus123;Database=pf;");
        connection.Open();
        command = new MySqlCommand();
        command.Connection = connection;
        command.CommandText = "SELECT * FROM locationptpl";
        reader = command.ExecuteReader();
        while (reader.Read())
        {
            campus ca = new campus();
            ca.CamName = reader.GetString("CampusName");
            ca.Ad1 = reader.GetString("AddressLine1");
            ca.Ad2 = reader.GetString("AddressLine2");
            ca.Ad3 = reader.GetString("AddressLine3");
            ca.Teln = reader.GetString("Tel");
            ca.Faxn = reader.GetString("Fax");
            ca.MapIP = reader.GetString("MapAddress");
            Arl.Add(ca);
            ca = null;
        }
        reader.Close();
        reader.Dispose();

        connection.Close();
        connection.Dispose();
        connection = null;
    }
}
public class campus
{
    public string CamName { get; set; }
    public string Ad1   { get; set; }
    public string Ad2 { get; set; }
    public string Ad3 { get; set; }
    public string Teln { get; set; }
    public string Faxn { get; set; }
    public string MapIP { get; set; }
}