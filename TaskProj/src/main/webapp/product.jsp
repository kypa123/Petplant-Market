<%@page import="dao.PlantRepository"%>
<%@page import="dto.Plant"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page errorPage="exceptionNoPlantId.jsp"%>
<!DOCTYPE html>
<html>
<style>
header.mainhead .img{
  padding-top: calc(7rem + 72px);
  padding-bottom: 7rem;
  background-image: url('resources/images/homegarden.jpg');
  background-repeat: no-repeat 0%;
  background-size: cover;
  	opacity: 0.5;
  	position:absolute;
  	top:0px;
  	left:0px;
  	right:0px;
  	bottom:0px;
  	z-index: -1;
}
</style>
<head>
<link href="resources/css/styles.css" rel="stylesheet" />
<title>제품설명</title>
</head>    
<body>
<jsp:include page="menu.jsp"/>
	<header class="mainhead">
        <div class="img"></div>
            <div class="masthead-content text-center">
                <div class="container px-5">
                    <h1 class="masthead-heading mb-0">상세정보</h1>
                </div>
            </div>
	</header>
	
	<%request.setCharacterEncoding("utf-8");
		String getid = request.getParameter("id");
		%>
	<%@include file="dbconn.jsp"%>
	<% 
		
		Plant plant = new Plant();
		int index;
	
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "select * from plant";
		pstmt = conn.prepareStatement(sql);
		rs = pstmt.executeQuery();
		
		while(rs.next()){
			if(rs.getString("p_id").equals(getid)){
				
				plant.setName(rs.getString("p_name"));
				plant.setFilename(rs.getString("p_filename"));
				plant.setDescription(rs.getString("p_description"));
				plant.setLevel(rs.getString("p_level"));
				plant.setCategory(rs.getString("p_category"));
				plant.setPeriod(rs.getInt("p_period"));
				plant.setPrice(rs.getInt("p_price"));
				break;
			}
		}
		%>
	<div class="container px-5">
   	 	<div class="row gx-5" align="center">
        
        <div class="col-lg-6">
        	<img src="./resources/images/<%=plant.getFilename()%>" class="img rounded-circle" style="pix:100%"/>
        	<h4><%=plant.getCategory()%>, <%=plant.getName()%></h4><p>
        	<p><%=plant.getDescription()%>
        	<p>난이도: <%=plant.getLevel()%>
        	<p>물 주기: <%=plant.getPeriod()%>
        	<p><%=plant.getPrice()%>원</p>
        	<hr>
        </div>
        
		<%
       if(rs!=null)
       			rs.close();
       			if(pstmt != null)
       			pstmt.close();
       			if(conn!= null)
       			conn.close();
       %>
    </div>
</div>
 
<%@include file="footer.jsp"%>
</body>
</html>
