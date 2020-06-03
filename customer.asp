<html>
<head>
<title>Retail Store Billing System
</title>
</head>
<body bgcolor="#501f3a" text="#ffffff">
<%
if session("uid")="" then
%>
<script>
alert("please login to continue")
window.open("default.asp","_self")
</script>
<%
end if
%>
<div style="height:700px;width:100%;">
<div style="height:200px;width:100%;background-color:#501f3a">
<h1 style="position:absolute;left:30%;top:5%;font-size:60px">Retail Store Billing System</h1>
</div>
<div style="float:left;height:500px;width:20%;background-color:#2d283e">
<input type="button" value="Home" 
onclick="window.open('home.asp','_self')" 
style="height:50px;width:100%;font-size:20px;background-color:#80076F;color:white"
onmouseover="this.style.backgroundColor='#EC11CD'" 
onmouseout="this.style.backgroundColor='#80076F'">

<input type="button" value="Software Home" 
onclick="window.open('default.asp','_self')" 
style="height:50px;width:100%;font-size:20px;background-color:#80076F;color:white"
onmouseover="this.style.backgroundColor='#EC11CD'" 
onmouseout="this.style.backgroundColor='#80076F'">

<input type="button" value="Create Customer" 
onclick="window.open('customer.asp','_self')" 
style="height:50px;width:100%;font-size:20px;background-color:#80076F;color:white"
onmouseover="this.style.backgroundColor='#EC11CD'" 
onmouseout="this.style.backgroundColor='#80076F'">
<input type="button" value="Billing" 
onclick="window.open('billing.asp','_self')" 
style="height:50px;width:100%;font-size:20px;background-color:#80076F;color:white"
onmouseover="this.style.backgroundColor='#EC11CD'" 
onmouseout="this.style.backgroundColor='#80076F'">
<input type="button" value="Stock Entry" 
onclick="window.open('stock.asp','_self')" 
style="height:50px;width:100%;font-size:20px;background-color:#80076F;color:white"
onmouseover="this.style.backgroundColor='#EC11CD'" 
onmouseout="this.style.backgroundColor='#80076F'">
<input type="button" value="Change Password" 
onclick="window.open('password.asp','_self')" 
style="height:50px;width:100%;font-size:20px;background-color:#80076F;color:white"
onmouseover="this.style.backgroundColor='#EC11CD'" 
onmouseout="this.style.backgroundColor='#80076F'">
<input type="button" value="Logout" 
onclick="window.open('logout.asp','_self')" 
style="height:50px;width:100%;font-size:20px;background-color:#dd0000;color:white"
onmouseover="this.style.backgroundColor='#ff0000'" 
onmouseout="this.style.backgroundColor='#dd0000'">


</div>
<div style="float:left;height:500px;width:80%;background-color:#570A0B">
<form method="post" action="customer.asp" style="position:relative;left:10%;top:10%;font-size:40px">
<table>
<tr colspan="2">
Create New Customer
</tr>
<tr>
<td>
Customer Code
</td>
<td><input type="text" required size="20" name="t1">
</td>
</tr>
<tr>
<td>
Customer Name
</td>
<td>
<input type="text" required size="20" name="t2">
</td>
</tr>
<tr>
<td>
Address
</td>
<td>
<input type="text" size="20" name="t3">
</td>
</tr>
<tr>
<td>
Email id
</td>
<td>
<input type="text" size="20" name="t4">
</td>
</tr>

<tr>
<td>
<input style="background-color:#00887a;color:#eeeeee;"type="submit" value="create Customer">
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
sql="select * from customer"
rs.open sql,con,2,2
rs.addnew
rs.fields(0)=request.form("t1")
rs.fields(1)=request.form("t2")
rs.fields(2)=request.form("t3")
rs.fields(3)=request.form("t4")
rs.update
%>
<script>
alert("new Customer created successfully")
window.open("home.asp","_self")
</script>
<%
rs.close
con.close
end if
%>

</div>

</div>
</body>
</html>