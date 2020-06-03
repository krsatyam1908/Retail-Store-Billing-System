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
<form method="post" action="stock.asp" style="position:relative;left:10%;top:10%;font-size:50px">
<table>
<tr colspan="2">
Stock Entry Process
</tr>
<tr>
<td>
Stock Code
</td>
<td><input type="text" readonly size="20" name="t1" value="<%=year(date())&month(date())&day(date())%>">
</td>
</tr>
<tr>
<td>
Product Code
</td>
<td>
<select name="t2">
<%
set con=server.createobject("ADODB.Connection")
set rs=server.createobject("ADODB.Recordset")
con.open "rsbs"
sql="select * from product"
rs.open sql,con,2,2
do until rs.eof
%>
<option value="<%=rs.fields(0)%>"><%=rs.fields(0)%></option>
<%
rs.movenext
loop
rs.close
con.close
%>
</select>
</td>
</tr>
<tr>
<td>
Stock
</td>
<td>
<input type="text" size="20" name="t3">
</td>
</tr>

<tr>
<td>
<input style="background-color:#00887a;color:#eeeeee;"type="submit" value="Update Stock">
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
sql="select * from stock"
rs.open sql,con,2,2
rs.addnew
rs.fields(0)=request.form("t1")
rs.fields(1)=request.form("t2")
rs.fields(2)=request.form("t3")
rs.fields(3)=date()
rs.fields(4)=session("uid")
rs.update
rs.close
sql="select * from product where pcode='"&request.form("t2")&"'"
rs.open sql,con,2,2
rs.fields(6)=rs.fields(6)+cint(request.form("t3"))
rs.update
%>
<script>
alert("Product stock updated successfully")
window.open("stock.asp","_self")
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