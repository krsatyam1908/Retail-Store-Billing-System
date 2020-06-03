<html>
<head>
<title>Retail Store Billing System
</title>
</head>
<body bgcolor="#2C3531" text="#e7e3d4">
<style>
body{
background-image:url('back.jpg');
}
</style>
<div style="height:700px;width:90%;position:absolute;left:5%;">
<div style="height:200px;width:100%;background-color:#802bb1;">
<h1 style="color:#fef9c7;position:absolute;left:22%;top:5%;font-size:60px;font-family:algerian">Retail Store Billing System</h1>
</div>
<div style="height:370px;width:100%;background-color:#2d223e">
<form method="post" action="default.asp" style="color:#a4a71e;position:relative;left:30%;top:20%;font-size:40px;">
<table>
<tr colspan="2">
......Welcome...... Please login to use system
</tr>
<tr>
<td>
User Id:
</td>
<td><input type="text" size="30" name="t1">
</td>
</tr>
<tr>
<td>
Password:
</td>
<td>
<input type="password" size="30" name="t2">
</td>
<tr>
<td>
<input style="background-color:#00887a;color:#eeeeee;"type="submit" value="login">
</td>
<td>
<input type="reset" value="clear">
</td>
</tr>
</table>
</form> 
<%
if request.totalbytes>0 then
set con=server.createobject("ADODB.Connection")
set rs=server.createobject("ADODB.Recordset")
con.open "rsbs"
sql="select * from clerk where userid='"&request.form("t1") &"' and password='"&request.form("t2")&"'"
rs.open sql,con
if not rs.eof then
session("uid")=request.form("t1")
%>
<script>
alert("login successful")
window.open("home.asp","_self")
</script>
<%
else
%>
<script>
alert("invalid login id or password")
</script>
<%
end if
rs.close
con.close
end if
%>

</div>
<div style="height:130px;width:100%;font-size:25;background-color:#564f6f;color:#ffffff">
Developed by:-
<a style="position:relative;left:75%;color:#E9DC20" href="manager.asp">admin login</a><br>

<p><font color="#80F32B"><b>
&nbsp &nbsp Satyam Kumar 37 &nbsp Aman Khan 02 &nbsp Mallika Kumari 52 &nbsp Surya Munda 87 &nbsp Praveen Kachchap Ex-23</b></font></p>
</div>

</div>
</body>
</html>