using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

namespace Project
{
    public partial class feedback : System.Web.UI.Page
    {
        public MySqlConnection connection;
        public MySqlCommand command1;


        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            connection = new MySqlConnection("Server=localhost;Database=khoon_pastry;Uid=root;Pwd=1234");
            command1 = new MySqlCommand();
            command1.Connection = connection;
            connection.Open();
  
            command1.CommandText = "insert into feedback(feedback) values (?1);";
            command1.Parameters.AddWithValue("?1", feed.Text.Trim());

                {
                    command1.ExecuteNonQuery();

                ScriptManager.RegisterStartupScript(this, this.GetType(),
                "alert",
                "alert('SUBMIT SUCCESSFUL AND THANKS FOR ');window.location ='feedback.aspx';",
                true);
            }

            connection.Close();
            connection.Dispose();
        }
    }
}