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
<title>LoginPage</title>
</head>
<body>
	<%request.setCharacterEncoding("utf-8");%>
<jsp:include page="menu.jsp"/>


<header class="mainhead">
        <div class="img"></div>
            <div class="masthead-content text-center">
                <div class="container px-5">
                    <h1 class="masthead-heading mb-0">로그인</h1>
                </div>
            </div>
</header>

<div class="container" align="center">
	<div class="col-md-4 cold-md-offset-4">
		<%
			String error = request.getParameter("error");
			if(error != null){
				out.println("<div class='alert alert-danger'>");
				out.println("아이디와 비밀번호를 확인해주세요!");
				out.println("</div>");
			}
		%>
		
		<form class="form-signin" action="loginProcess.jsp" method="post">
			
			<div class="form-group">
				<label for="inputUserId" class="sr-only">아이디</label>
				<input type="text" class="form-control" placeholder="아이디" name='j_userid' required autofocus>
			</div>
			<div class="form-group">
				<label for="inputPassword" class="sr-only">비밀번호</label>
				<input type="password" class="form-control" placeholder="비밀번호" name='j_password' required>
			</div>
			
			<div class="form-group">
				<button class="btn btn btn-lg btn-light btn-block" type="submit">로그인</button>
				<button class="btn btn btn-lg btn-light btn-block" onclick="signup.jsp">회원가입</button>
			</div>
		</form>
	</div>
	<jsp:include page="footer.jsp"/>
</div>
</body>
</html>