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
<form method="post" action="mproduct.asp" style="position:relative;left:10%;top:10%;font-size:50px">
<table>
<tr colspan="2">
Create New Product
</tr>
<tr>
<td>
Product Code:-
</td>
<td><input type="text" required size="20" name="t1">
</td>
</tr>
<tr>
<td>
Product Name:-
</td>
<td>
<input type="text" required size="20" name="t2">
</td>
</tr>
<tr>
<td>
Category:-
</td>
<td>
<select name="t3">
<option value="Clothing">Clothing</option>
<option value="Home Care">Home Care</option>
<option value="Kitchen Ware">Kitchen Ware</option>
<option value="Electronics">Electronics</option>
<option value="Home Appliances">Home Appliances</option>
<option value="Grocery">Grocery</option>
<option value="Stationery">Stationery</option>
<option value="Sports">Sports</option>
</select>
</td>
</tr>
<tr>
<td>
Brand:-
</td>
<td>
<input type="text" size="20" name="t4">
</td>
</tr>
<tr>
<td>
Description:-
</td>
<td>
<input type="text" size="50" name="t5">
</td>
</tr>
<tr>
<td>
Rate:-
</td>
<td>
<input type="text" size="20" name="t6">
</td>
</tr>

<tr>
<td>
<input style="background-color:#00887a;color:#eeeeee;"type="submit" value="create product">
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
sql="select * from product"
rs.open sql,con,2,2
rs.addnew
rs.fields(0)=request.form("t1")
rs.fields(1)=request.form("t2")
rs.fields(2)=request.form("t3")
rs.fields(3)=request.form("t4")
rs.fields(4)=request.form("t5")
rs.fields(5)=request.form("t6")
rs.update
%>
<script>
alert("new product created successfully")
window.open("mhome.asp","_self")
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