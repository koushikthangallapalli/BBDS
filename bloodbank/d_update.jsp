<html>
<head>
<title>donor record updation</table>
</head>
<body>
<%@page import="java.sql.*"%>
<% 
String d="hai";
String c="cse";
String name="nani";
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
  Connection con=DriverManager.getConnection("jdbc:odbc:bloodbank","scott","tiger");
Statement stmt=con.createStatement( ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);
ResultSet rs=stmt.executeQuery("update student set course='"+d+"' where course='"+c+"' and name='"+name+"'");
	out.println("successfull");
%>
</body>
</html>



	
