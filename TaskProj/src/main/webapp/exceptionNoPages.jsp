<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="resources/css/styles.css" rel="stylesheet"/>
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
<title>Insert title here</title>
</head>
<body>
<jsp:include page="menu.jsp"/>
<header class="mainhead">
        <div class="img"></div>
       	 <div class="container px-5">
                    <h1 class="masthead-heading mb-0">요청하신 페이지는 존재하지 않습니다</h1>
                </div>
</header>
<div class="container">
	<div class="text-center">
		<p><%=request.getRequestURL() %>?<%=request.getQueryString() %>
		<p> <a href="products.jsp" class="btn btn-secondary"> 상품 목록 &raquo;</a>
		
	</div>
</div>
</body>

</html>