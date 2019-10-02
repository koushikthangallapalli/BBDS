<html>
<%@page import="java.sql.*"%>
<body>
<%
try{
String state=request.getParameter("combo1");
 Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
  Connection con=DriverManager.getConnection("jdbc:odbc:bloodbank","scott","tiger");
	Statement stmt=con.createStatement();
	ResultSet rs=stmt.executeQuery("select * from donor_database where state='"+state+"'");
 	int count=0;
	while(rs.next()){
count++;
out.println("post "+count);
 %>
<%=rs.getString(1)%>

<br/>
<%

}

}
catch(Exception ex)
{
%>
<font color="red" size="4" face="Times New Roman">
<%
out.println("unable to connect database");
}
%>
</html>


