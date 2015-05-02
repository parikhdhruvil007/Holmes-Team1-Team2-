<%@ page import="java.sql.*" %>
<%
		Class.forName("com.mysql.jdbc.Driver").newInstance();
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/holmes","root","");
		Statement st = con.createStatement();
		
		st.executeUpdate(" delete from status where Id='"+request.getParameter("id")+"' ");
    	
			 response.sendRedirect("admin.jsp");
		
		
		
%>