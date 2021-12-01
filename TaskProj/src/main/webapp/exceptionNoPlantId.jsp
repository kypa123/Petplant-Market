<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link href="resources/css/styles.css" rel="stylesheet" />
<meta charset="UTF-8">
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
	<%@include file="menu.jsp"%>
	
	<header class="mainhead">
        <div class="img"></div>
            <div class="masthead-content text-center">
                <div class="container px-5">
                    <h1 class="masthead-heading mb-0">해당하는 꽃은 없습니다</h1>
                </div>
            </div>
</header>
	
	
	<main role="main">
	<div class="container">
		<div class="text-center">
			<p><%=request.getRequestURL()%>?<%=request.getQueryString()%>
			<p><a href="products.jsp" class="btn btn-secondary"> 상품목록으로</a>
		</div>
	</div>
	<%@ include file="footer.jsp"%>
	</main>
</body>
</html>