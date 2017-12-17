<%@ Page Language="C#" AutoEventWireup="true" CodeFile="StudentPage.aspx.cs" Inherits="StudentPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" type="text/css" href="stuCSS.css" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div  class="headerlogo">
            <br />
            <label class="stupor">
                STUDENT PORTAL
            </label>
        <div id="msulogo"></div>
            <div id="pngforbeauty">

            </div>
        </div>
    <div id="TopDiv">
       
        <asp:ImageButton ID="HomeBtn" runat="server" ImageUrl="~/home-button.png" Width="50" Height="45" OnClick="Redirectstumain"/>
        <div class="catdropdown">
        <asp:ImageButton ID="Category" runat="server" ImageUrl="~/listbtn.png" Width="35" Height="34"/>
        <div class="dropdown-content">
            <a href="#chgpassword">Change Password</a>
            <a href="Logout.aspx">Log Out</a>
            
        </div>
            </div>
         
        
        <label id="GetStuInfo" runat="server"></label>
        
        
    </div>

        
       <ul>
           <li>
            E-Timetable
           </li>
           <li>
            Student Feedback page
           </li>
       </ul>
            <div id="chgpassword">
                <label class="pwtype" style="margin-right:80px;"> Old Password:
                </label>
                <asp:TextBox runat="server" ID="oldpw" CssClass="imgtb" TextMode="Password" Width="150"></asp:TextBox>
                <br />
                <label class="pwtype" style="margin-right:75px;">
                New Password:
                </label>
                <asp:TextBox runat="server" ID="newpw" CssClass="imgtb" TextMode="Password" Width="150"></asp:TextBox>
                <br />
                <label class="pwtype" style="margin-right:17px;">

                Confirm New Password:
                </label>
                <asp:TextBox runat="server" ID="confirmnewpw" CssClass="imgtb" TextMode="Password" Width="150"></asp:TextBox>

                <br />
                <br />
                <asp:Button ID="Button1" runat="server" Text="Change password" OnClick="Button1_Click" />


                If there is any feedback or comment please post here.
        <br />
                <br />
                <br />
    <asp:TextBox ID="feed" runat="server" TextMode="multiline" Columns="50" Rows="5" BorderStyle="Inset"></asp:TextBox>
        <asp:Button ID="send" runat="server" Text="Submit" OnClick="Button2_Click"/>
        </div>
    </form>
</body>
</html>
