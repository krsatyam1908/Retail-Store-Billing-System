<html>
<head>
<title>Retail Store Billing System
</title>
<script>
function product()
{
f1.t6.value=pn[f1.t5.selectedIndex]
f1.t7.value=rate[f1.t5.selectedIndex]
f1.t8.value=st[f1.t5.selectedIndex]
}
function amt()
{
if(parseInt(f1.t9.value)>parseInt(f1.t8.value))
{
alert("quantity must be less than stock available")
f1.t9.value=0
f1.t10.value=0
}
else
{
f1.t10.value=parseFloat(f1.t7.value)*parseFloat(f1.t9.value)
}
}
function total()
{
f1.t11.value=parseFloat(f1.t11.value)+parseFloat(f1.t10.value)
}
function discount()
{
 tot=parseFloat(f1.t11.value)
 if(tot<1000)
 d=tot*.05
 if(tot<10000&&tot>=1000)
 d=tot*.10
 if(tot>=10000)
 d=tot*.20
f1.t12.value=d
}

</script>
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
<h1>Bill of Customer</h1>
<table border="1">
<tr>
<td>Bill NO</td>
<td>Bill Date</td>
<td>Customer Code</td>
<td>Total Amount</td>
<td>Discount</td>
<td>Net Amount</td>
</tr>

<%
set con=server.createobject("ADODB.Connection")
set rs=server.createobject("ADODB.Recordset")
con.open "rsbs"
sql="select * from bill where billno='"&session("bno")&"'"
rs.open sql,con
do until rs.eof
%>
<tr>
<td><%=rs.fields(0)%></td>
<td><%=rs.fields(1)%></td>
<td><%=rs.fields(2)%></td>
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
<h1>Bill Details</h1>
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
sql="select * from billdetails where billno='"&session("bno")&"'"
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
<input type="button" value="print bill" onclick="window.print()"> 
</div>

</div>
</body>
</html>