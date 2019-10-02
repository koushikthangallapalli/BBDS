<html>
<%@page import="java.sql.*"%>
<head>
<div id="image1" style="position:absolute;top:0px;"><img src="images/image1.jpg" alt="line image" width="1007" height="100"></div>
<div id="image2" style="position:absolute; left:40px; top:0px; width:222px; height:155px;"><img src="images/image2.jpg"border=0 width=222 height=155></div>
<div id="image3" style="position:absolute; left:184px; top:10px; width:74px; height:84px;"><img src="images/image3.jpg"border=0 width=74 height=84></div>

<div id="Title text" style="position:absolute; left:284px; top:6px; width:294px; height:84px;"><font color="black" face="Times New Roman" SIZE="6"><u><b>Online Blood Donor Database System</b></u></font></div>
<div id="image4" style="position:absolute; left:894px; top:8px; width:125px; height:152px;"><img src="images/image4.gif"border=0 width=155 height=152></div>
<div id="image5" style="position:absolute; left:794px; top:3px; width:130px; height:27px;"><a href="donation.htm"><img src="images/image5.gif"border=0 width=130 height=27></a></div>

</head>
<%
String username=request.getParameter("username");

try
{
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
Connection con=DriverManager.getConnection("jdbc:odbc:bloodbank","scott","tiger");
Statement stmt=con.createStatement();
ResultSet rs=stmt.executeQuery("delete from donor_database where username='"+username+"'");

}
catch(Exception e)
{
System.out.println(e);
}

%>
<table  style="position:absolute; overflow:hidden; left:270px; top:240px;" align="center" border="0" cellpadding="15">


		<td><h1>record deleted
	</h1></td>
	<a style="position:absolute; overflow:hidden; left:270px; top:200px;" href="home.html"><font color="black"size="4" face="Times New Roman"><u>GO HOME</u></font></a>
		