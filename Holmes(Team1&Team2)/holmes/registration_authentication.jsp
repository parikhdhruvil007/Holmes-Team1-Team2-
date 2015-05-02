<%@ page import="java.sql.*" %>

<%
		Class.forName("com.mysql.jdbc.Driver").newInstance();
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/holmes","root","");
		Statement st = con.createStatement();
		String sql = " select * from holmes where Phone_Number='"+request.getParameter("ph")+"' and PIN='"+request.getParameter("pin")+"'; ";
		ResultSet rs = st.executeQuery(sql);
		//out.println(request.getParameter("ph"));
    	if(rs.next())
		{
			//out.println("COrrect");
			session.setAttribute("fname",rs.getString("First_Name"));
			//session.setAttribute("type",rs.getString("user_type_id"));
			if(rs.getString("user_type_id").equals("1")){
				response.sendRedirect("admin.jsp");
			}else{
			response.sendRedirect("status.jsp");
			}
			
		}		
		else
		{
			//out.println("Wrong");
			
			response.sendRedirect("error.jsp");
			
		}
		
%>