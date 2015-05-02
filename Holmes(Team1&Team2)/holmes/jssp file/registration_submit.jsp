<%@ page import="java.sql.*" %>
<%
		Class.forName("com.mysql.jdbc.Driver").newInstance();
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/holmes","root","");
		Statement st = con.createStatement();
		String sql = "insert into holmes values(null, '"+request.getParameter("fname")+"','"+request.getParameter("lname")+"','"+request.getParameter("add")+"','"+request.getParameter("ph")+"','"+request.getParameter("email")+"',"+request.getParameter("pin")+");";
	
		st.executeUpdate(sql);
    	response.sendRedirect("thankyou.jsp");
		
%>
