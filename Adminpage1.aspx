<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Adminpage1.aspx.cs" Inherits="dadastudent" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" type="text/css" href="StyleSheet.css" />
    <title></title>
    <script>
        <%for( int startget = 0; startget <Arl.Count; startget++){ %>

                    <%for (int checkpresub = 0; checkpresub < ((ArrayList)((studentIMGa)Arl4[startget]).prerequisitesubject).Count; checkpresub++){%>
                <%for (int checkfailsub = 0; checkfailsub < ((ArrayList)((studentIMGa)Arl2[startget]).failedstudentsubject).Count; checkfailsub++)
        { %>
        window.addEventListener("load",checksub<%=((studentIMGa)Arl[startget]).studentID%>and<%=((studentprerequisitesubject)((ArrayList)((studentIMGa)Arl4[startget]).prerequisitesubject)[checkpresub]).semsub%>and<%=((studentfailedsub)((ArrayList)((studentIMGa)Arl2[startget]).failedstudentsubject)[checkfailsub]).failedsub%>)
        function checksub<%=((studentIMGa)Arl[startget]).studentID%>and<%=((studentprerequisitesubject)((ArrayList)((studentIMGa)Arl4[startget]).prerequisitesubject)[checkpresub]).semsub%>and<%=((studentfailedsub)((ArrayList)((studentIMGa)Arl2[startget]).failedstudentsubject)[checkfailsub]).failedsub%>()
        {
            document.getElementById("<%=((studentprerequisitesubject)((ArrayList)((studentIMGa)Arl4[startget]).prerequisitesubject)[checkpresub]).semsub%>chk<%=((studentIMGa)Arl[startget]).studentID%>").disabled = true;
        }
                    
                
                        
                        <%
            }  
        }%>
                    
                    
                    
                    <%  for (int startgetsub =0; startgetsub <Arl5.Count; startgetsub++) {
                    
                    %>
        window.addEventListener("load",func<%=((studentsubject)Arl5[startgetsub]).subjectname%>and<%=((studentIMGa)Arl[startget]).studentID%>)
        <%}%>
            
                    
        
                <%}%>
        //function addstufunc(addlo)
        //{
           // var a = document.getElementsByName(addlo);
           // for (var i = 0,  n=a.length, i <n; i++) {
            //        a[i].checked = addlo.checked;
//}
        //
       // }
            

            <%for( int startget1 = 0; startget1 <Arl.Count; startget1++){ %>
            
       
                    
        <%  for (int startgetsub1 =0; startgetsub1 <Arl5.Count; startgetsub1++) {
                    
                    %>
                    
                    function func<%=((studentsubject)Arl5[startgetsub1]).subjectname%>and<%=((studentIMGa)Arl[startget1]).studentID%>()
                    {
                        var x = document.getElementById("<%=((studentsubject)Arl5[startgetsub1]).subjectname%>chk<%=((studentIMGa)Arl[startget1]).studentID%>");
                        var stux = "<%=((studentIMGa)Arl[startget1]).studentID%>";
                        var stunamex = "<%=((studentIMGa)Arl[startget1]).studentName%>";
                        var subx = "<%=((studentsubject)Arl5[startgetsub1]).subjectname%>";
                        if (x.checked == true)
                        {
                        
                            document.getElementById(subx).innerHTML +=" " + stux + " " + stunamex + ".<br/>";
                            document.getElementById(subx+"2").textContent = parseInt(document.getElementById(subx+"2").textContent) + 1;
                    
                        }

                    }
                        <%}%>
            
                    
        
        <%}%>
        
            
        
        

        </script>
