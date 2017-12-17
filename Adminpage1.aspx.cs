using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;
using MySql.Data.MySqlClient;
public partial class dadastudent : System.Web.UI.Page
{

    MySqlConnection connection;
    MySqlCommand command;
    MySqlDataReader reader;

    MySqlConnection connection2;
    MySqlCommand command2;
    MySqlDataReader reader2;

    MySqlConnection connection3;
    MySqlCommand command3;
    MySqlDataReader reader3;

    MySqlConnection connection4;
    MySqlCommand command4;
    MySqlDataReader reader4;

    MySqlConnection connection5;
    MySqlCommand command5;
    MySqlDataReader reader5;

    MySqlConnection connection6;
    MySqlCommand command6;
    MySqlDataReader reader6;

    MySqlConnection connection7;
    MySqlCommand command7;
    MySqlDataReader reader7;

    


    public ArrayList Arl = new ArrayList();
    public ArrayList Arl2 = new ArrayList();
    public ArrayList Arl3 = new ArrayList();
    public ArrayList Arl4 = new ArrayList();
    public ArrayList Arl5 = new ArrayList();
    public ArrayList Arl6 = new ArrayList();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["AdminID"] == null)
        {
            Response.Write("<script language='javascript'>alert('Please login to continue')</script>");
            Response.Write("<script language='javascript'>window.location='MainPage.aspx';</script>");

        }
        else
        {
            Loginname.InnerText = "" + Session["AdminID"];
        }
        //try
        // {
        //stuID = txtstudentID.Text;
        connection = new MySqlConnection("Server=localhost;Uid=root;Pwd=dadalus123;Database=pf;");
        connection2 = new MySqlConnection("Server=localhost;Uid=root;Pwd=dadalus123;Database=pf;");
        connection3 = new MySqlConnection("Server=localhost;Uid=root;Pwd=dadalus123;Database=pf;");
        connection4 = new MySqlConnection("Server=localhost;Uid=root;Pwd=dadalus123;Database=pf;");
        connection5 = new MySqlConnection("Server=localhost;Uid=root;Pwd=dadalus123;Database=pf;");
        connection6 = new MySqlConnection("Server=localhost;Uid=root;Pwd=dadalus123;Database=pf;");
        connection7 = new MySqlConnection("Server=localhost;Uid=root;Pwd=dadalus123;Database=pf;");
        connection.Open();
        command = new MySqlCommand();
        command.Connection = connection;
        command.CommandText = "SELECT StudentID,Name,password FROM student";


        reader = command.ExecuteReader();

        while (reader.Read())
        {
            ArrayList arlpassedsubject = new ArrayList();
            ArrayList arlfailedsubject = new ArrayList();
            ArrayList arlnextsemsubject = new ArrayList();
            ArrayList arlprerequisitesubject = new ArrayList();
            ArrayList arlselectedstudentsubject = new ArrayList();
            studentIMGa SI = new studentIMGa();
            SI.studentID = reader.GetString("StudentID");
            SI.studentName = reader.GetString("Name");
            SI.studentPass = reader.GetString("Password");
            //stu = reader.GetByte("StudentIMG");
            /*
            string imgno = Context.Request.QueryString["StudentIMG"].ToString();
            string sConn = System.Configuration.ConfigurationManager.ConnectionStrings["constr"].ToString();
            MySqlConnection imagestu = new MySqlConnection(sConn);
            imagestu.Open();
            string imgtest = "select studentIMG from student where ID=" + stuID;
            MySqlCommand objCmd = new MySqlCommand(imgtest, imagestu);
            objCmd.Commandtype = Contexttype.Text;
            objCmd.Parameters.AddWithValue("studentIMG", stuID.ToString());
            object data = objCmd.ExecuteScalar();
            imagestu.Close();
            objCmd.Dispose();
            Context.Response.BinaryWrite((byte[])data);

            */
            connection2.Open();
            command2 = new MySqlCommand();
            command2.Connection = connection2;
            command2.CommandText = "SELECT SubjectID, Grade FROM student_result WHERE StudentID=?1 and Grade <> 'F'";
            // Method 2 = command2.CommandText = "SELECT SubjectID, Grade FROM student_result WHERE Grade in ('D','C','C+','B-','B','B+','A-','A')";
            command2.Parameters.AddWithValue("?1", reader.GetString("StudentID"));

            reader2 = command2.ExecuteReader();

            while (reader2.Read())
            {
                studentpassedsub sps = new studentpassedsub();
                sps.passedsub = reader2.GetString("SubjectID");
                sps.passgrade = reader2.GetString("Grade");

                arlpassedsubject.Add(sps);


                // }
                //SI.studentImage = reader.GetByte("studentIMG");
            }
            reader2.Close();
            reader2.Dispose();
            SI.passedstudentsubject = arlpassedsubject;

            command2.Dispose();
            connection2.Close();
            Arl.Add(SI);
            

            connection3.Open();
                command3 = new MySqlCommand();
                command3.Connection = connection3; 
                command3.CommandText = "SELECT SubjectID, Grade FROM student_result WHERE StudentID =?1 and Grade = 'F'";
                command3.Parameters.AddWithValue("?1", reader.GetString("StudentID"));
                /*command5 = new MySqlCommand();
                command5.Connection = connection5;
                command5.CommandText = "SELECT count(*) FROM `student_result` where studentID = " + reader.GetString("ID") + " and Grade < 2.00";

            if (command5.CommandText == "0")
            {
                string nofail = "No failed subject";
                studentfailedsub sfs = new studentfailedsub();
                sfs.failedsub = nofail;
                arlpassedsubject.Add(sfs);
                SI.passedstudentsubject = arlstunameid;
                Arl2.Add(sfs);

            }*/
                //else { 
                reader3 = command3.ExecuteReader();

                while (reader3.Read())
                {
                    studentfailedsub sfs = new studentfailedsub();
                    sfs.failedsub = reader3.GetString("SubjectID");
                    sfs.failgrade = reader3.GetString("Grade");

                arlfailedsubject.Add(sfs);


                
            }
                reader3.Close();
                reader3.Dispose();
                SI.failedstudentsubject = arlfailedsubject;

                command3.Dispose();
                connection3.Close();
                Arl2.Add(SI);

            connection4.Open();
            command4 = new MySqlCommand();
            command4.Connection = connection4;
            command4.CommandText = "SELECT subjectCode, SubjectName FROM `student` s join `subject_semester` ss  where s.studentid=?1 and s.sem +1 = ss.semester";
            command4.Parameters.AddWithValue("?1", reader.GetString("StudentID"));

            reader4 = command4.ExecuteReader();

            while (reader4.Read())
            {
                studentnextsemsub sns = new studentnextsemsub();
                sns.semsub = reader4.GetString("SubjectCode");
                sns.subname = reader4.GetString("SubjectName");

                arlnextsemsubject.Add(sns);


                // }
                //SI.studentImage = reader.GetByte("studentIMG");
            }
            reader4.Close();
            reader4.Dispose();
            SI.nextsemsubject = arlnextsemsubject;

            command4.Dispose();
            connection4.Close();
            Arl3.Add(SI);

            connection5.Open();
            command5 = new MySqlCommand();
            command5.Connection = connection5;
            command5.CommandText = "SELECT PrerequisiteSubjectID, ss.SubjectCode,ss.SubjectName FROM subject_semester ss join subjects s ON(ss.SubjectCode = s.SubjectID) WHERE SubjectCode IN (SELECT ss.subjectCode FROM student stu join `subject_semester`ss where stu.studentid =?1 and stu.sem + 1 = ss.semester) and subjectcode in (SELECT SubjectID from subjects where PrerequisiteSubjectID is not null)";
            command5.Parameters.AddWithValue("?1", reader.GetString("StudentID"));

            reader5 = command5.ExecuteReader();

            while (reader5.Read())
            {
                studentprerequisitesubject sprs = new studentprerequisitesubject();
                sprs.semsub = reader5.GetString("SubjectCode");
                sprs.subname = reader5.GetString("SubjectName");
                sprs.prerequisitesub = reader5.GetString("PrerequisiteSubjectID");

                arlprerequisitesubject.Add(sprs);

                
            }
            reader5.Close();
            reader5.Dispose();
            SI.prerequisitesubject = arlprerequisitesubject;

            command5.Dispose();
            connection5.Close();
            Arl4.Add(SI);

            connection7.Open();
            command7 = new MySqlCommand();
            command7.Connection = connection7;
            command7.CommandText = "SELECT * FROM Student_Selected_Subjects Where StudentID =?1";
            command7.Parameters.AddWithValue("?1", reader.GetString("StudentID"));
            reader7 = command7.ExecuteReader();

            while (reader7.Read())
            {
                studentselectedsubject sss = new studentselectedsubject();
                sss.stuselsubid = reader7.GetString("SubjectID");
                sss.stuselstuid = reader7.GetString("StudentID");
                sss.stuselstuname = reader7.GetString("StudentName");

                arlselectedstudentsubject.Add(sss);
                
                
            }
            reader7.Close();
            reader7.Dispose();
            SI.select_stu_sub = arlselectedstudentsubject;
            command7.Dispose();
            connection7.Close();
            Arl6.Add(SI);
            SI = null;

            
        }
            reader.Close();
            reader.Dispose();

            connection.Close();
            connection.Dispose();
            connection = null;
        // }
        //catch
        // {
        //    Response.Write("<script>alert('No such thing')</script>");
        // }
        
        
        connection6.Open();
        command6 = new MySqlCommand();
        command6.Connection = connection6;
        command6.CommandText = "SELECT SubjectID FROM Subjects";
        reader6 = command6.ExecuteReader();
        
        while (reader6.Read())
        {
            studentsubject ssc = new studentsubject();
            ssc.subjectname = reader6.GetString("SubjectID");

            Arl5.Add(ssc);
            ssc = null;
        }
        reader6.Close();
        reader6.Dispose();
        
        command6.Dispose();
        connection6.Close();
       
        connection6 = null;

       
    }

    protected void txtGetData_Click(object sender, EventArgs e)
    {
       
    }
}
public class studentIMGa
{
    public string studentID { get; set; }
    public string studentName { get; set; }
    public string studentPass { get; set; }
    public byte[] studentImage { get; set; }
    public ArrayList passedstudentsubject { get; set; }
    public ArrayList failedstudentsubject { get; set; }
    public ArrayList nextsemsubject { get; set; }
    public ArrayList prerequisitesubject { get; set; }
    public ArrayList select_stu_sub { get; set; }
}

public class studentpassedsub
{
        public string passedsub { get; set; }
        public string passgrade { get; set; }
}

public class studentfailedsub
{
    public string failgrade { get; set; }
    public string failedsub { get; set; }
    
}

public class studentnextsemsub
{
    public string semsub { get; set; }
    public string subname { get; set; }
}

public class studentprerequisitesubject
{
    public string semsub { get; set; }
    public string subname { get; set; }
    public string prerequisitesub { get; set; }
}

public class studentsubject
{
    public string subjectname { get; set; }
}

public class studentselectedsubject
{
    public string stuselsubid { get; set; }
    public string stuselstuid { get; set; }
    public string stuselstuname { get; set; }
}



