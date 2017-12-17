<%@ Page Language="C#" AutoEventWireup="true" CodeFile="MainPage.aspx.cs" Inherits="MainPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="Main.css" type="text/css" />
     <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <title></title>
</head>
<body style="overflow:hidden">
    
    <div id="popup_login_admin">
        <div id="popupcontent">
        <form id="formadminlogin" action="#" method="post" name="adminlogfrom" runat="server">
            <img id="loginadmin" src="Button-Close-icon.png" onclick="close_adminlog()" alt="Close" title="Close"/>
            <h3 style="position:center">Administrator Login</h3>

            <hr />
            <input type="text" runat="server" id="adminname" name="adname" placeholder="Username" required="required" autocomplete="off" maxlength="15"/>
            <input type="password" runat="server" id="adminpass" name="adpass" placeholder="Password" required="required" maxlength="15"  />
            <p class="submit">
            <asp:ImageButton runat="server" ID="submitbtn" ImageUrl="~/loginbtn.png" AlternateText="Login" OnClick="Login_Click" />
            
            </p>
        </form >
            </div>

    </div>
    <div>
        <object id="my-object" data="stulogin.aspx" height="400" width="600" style="margin-top:5px;
 padding:20px 0 20px 20px;
 margin-right:50px;
 width:600px;
 float:right"></object>
    </div>
    <div class="stuinfo">
        <h1>Welcome</h1> 
       <label>  to MSU and PTPL College student portal !&nbsp Please fill in your matrix number and password to access to this web site.</label>
        
    </div>
    <div class="findus">
        <h2>Not a Student?</h2>
        <label>Join us NOW! <a href="Googlemap.aspx" target="_blank" style="text-decoration-line:none;">Click HERE</a> to find out.</label>
    </div>

    <div id="fixedtop">
        <button id="popup" onclick="show_adminlog()">Login as Admin</button>
        
        <div id="msulogo"></div>
    </div>
    <div id="stuportal">
        <label class="stuportal">
            Student Portal
        </label>
    </div>
    
    
    <div id="bottomdesign">

    </div>
    <script>
        function close_adminlog()
        {
            document.getElementById("popup_login_admin").style.display = "none";
            document.getElementById("fixedtop").style.opacity = "1";
            document.getElementById("fixedtop").style.backgroundColor = "";
            document.getElementById("bottomdesign").style.opacity = "1";
            document.getElementById("bottomdesign").style.backgroundColor = "";
            document.getElementById("stuportal").style.opacity = "1";
            document.getElementById("stuportal").style.backgroundColor = "";
            
        }
        function show_adminlog() {
            document.getElementById("popup_login_admin").style.display = "block";
            document.getElementById("fixedtop").style.opacity = ".44";
            document.getElementById("fixedtop").style.backgroundColor = "#303030";
            document.getElementById("bottomdesign").style.opacity = ".44";
            document.getElementById("bottomdesign").style.backgroundColor = "#303030";
            document.getElementById("stuportal").style.opacity = ".44";
            document.getElementById("stuportal").style.backgroundColor = "#303030";
        }
        
    </script>
</body>
    
</html>
