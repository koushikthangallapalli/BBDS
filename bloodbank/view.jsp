<%@ page import="java.sql.*"%>
<%
try
{
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
Connection con=DriverManager.getConnection("jdbc:odbc:bloodbank","scott","tiger");
String query = "select * from donor_database where username='+username'";
Statement st = con.createStatement();
ResultSet rs = st.executeQuery(query);
int count=0;
while(rs.next())
{
count++;
out.println("post "+count);
 %>
<%=rs.getString(1)%>
<br/>
<%
}
}
catch(Exception e)
{
System.out.println(e);
}
%>