<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="database.DBCon"%>
<%@page import="java.sql.Connection"%>
<%
 String empid = request.getParameter("empid");
 String mobileNumber = request.getParameter("mobileNumber");
 String  name = request.getParameter("name");
 String  hid = request.getParameter("hid");

 String dep = request.getParameter("dep");
 String email =request.getParameter("email");
 Connection con = DBCon.getConnection();
 Statement st = con.createStatement();
  


 int a =st.executeUpdate("update hod set empid='"+empid+"',mobile='"+mobileNumber+"',name='"+name+"',branch='"+dep+"',email='"+email+"' where hid='"+hid+"'");
 if(a>0)
 {
		out.print("<script>alert(\"HOD Updated Sucess\"); window.location.replace(\"vewHOD.jsp\");</script>");
 }else{
		out.print("<script>alert(\"HOD Updated Fails\"); window.location.replace(\"vewHOD.jsp\");</script>");

 }
 
  
 %>