</head>
<body id="bodyget">
    
    <form id="form1" runat="server" action="generatetable.aspx">
        <div id="forxmlhttptest"></div>
        
        
        <div id="test" >
        <div class="dropdown">
        <button class="dropbtn">Sem 1(L)</button>
        <div class="dropdown-content">
            <a href="#MPU1103U2chkboxredirect">MPU1103U2</a>
            <a href="#MPU1113U1chkboxredirect">MPU1113U1</a>
            <a href="#TCS0193chkboxredirect">TCS0193</a>
            <a href="#TCT0033chkboxredirect">TCT0033</a>
            <a href="#TMK0013chkboxredirect">TMK0013</a>
            <a href="#UCS1163chkboxredirect">UCS1163</a>
            
        </div>
            
    </div>
            <div class="dropdown">
        <button class="dropbtn">Sem 2(L)</button>
        <div class="dropdown-content">
            <a href="#MPU1082U4chkboxredirect">MPU1082U4</a>
            <a href="#TCS0353chkboxredirect">TCS0353</a>
            <a href="#TEC0034chkboxredirect">TEC0034</a>
            <a href="#TMM0013chkboxredirect">TMM0013</a>
            <a href="#TMT0103chkboxredirect">TMT0103</a>
            <a href="#UCS1173chkboxredirect">UCS1173</a>
        </div>
    </div>
            <div class="dropdown">
        <button class="dropbtn">Sem 3(S)</button>
        <div class="dropdown-content">
            <a href="#TCS0053chkboxredirect">TCS0053</a>
            <a href="#TAC0024chkboxredirect">TAC0024</a>
            <a href="#TBS0033chkboxredirect">TBS0033</a>
        </div>
    </div>
            <div class="dropdown">
        <button class="dropbtn">Sem 4(L)</button>
        <div class="dropdown-content">
            <a href="#TAC0024chkboxredirect">TAC0024</a>
            <a href="#TBS0033chkboxredirect">TBS0033</a>
            <a href="#TCS0094chkboxredirect">TCS0094</a>
            <a href="#TMM0053chkboxredirect">TMM0053</a>
            <a href="#TMT0113chkboxredirect">TMT0113</a>
        </div>
    </div>
            <div class="dropdown">
        <button class="dropbtn">Sem 5(L)</button>
        <div class="dropdown-content">
            <a href="#TAC0033chkboxredirect">TAC0033</a>
            <a href="#TCT0084chkboxredirect">TCT0084</a>
            <a href="#THR0023chkboxredirect">THR0023</a>
            <a href="#TMM0063chkboxredirect">TMM0063</a>
            <a href="#TMM0293chkboxredirect">TMM0293</a>
        </div>
    </div>
            <div class="dropdown">
        <button class="dropbtn">Sem 6(S)</button>
        <div class="dropdown-content">
            <a href="#TCT0073chkboxredirect">TCT0073</a>
            <a href="#TLW0033chkboxredirect">TLW0033</a>
            <a href="#TMM0073chkboxredirect">TMM0073</a>
        </div>
    </div>
            <div class="dropdown">
        <button class="dropbtn">Sem 7(L)</button>
        <div class="dropdown-content">
            <a href="#TMK0023chkboxredirect">TMK0023</a>
            <a href="#TRS0014chkboxredirect">TRS0014</a>
        </div>
    </div>
            <a href="AdminContactPage.aspx" style="padding-left:5px; padding-top:14px; text-decoration:none; color: blue;float:left;"> EditPage
    </a>
            <label id="Loginname" runat="server"></label>
            <a href="Logout.aspx" style="padding-right:20px;padding-top:12px; text-decoration:none; color: blue;float:right;"> Log Out
    </a>
    </div>
        <%for (int c = 0; c < Arl5.Count; c++)
                {
                %>
        <div id="<% =((studentsubject)Arl5[c]).subjectname%>chkboxredirect" style="width: 220px; height:300px; float: left; border: 5px solid black; margin-top: 35px; margin-left: 20px; padding: 5px;float:left;">
        <div style="background-color:darkgray;height:30px;width:100%;text-align:center;padding-top:5px;">
            <% =((studentsubject)Arl5[c]).subjectname%>
        </div>
            
            <br />
        <label id="<% =((studentsubject)Arl5[c]).subjectname%>chkbox" onclick="showstudata('<% =((studentsubject)Arl5[c]).subjectname%>')">
                Click for Info
            
            <label id="<% =((studentsubject)Arl5[c]).subjectname%>itemname" style="display:block">
                    
                    <br />
                </label>
        <label id="<% =((studentsubject)Arl5[c]).subjectname%>" style="display:none" class="show">
            <% =((studentsubject)Arl5[c]).subjectname%>
            <br />
            
        </label>
            </label>
            </div>

            
        <%
            } 
            %>
        <br />
        <input type="submit" value="Submit registration" />
        <br />
        <br />
        <div style="clear:both;"></div>
        <div id="maindiv" style="width:1240px;">
          <%  
                
                for (int i = 0; i < Arl.Count; i++)
                {
            %>
            

            <div class="stuidname" style="width: 350px; border:5px solid black; margin-top: 10px; padding: 5px; float: left;">
                <%
                    Response.Write(((studentIMGa)Arl[i]).studentID + "<br/> " + ((studentIMGa)Arl[i]).studentName.ToUpper());
                    //Response.BinaryWrite(((studentIMGa)Arl[i]).studentImage);
                    %>
                </div>
            
            <div style="width: 220px;height:240px;float: left; border: 5px solid black; margin-top: 10px; margin-left: 20px; padding: 5px;float:left;overflow-y:scroll">
           
                 <%
                Response.Write("Passed Subject : <br/>");


                for (int j = 0; j < ((ArrayList)((studentIMGa)Arl[i]).passedstudentsubject).Count; j++)
                {
                    

                    Response.Write("<br/>" + ((studentpassedsub)((ArrayList)((studentIMGa)Arl[i]).passedstudentsubject)[j]).passedsub);
                    %>
                    <div style="float:right;">
                <%
                        Response.Write(((studentpassedsub)((ArrayList)((studentIMGa)Arl[i]).passedstudentsubject)[j]).passgrade);
                        %>
                        </div>
                    <%
                    }
                    %>
                    </div>
       
                    <div style ="width:300px;float:left">
            <div style="width: 220px;height:100px; border: 5px solid black; margin-top: 10px; margin-left: 20px; padding: 5px; float:left;overflow-y:scroll">
             <%
                    Response.Write("Failed Subject : <br/> <br/>");
                    for (int k = 0; k < ((ArrayList)((studentIMGa)Arl2[i]).failedstudentsubject).Count; k++)
                    {
                     //   if (((ArrayList)((studentIMGa)Arl2[i]).failedstudentsubject).Count == 0)
                     //   {
                      //      Response.Write("He/She Pro");
                      //  }
                      //  else
                      //  {
                         
                
                          //Method 1 =  Response.Write(((studentfailedsub)((ArrayList)((studentIMGa)Arl2[i]).failedstudentsubject)[k]).failedsub);
                         %>
                        <input type ="checkbox"
                            <%for (int get4sss2 = 0; get4sss2 < ((ArrayList)((studentIMGa)Arl6[i]).select_stu_sub).Count; get4sss2++)
                       {
                           if (((studentselectedsubject)((ArrayList)((studentIMGa)Arl6[i]).select_stu_sub)[get4sss2]).stuselsubid == ((studentfailedsub)((ArrayList)((studentIMGa)Arl2[i]).failedstudentsubject)[k]).failedsub
                            & ((studentselectedsubject)((ArrayList)((studentIMGa)Arl6[i]).select_stu_sub)[get4sss2]).stuselstuid == ((studentIMGa)Arl[i]).studentID
                            & ((studentselectedsubject)((ArrayList)((studentIMGa)Arl6[i]).select_stu_sub)[get4sss2]).stuselstuname == ((studentIMGa)Arl[i]).studentName )
                           {
                               Response.Write("Checked");
                               %> <%
                           }
                       }%>  
                        id="<%=((studentfailedsub)((ArrayList)((studentIMGa)Arl2[i]).failedstudentsubject)[k]).failedsub%>chk<%=((studentIMGa)Arl[i]).studentID%>" 
                        name="<%=((studentfailedsub)((ArrayList)((studentIMGa)Arl2[i]).failedstudentsubject)[k]).failedsub%>"
                        onclick="addsubject('<%= ((studentfailedsub)((ArrayList)((studentIMGa)Arl2[i]).failedstudentsubject)[k]).failedsub%>','<%=((studentIMGa)Arl[i]).studentID%>','<%=((studentIMGa)Arl[i]).studentName%>')" />
                        <%=((studentfailedsub)((ArrayList)((studentIMGa)Arl2[i]).failedstudentsubject)[k]).failedsub %>
                <div style="float:right">
                      <%
                            Response.Write(((studentfailedsub)((ArrayList)((studentIMGa)Arl2[i]).failedstudentsubject)[k]).failgrade);
                      // } 
                      %>

                </div>
                <div style="clear:both;"></div>
                    <%
                    }
                    %>
                </div>

                <div style="clear:both;"></div>

            <div style="width: 220px; border: 5px solid black; margin-top: 10px; margin-left: 20px; padding: 5px; ">
            <%
                        //}
                        Response.Write("Next semester subject :");
                        Response.Write("<br/>");

                        for (int a = 0; a < ((ArrayList)((studentIMGa)Arl3[i]).nextsemsubject).Count; a++)
                        {
                            //Method 1 =
                            //string nexsemsub = ((studentnextsemsub)((ArrayList)((studentIMGa)Arl3[i]).nextsemsubject)[a]).semsub;
                            //Response.Write("<br/> <div class=" + "'" + nexsemsub + "'>" + nexsemsub + "</div>");
                            // Response.Write(((studentnextsemsub) ((ArrayList)((studentIMGa)Arl3[i]).nextsemsubject)[a]).subname);
                            // Response.Write("<br/>");
                            //Response.Write("<input type='checkbox' name=" + "'" + nexsemsub + "'" + "onclick='addsubject("+nexsemsub+")'/>" + nexsemsub + "<br/>");

                    %> 
                
                   <input type="checkbox" 
                       <%for (int get4sss = 0; get4sss < ((ArrayList)((studentIMGa)Arl6[i]).select_stu_sub).Count; get4sss++)
                       {
                           if (((studentselectedsubject)((ArrayList)((studentIMGa)Arl6[i]).select_stu_sub)[get4sss]).stuselsubid == ((studentnextsemsub)((ArrayList)((studentIMGa)Arl3[i]).nextsemsubject)[a]).semsub
                            & ((studentselectedsubject)((ArrayList)((studentIMGa)Arl6[i]).select_stu_sub)[get4sss]).stuselstuid == ((studentIMGa)Arl[i]).studentID
                            & ((studentselectedsubject)((ArrayList)((studentIMGa)Arl6[i]).select_stu_sub)[get4sss]).stuselstuname == ((studentIMGa)Arl[i]).studentName )
                           {
                               Response.Write("Checked");
                               %> <%
                           }
                       }%> 
                       id="<%=((studentnextsemsub)((ArrayList)((studentIMGa)Arl3[i]).nextsemsubject)[a]).semsub%>chk<%=((studentIMGa)Arl[i]).studentID%>" 
                       name="<%=((studentnextsemsub)((ArrayList)((studentIMGa)Arl3[i]).nextsemsubject)[a]).semsub%>" 
                       onclick="addsubject('<%= ((studentnextsemsub)((ArrayList)((studentIMGa)Arl3[i]).nextsemsubject)[a]).semsub%>','<%=((studentIMGa)Arl[i]).studentID%>','<%=((studentIMGa)Arl[i]).studentName%>')" 
                       /> <%= ((studentnextsemsub)((ArrayList)((studentIMGa)Arl3[i]).nextsemsubject)[a]).semsub %> <br />
                     <%
                    } %>
                    
                </div>
                        
                        <div style="clear:both;"></div>

                         <div style="width: 220px; border: 5px solid black; margin-top: 10px; margin-left: 20px; padding: 5px; ">
                    <%

                        //}
                        Response.Write("PrerequisiteSubject : <br/>");

                        for (int b = 0; b < ((ArrayList)((studentIMGa)Arl4[i]).prerequisitesubject).Count; b++)
                        {
                            Response.Write("You need to pass " + ((studentprerequisitesubject)((ArrayList)((studentIMGa)Arl4[i]).prerequisitesubject)[b]).prerequisitesub);
                            Response.Write("&nbspin order to take&nbsp");
                            Response.Write(((studentprerequisitesubject) ((ArrayList)((studentIMGa)Arl4[i]).prerequisitesubject)[b]).semsub);
                            Response.Write("&nbsp" + ((studentprerequisitesubject) ((ArrayList)((studentIMGa)Arl4[i]).prerequisitesubject)[b]).subname + "<br/>");
                            
                        }
                    %>
                </div>
                        <div style="clear:both;"></div>
        </div>
                        <%
                            }
                            %>
              
       
            
            <% for (int c2 = 0; c2 < Arl5.Count; c2++)
            {
                    %>
             <script>
                 
            document.getElementById("<%=((studentsubject)Arl5[c2]).subjectname%>itemname").innerHTML = "<%=((studentsubject)Arl5[c2]).subjectname%> <br/><label id='<%=((studentsubject)Arl5[c2]).subjectname%>2'>0</label> /" + document.getElementsByName("<%=((studentsubject)Arl5[c2]).subjectname%>").length + " students";
           
                 </script>

            <%
                }
                 %>
            
            <script>
                            
                <%
                
                for (int c3 = 0; c3 < Arl5.Count; c3++)
                {
                    
                %>
                function showstudata(subject)
                {
                    if (document.getElementById(subject).className =='show')
                    {
                        document.getElementById(subject).className = 'showing';
                    document.getElementById(subject).style.display = "block";
                    document.getElementById(subject+"itemname").style.display = "none";
                    }
                    else 
                    {
                        document.getElementById(subject).className ='show';
                        document.getElementById(subject).style.display = "none";
                        document.getElementById(subject+"itemname").style.display = "block";
                    }
                }
                
                    function addsubject(subject,stuid,stuname)
                    {
                        
                            // var student_div = "<label id='"+subject+"_"+stuid+"'> " + stuid + " " + stuname  + ".</label>";
                    
                    
                        
                            if (document.getElementById(subject+"chk"+stuid).checked == true)
                            {

                                if (<%=((studentsubject)Arl5[c3]).subjectname%> == document.getElementById("<%=((studentsubject)Arl5[c3]).subjectname%>"))
                                {
                                    document.getElementById(subject).innerHTML += stuid + " " + stuname + ".<br/>";
                                    document.getElementById(subject+"2").textContent = parseInt(document.getElementById(subject+"2").textContent) + 1;
                                    /*
                                    var xmlhttp = new XMLHttpRequest();
                                    var studentsubchecked;
                                    var subjectpasstodo = $(subject).val();
                                    var studentpasstodo = $(stuid).val();
                                    var subnamepasstodo = $(stuname).val();
                                    xmlhttp.onreadystatechange = function () {
                                        if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
                                            studentsubchecked = JSON.parse(xmlhttp.responseText);
                                            //alert(obj.name);
                                        }
                                    };
                                    xmlhttp.open("GET", "Handler.ashx", false);
                                    xmlhttp.send();
                                    
                                    var xmlhttp = XMLHttpRequest();
                                    xmlhttp.onreadystatechange = function () {
                                        if (xmlhttp.readyState == 4) {
                                            alert(xmlhttp.responseText);
                                        }
                                        xmlhttp.open("GET","Handler.ashx", false);
                                        xmlhttp.send();
                                    }*/
                        
                                }
                                var xhttpadd = new XMLHttpRequest();
                                xhttpadd.onreadystatechange = function() {
                                    if (xhttpadd.readyState == 4 && xhttpadd.status == 200) {
                                        alert(xhttpadd.responseText);
                                    }
                                };
                                xhttpadd.open("GET", "Handler.ashx?stusub="+subject+"&stustuid="+stuid+"&stustuname="+stuname+"", true);
                                xhttpadd.send();
                            }
                            else if (document.getElementById(subject+"chk"+stuid).checked == false)
                            {
                     
                                if (<%=((studentsubject)Arl5[c3]).subjectname%> == document.getElementById("<%=((studentsubject)Arl5[c3]).subjectname%>"))
                                {
                                    var test1 = document.getElementById(subject);
                                    test1.innerHTML = test1.innerHTML.replace(stuid,"").replace(stuname,"").replace(".","");
                                    document.getElementById(subject+"2").textContent = parseInt(document.getElementById(subject+"2").textContent) - 1;
                                }
                                var xhttpremove = new XMLHttpRequest();
                                xhttpremove.onreadystatechange = function() {
                                    if (xhttpremove.readyState == 4 && xhttpremove.status == 200) {
                                        alert(xhttpremove.responseText);
                                    }
                                };
                                xhttpremove.open("GET", "Handler2.ashx?removestusub="+subject+"&removestustuid="+stuid+"&removestustuname="+stuname+"", true);
                                xhttpremove.send();
                            }
                    
                    
                        }
                    
                
                <%
                    
                         }
            %>

            </script>
            
            
    
            </div>
    </form>
    
</body>
</html>
