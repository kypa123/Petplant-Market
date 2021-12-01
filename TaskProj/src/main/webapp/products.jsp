<%@page import="dao.PlantRepository"%>
<%@page import="dto.Plant"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="resources/css/styles.css" rel="stylesheet"/>
<title>Insert title here</title>
<script type="text/javascript">
	function addToCart(){
		if(confirm("상품을 장바구니에 추가하시겠습니까?")){
			document.addForm.submit();
		}
		else{
			document.addForm.reset();
		}
	}
</script>
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
</head>
<body>
	<jsp:include page="menu.jsp"/>
	<header class="mainhead">
        <div class="img"></div>
            <div class="masthead-content text-center">
                <div class="container px-5">
                    <h1 class="masthead-heading mb-0">제품 정보</h1>
                </div>
            </div>
	</header>
			<div class="container px-5">
                <div class="row gx-5 align-items-center">
                	<%@include file="dbconn.jsp"%>
                	<%
                		request.setCharacterEncoding("utf-8");
                		PreparedStatement pstmt = null;
                		ResultSet rs = null;
                		String sql = "select * from plant";
                		pstmt = conn.prepareStatement(sql);
                		rs = pstmt.executeQuery();
                		while(rs.next()){
                			String id = rs.getString("p_id");
                	%>
                   		<div class="col-lg-6">
                   			<div class="p-5" align="center">
                       		<img class="img rounded-circle" src="./resources/images/<%=rs.getString("p_filename")%>"
                        		style="pix:80%" /></div>
                        	<h3 align=center><%=rs.getString("p_name")%></h3>
                        	<p align=center><%=rs.getString("p_description")%>
                        	<p align=center>가격: <%=rs.getInt("p_price")%>원
                        	<p align=center>난이도: <%=rs.getString("p_level")%>
                       		<p>
                       		<div align=center>
                        	<a href="./product.jsp?id=<%=rs.getString("p_id")%>"
                        		class="btn btn-info" role="button">상세정보</a>
                       		<a href="product.jsp.addCart" class="btn btn-success" role="button">구매하기</a>
                       		</div>
                       	</div>
                    </div>
                    <%}
       				if(rs!=null)
       			rs.close();
       			if(pstmt != null)
       			pstmt.close();
       			if(conn!= null)
       			conn.close();
  				%>
                </div>
            
       
        <jsp:include page="footer.jsp"/>
</body>
</html>