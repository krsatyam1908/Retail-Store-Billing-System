<html>
<head>
<title>Retail Store Billing System
</title>
</head>
<body bgcolor="#000000" text="#e7e3d4">
<%
if session("mid")="" then
%>
<script>
alert("please login to continue")
window.open("manager.asp","_self")
</script>
<%
end if
%>
<div style="height:700px;width:100%;">
<div style="height:200px;width:100%;background-color:#44318d">
<h1 style="position:absolute;left:30%;top:5%;font-size:60px">Retail Store Billing System</h1>
</div>
<div style="float:left;height:500px;width:20%;background-color:#29648a">
<input type="button" value="Home" 
onclick="window.open('mhome.asp','_self')" 
style="height:40px;width:100%;font-size:20px;background-color:#1f6521;color:white"
onmouseover="this.style.backgroundColor='#53900f'" 
onmouseout="this.style.backgroundColor='#1f6521'">

<input type="button" value="Software Home" 
onclick="window.open('default.asp','_self')" 
style="height:40px;width:100%;font-size:20px;background-color:#1f6521;color:white"
onmouseover="this.style.backgroundColor='#53900f'" 
onmouseout="this.style.backgroundColor='#1f6521'">

<input type="button" value="Create User" 
onclick="window.open('muser.asp','_self')" 
style="height:40px;width:100%;font-size:20px;background-color:#1f6521;color:white"
onmouseover="this.style.backgroundColor='#53900f'" 
onmouseout="this.style.backgroundColor='#1f6521'">

<input type="button" value="New Product" 
onclick="window.open('mproduct.asp','_self')" 
style="height:40px;width:100%;font-size:20px;background-color:#1f6521;color:white"
onmouseover="this.style.backgroundColor='#53900f'" 
onmouseout="this.style.backgroundColor='#1f6521'">

<input type="button" value="View Report" 
onclick="window.open('mreport.asp','_self')" 
style="height:40px;width:100%;font-size:20px;background-color:#1f6521;color:white"
onmouseover="this.style.backgroundColor='#53900f'" 
onmouseout="this.style.backgroundColor='#1f6521'">

<input type="button" value="Change Password" 
onclick="window.open('mpassword.asp','_self')" 
style="height:40px;width:100%;font-size:20px;background-color:#1f6521;color:white"
onmouseover="this.style.backgroundColor='#53900f'" 
onmouseout="this.style.backgroundColor='#1f6521'">

<input type="button" value="Modify User Account" 
onclick="window.open('moduser.asp','_self')" 
style="height:40px;width:100%;font-size:20px;background-color:#1f6521;color:white"
onmouseover="this.style.backgroundColor='#53900f'" 
onmouseout="this.style.backgroundColor='#1f6521'">

<input type="button" value="Delete User Account" 
onclick="window.open('deluser.asp','_self')" 
style="height:40px;width:100%;font-size:20px;background-color:#1f6521;color:white"
onmouseover="this.style.backgroundColor='#53900f'" 
onmouseout="this.style.backgroundColor='#1f6521'">

<input type="button" value="Logout" 
onclick="window.open('mlogout.asp','_self')" 
style="height:40px;width:100%;font-size:20px;background-color:#dd0000;color:white"
onmouseover="this.style.backgroundColor='#ff0000'" 
onmouseout="this.style.backgroundColor='#dd0000'">


</div>
<div style="float:left;height:500px;width:80%;background-color:#17252a">
<form name="f1" method="post" action="mpassword.asp" style="position:relative;left:10%;top:10%;font-size:40px">
<table>
<tr colspan="2">
Modify Account Password
</tr>
<tr>
<td>
User Id
</td>
<td><input type="text" size="20" name="t1">
<input type="hidden" name="b">
</td>
</tr>
<tr>
<td>
<input style="background-color:#00887a;color:#eeeeee;"type="submit" onclick="f1.b.value='search'" value="search user">
</td>
<td>
<input type="reset" value="clear">
</td>
</tr>
<%
if request.form("b")="search" then
set con=server.createobject("ADODB.Connection")
set rs=server.createobject("ADODB.Recordset")
con.open "rsbs"
sql="select * from manager where userid='"&request.form("t1")&"'"
rs.open sql,con,2,2
if not rs.eof then
%>
<tr>
<td>User ID</td>
<td><input type="text" readonly name="t2" value="<%=rs.fields(0)%>"></td>
</tr>
<tr>
<td>Password</td>
<td><input type="text" name="t3" value="<%=rs.fields(1)%>"></td>
</tr>
<tr>
<td>User Name</td>
<td><input type="text"  name="t4" value="<%=rs.fields(2)%>"></td>
</tr>
<tr>
<td>User Address</td>
<td><input type="text" name="t5" value="<%=rs.fields(3)%>"></td>
</tr>
<tr>
<td>Mobile No</td>
<td><input type="text" name="t6" value="<%=rs.fields(4)%>"></td>
</tr>
<tr>
<td colspan="2">
<input style="background-color:#00887a;color:#eeeeee;"type="submit" onclick="f1.b.value='edit'" value="edit user">
</td>
</tr>
<%
else
response.write("<br>Record Not Found<br>")
end if
rs.close
con.close
end if
%>
<%
if request.form("b")="edit" then
set con=server.createobject("ADODB.Connection")
set rs=server.createobject("ADODB.Recordset")
con.open "rsbs"
sql="select * from manager where userid='"&request.form("t2")&"'"
rs.open sql,con,2,2
rs.fields(1)=request.form("t3")
rs.fields(2)=request.form("t4")
rs.fields(3)=request.form("t5")
rs.fields(4)=request.form("t6")
rs.update
%>
<script>
alert("manager account updated successfully")
</script>
<%
rs.close
con.close
end if
%>
</table>
</form> 

</div>

</div>
</body>
</html>