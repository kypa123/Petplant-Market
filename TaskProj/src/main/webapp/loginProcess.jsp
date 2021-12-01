<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
		
		<%	request.setCharacterEncoding("utf-8");
				String user_id=request.getParameter("j_userid");
				String user_pswd = request.getParameter("j_password");
				
				
			Connection conn = null;
	
			try{
			String url = "jdbc:mysql://localhost:3306/petplantmarket";
			String user="root";
			String password="godwjdgkreh95!";
			
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(url,user,password);
			}
			catch(SQLException ex){
			out.println("데이터베이스 연결에 실패했습니다<br>");
			out.println("SQLException: "+ ex.getMessage());
			}
			
			
				if(user_id.equals("admin")&&user_pswd.equals("admin1234")){
					session.setAttribute("userID","user_id");
					session.setAttribute("userPW","user_pswd");
				}
				
              		PreparedStatement pstmt = null;
              		ResultSet rs = null;
            		String sql = "select * from user";
                	pstmt = conn.prepareStatement(sql);
                	rs = pstmt.executeQuery();
                	while(rs.next()){
                		if(rs.getString("usr_id").equals(user_id)&&rs.getString("usr_pswd").equals(user_pswd)){
                			session.setAttribute("userID","user_id");
                			session.setAttribute("userPW","user_pswd");
                		}
                	}
                		String sessioncheck = (String)session.getAttribute("userID");
                		if(rs!=null)
               			rs.close();
               			if(pstmt != null)
               			pstmt.close();
               			if(conn!= null)
               			conn.close();	
                		
                		
                		
                		if(sessioncheck==null)
                			response.sendRedirect("login_failed.jsp");
                		else{%>
                			Response.Write("<script>alert('로그인 성공! 환영합니다,<%=sessioncheck%>님!');</script>");
                			<% 
                			response.sendRedirect("welcome.jsp");
                		}
                	
                	
               		
               	%>
</body>
</html>