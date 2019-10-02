<html>
<%@ page import="java.sql.*, java.sql.DriverManager,java.sql.ResultSet,java.io.*" %>
<%
try
{
int Count=0;
String username=request.getParameter("username");
String area=request.getParameter("area");
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
Connection con = DriverManager.getConnection("jdbc:odbc:bloodbank","scott","tiger");
Statement stt = con.createStatement();
 ResultSet rst = stt.executeQuery("update donor_database set area='"+area+"' where username='"+username+"'");    
con.setAutoCommit(true);  
while(rs.next()!=false)
{
out.println("succesfully updated...!");
%>
<%
   }

}

catch(Exception e)
{
System.out.println(e);
}

%>
</html>




