<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page import="dto.Plant" %>
<%@ page import="java.sql.*" %>
<%@ include file = "dbconn.jsp"%>
<jsp:useBean id="productDAO" class="dao.PlantRepository" scope="session"/>
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
<script type="text/javascript" src="./resources/js/validation.js"></script>
<title>제품 등록</title>
</head>
<body>
	<fmt:setLocale value='<%=request.getParameter("language")%>'/>
	<fmt:bundle basename="bundle.message">
	<jsp:include page="menu.jsp"/>
	<header class="mainhead">
    <div class="img"></div>
        <div class="masthead-content text-center">
            <div class="container px-5">
                <h2 class="masthead-heading mb-0"><fmt:message key="title" /></h2> 
            </div>
    	</div>
    </header>

	<div class="container px-5">
		<div class="text-right">
			<a href="?language=ko">한국어</a>|<a href="?language=en" >English</a>
		</div>
		<br>
		<form name="newProduct" action="./processAddPlant.jsp"class="form-horizontal" method="post" enctype="multipart/form-data">
			<div class="form-group row">
				<label class="col-sm-2"><fmt:message key="p_id" /></label>
				<div class="col-sm-3">
					<input type="text" name="p_id" class="form-control">
				</div>
			</div>
			<br>
			<div class="form-group row">
				<label class="col-sm-2"><fmt:message key="p_name" /></label>
				<div class="col-sm-3">
					<input type="text" name="p_name" class="form-control">
				</div>
			</div>
			<br>
			<div class="form-group row">
				<label class="col-sm-2"><fmt:message key="pPrice" /></label>
				<div class="col-sm-3">
					<input type="text" name="pPrice" class="form-control">
				</div>
			</div>
			<br>
			<div class="form-group row">
				<label class="col-sm-2"><fmt:message key="p_level" /></label>
				<div class="col-sm-3">
					<input type="text" name="p_level" class="form-control">
				</div>
			</div>
			<br>
			<div class="form-group row">
				<label class="col-sm-2"><fmt:message key="p_period" /></label>
				<div class="col-sm-3">
					<input type="text" name="p_period" class="form-control">
				</div>
			</div>
			<br>
			<div class="form-group row">
				<label class="col-sm-2"><fmt:message key="p_description" /></label>
				<div class="col-sm-5">
					<textarea name="p_description" cols="50" rows="2" class="form-control"></textarea>
				</div>
			</div>
			<br>
			<div class="form-group row">
				<label class="col-sm-2"><fmt:message key="p_category" /></label>
				<div class="col-sm-3">
					<input type="text" name="p_category" class="form-control">
				</div>
			</div>
			<br>
			<div class="form-group row">
				<label class="col-sm-2"><fmt:message key="p_stock" /></label>
				<div class="col-sm-3">
					<input type="text" name="p_stock" class="form-control">
				</div>
			</div>
			<br>
			<div class="form-group row">
				<label class="col-sm-2"><fmt:message key="p_filename" /></label>
				<div class="col-sm-5">
					<input type="file" name="p_filename" class="form-control">
				</div>
			</div>
			<br>
			<div class="form-group row">
				<div class="col-sm-offset-2 col-sm-10">
					<input type="button" class="btn btn-primary" value="<fmt:message key="button" />" onclick="CheckAddProduct()">
				</div>
			</div>
		</form>
	</div>
	<jsp:include page="footer.jsp"/>
	</fmt:bundle>
</body>
</html>