<%@ Page Language="C#" AutoEventWireup="true" CodeFile="stulogin.aspx.cs" Inherits="Adminlogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="stuCSS.css" type="text/css" />
    <title></title>
</head>
<body style="overflow:hidden">
    <fieldset id="logindiv"><legend style="background-color:white;border-radius:15px;padding-left:10px;padding-right:10px;font-size:20px;font-weight:100">Student Login</legend>
        
        <form id="loginform" action="#" runat="server">
            
            <br />

            <asp:TextBox ID="stulogin" runat="server" placeholder="Username" autocomplete="off" required="true"></asp:TextBox><br />
            <br />
            <asp:TextBox ID="stupass" TextMode="Password"  placeholder="Password" runat="server" required="true"></asp:TextBox><br />
            <br />
            <br />
            <asp:CheckBox runat="server" ID="unprmbme" />&nbspRemember Me
            <asp:ImageButton runat="server" ID="stusubmitbtn" ImageUrl="~/button-student-login.png" AlternateText="Login" OnClick="stusubmitbtn_Click1"  />
        </form>
        

        </fieldset>
    <script>
    </script>
</body>
</html>
