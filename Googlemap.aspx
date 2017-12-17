<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Googlemap.aspx.cs" Inherits="Googlemap" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="googlemapcss.css" type="text/css" />
    <title></title>
</head>
<body>
    <div class="top">
    
    </div>
    <form id="form1" action="#" runat="server">
    <br />
        <div class="pagecolor" style="background-color:dimgray;">
            <br />
        <div class="Page">
            
    <a href ="MainPage.aspx" style="font-size:25px"><img src="back.png" style="width:25px; height:25px;padding-top:5px;"/> &nbspStudent Portal</a>
            <br />
            <a href ="AboutUs.aspx" style="font-size:25px"><img src="back.png" style="width:25px; height:25px;padding-top:1px;"/> &nbspGo to about us</a>
            <hr />
            <br />
    <label class="center"> GETTING HERE</label>
    
            <br />
            <h3 style="color:white;">INFORMATION</h3>
            <br />
            <p style="color:red">
                OPERATING HOURS:
                <br />
                Mon-Fri : 9:00A.M. - 5.00P.M.
                <br />
            </p>
            <%for (int i = 0; i < Arl.Count; i++)
                {%>
            <div class="hideshow" style="color:white"><%=((campus)Arl[i]).CamName%>
                <br />
            <a id="get<%=i%>" onclick="show<%=i%>()" class="btnshow">Display</a>
            <p id="display<%=i%>" style="color:white;">
                <br />
                <%=((campus)Arl[i]).Ad1%>
                <br />
                <%=((campus)Arl[i]).Ad2%>
                <br />
                <%=((campus)Arl[i]).Ad3%>
                <br />
                <br />
                Tel : <%=((campus)Arl[i]).Teln%>
                <br />
                Fax : <%=((campus)Arl[i]).Faxn%>
                <br />
                <br />
                For Google Map, please <a href="<%=((campus)Arl[i]).MapIP%>" target="_blank" style="text-decoration:none">Click Here</a><br /> to view in <%=((campus)Arl[i]).CamName%> page.
                </p>
                </div>
            <hr style="width:250px;float:left"/>
            <br />
            <%} %>

            
            
            </div>
            <div id="google">
                <object data="Googleeeeee.html" width="900" height="500" style="margin-left:15px;"></object>
            </div>
            <br />
        </div>

        <br />
    </form>
</body>
    
    <script>

        function showmsu() {
            if (document.getElementById("msushow").text == "Display")
                {
            document.getElementById("msu").style.display = "block";
            document.getElementById("msushow").text = "Hide";
            }
            else
            {
                document.getElementById("msu").style.display = "none";
                document.getElementById("msushow").text = "Display";
            }
        }
            <%for (int i = 0; i <= Arl.Count; i++)
        {%>
            function show<%=i%>()
            {
                if(document.getElementById("get"+<%=i%>).text == "Display")
                {
                    document.getElementById("display"+<%=i%>).style.display = "block";
                    document.getElementById("get"+<%=i%>).text = "Hide";
                }
                else
                {
                    document.getElementById("display"+<%=i%>).style.display = "none";
                    document.getElementById("get"+<%=i%>).text = "Display";
                }

            }

        <%}%>
    </script>
</html>
