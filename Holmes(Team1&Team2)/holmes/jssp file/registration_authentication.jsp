<%@ page import="java.sql.*" %>

<%
		Class.forName("com.mysql.jdbc.Driver").newInstance();
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/holmes","root","");
		Statement st = con.createStatement();
		String sql = " select * from holmes where ph='"+request.getParameter("PhNo")+"' and pin='"+request.getParameter("pin")+"'";
		
		ResultSet rs = st.executeQuery(sql);
    	if(rs.next())
		{
			//out.println("COrrect");
			//session.setAttribute("username",request.getParameter("username"));
			//session.setAttribute("type",rs.getString("user_type_id"));
			response.sendRedirect("status.jsp");
		}		
		else
		{
			//out.println("Wrong");
			
			response.sendRedirect("error.jsp");
			
		}
		
%>