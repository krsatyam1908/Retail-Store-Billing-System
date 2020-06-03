<html>
<head>
<title>Retail Store Billing System
</title>
</head>
<body bgcolor="#edeae5" text="#e7e3d4">
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
<div style="height:200px;width:100%;background-color:#ceb151">
<h1 style="position:absolute;left:30%;top:5%;font-size:60px">Retail Store Billing System</h1>
</div>
<div style="float:left;height:500px;width:20%;background-color:#026670">
<input type="button" value="home" 
onclick="window.open('mhome.asp','_self')" 
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
<input type="button" value="Software Home" 
onclick="window.open('default.asp','_self')" 
style="height:40px;width:100%;font-size:20px;background-color:#1f6521;color:white"
onmouseover="this.style.backgroundColor='#53900f'" 
onmouseout="this.style.backgroundColor='#1f6521'">

<input type="button" value="Logout" 
onclick="window.open('mlogout.asp','_self')" 
style="height:40px;width:100%;font-size:20px;background-color:#dd0000;color:white"
onmouseover="this.style.backgroundColor='#ff0000'" 
onmouseout="this.style.backgroundColor='#dd0000'">


</div>
<div style="float:left;height:500px;width:80%;background-color:#17252a;overflow:auto;">
<h1>Reports</h1>
<input type="button" value="Stock Report" 
onclick="window.open('stockreport.asp','_self')" 
style="height:40px;width:20%;font-size:20px;background-color:#ee0000;color:white"
onmouseover="this.style.backgroundColor='#ff0000'" 
onmouseout="this.style.backgroundColor='#ee0000'">
<input type="button" value="Sales Report" 
onclick="window.open('salesreport.asp','_self')" 
style="height:40px;width:20%;font-size:20px;background-color:#ee0000;color:white"
onmouseover="this.style.backgroundColor='#ff0000'" 
onmouseout="this.style.backgroundColor='#ee0000'">

<br>

<table border="1">
<tr>
<td>Bill NO</td>
<td>Bill Date</td>
<td>Customer Code</td>
<td>User Id</td>
<td>Total</td>
<td>Discount</td>
<td>Netamount</td>
</tr>
<%
set con=server.createobject("ADODB.Connection")
set rs=server.createobject("ADODB.Recordset")
con.open "rsbs"
sql="select * from bill where billno='"&request.querystring("bn")&"'"
rs.open sql,con
do until rs.eof
%>
<tr>
<td><%=rs.fields(0)%></td>
<td><%=rs.fields(1)%></td>
<td><%=rs.fields(2)%></td>
<td><%=rs.fields(3)%></td>
<td><%=rs.fields(4)%></td>
<td><%=rs.fields(5)%></td>
<td style="background-color:yellow;color:#002000;"><%=rs.fields(6)%></td>
</tr>
<%
rs.movenext
loop
rs.close
con.close
%>
</table>
<h2>Bill Details</h2>
<table border="1">
<tr>
<td>Bill NO</td>
<td>Product Code</td>
<td>Rate</td>
<td>Quantity</td>
<td>Amount</td>
</tr>
<%
set con=server.createobject("ADODB.Connection")
set rs=server.createobject("ADODB.Recordset")
con.open "rsbs"
sql="select * from billdetails where billno='"&request.querystring("bn")&"'"
rs.open sql,con
do until rs.eof
%>
<tr>
<td><%=rs.fields(0)%></td>
<td><%=rs.fields(1)%></td>
<td><%=rs.fields(2)%></td>
<td><%=rs.fields(3)%></td>
<td><%=rs.fields(4)%></td>
</tr>
<%
rs.movenext
loop
rs.close
con.close
%>
</table>

</div>

</div>
</body>
</html>