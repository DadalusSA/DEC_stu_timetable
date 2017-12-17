<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="feedback.aspx.cs" Inherits="Project.feedback" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>FEEDBACK</title>
    <style>
        ul {
            list-style-type: none;
            overflow: auto;
            background-color: lawngreen;
            height: 80px;
            border-top-left-radius: 5px;
            border-top-right-radius: 5px;
            border-bottom-right-radius: 5px;
            border-bottom-left-radius: 5px;
        }
        li a {
            margin-top:10px;
            display: inline-block;
            color: darkblue;
            text-align: center;
            padding:5px 60px; 
        }
        li {
            float: left;
        }
        li a:hover {
            background-color: lightskyblue;
            color: black;
            height:18px;
            border-top-left-radius: 5px;
            border-top-right-radius: 5px;
            border-bottom-right-radius: 5px;
            border-bottom-left-radius: 5px; 
        }
        body{
            
        }
        h1{
            padding-left:350px;
        }
        textarea {
            resize:none;
        }
        body{
            background-color:orange;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Label ID="lbluser1" runat="server"></asp:Label>
            <ul>
        <li><a href="home.aspx">Home</a></li>
        <li><a href="product.aspx">Menu</a></li>
        <li><a href="map.html">Where are we?</a></li>
        <li><a href="about.html">About us</a></li>
        <li><a href="feedback.aspx">Feedback</a></li>
        <li><a href="login.aspx">Login</a></li>
        <li><a href="register.aspx">Register</a></li>
        <li><a href="order.aspx">Reservation</a></li>
    </ul>
    <div>
        <h3>FEEDBACK</h3>
        <br />
        *Pleae send your feedback to us so we can improve in the future.
        <br />
    <asp:TextBox ID="feed" runat="server" TextMode="multiline" Columns="50" Rows="5" BorderStyle="Inset"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="PLEASE ENTER THE MESSAGE." ControlToValidate="feed" BackColor="white" ForeColor="Black"></asp:RequiredFieldValidator>
        <br />
        <asp:Button ID="send" runat="server" Text="SUBMIT" OnClick="Button1_Click"/>
        <br />
        <h2>THANKS FOR SENDING US FEEDBACK WE REALLY APPRECIATE IT.</h2>
    </div>
    </form>
</body>
</html>
