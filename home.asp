<html>
<head>
<title>Retail Store Billing System
</title>
<script>
a=new Array(4)
a[0]="pic2.jpg"
a[1]="pic3.jpg"
a[2]="pic4.jpg"
a[3]="pic5.jpg"

i=0
function slideshow()
{
o=0
 i=(i+1)%4
 document.getElementById("i1").src=a[i]
}
o=0
function show()
{
o=o+.01
document.getElementById("i1").style.opacity=o
}
window.setInterval("slideshow()",6000)
window.setInterval("show()",30)

</script>
</head>
<body bgcolor="#501f3a" text="#F1F026">
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
<div style="height:170px;width:100%;background-color:#501f3a">
<h1 style="position:absolute;left:30%;top:5%;font-size:60px">Retail Store Billing System</h1>
</div>
<div style="float:left;height:535px;width:20%;background-color:#2d283e">
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
<div style="float:left;height:550px;width:80%;background-color:#570A0B">
<h1><center>!!!! Welcome <%=session("uid")%> !!!!</center><h1>
<img src="pic2.jpg" height="450"width="100%" id="i1">

</div>

</div>
</body>
</html>