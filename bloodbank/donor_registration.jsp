<html>
<%@page import="java.sql.*,java.util.*"%>
<%
try{
String name=request.getParameter("r_name");
String blood=request.getParameter("r_blood");
String sex=request.getParameter("r_sex");
String age=request.getParameter("r_age");
String weight=request.getParameter("r_weight");
String phno=request.getParameter("r_fone");
String username=request.getParameter("r_username");
String password=request.getParameter("r_password");
String cpass=request.getParameter("r_cpassword");
String area=request.getParameter("r_area");
String district=request.getParameter("dis");
String state=request.getParameter("combo1");

 Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
  Connection con=DriverManager.getConnection("jdbc:odbc:bloodbank","scott","tiger");
	Statement stmt=con.createStatement();
	ResultSet rs=stmt.executeQuery("insert into donor_database values('"+name+"','"+blood+"','"+sex+"','"+age+"','"+weight+"','"+phno+"','"+username+"','"+password+"','"+cpass+"','"+state+"','"+district+"','"+area+"')");
	con.setAutoCommit(true);	
%>
<a href="home.html">home</a>	
<%
}
	catch(Exception e){
	System.out.println(e);
}
%>
</html>

