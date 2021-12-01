<%@page import="java.util.ArrayList"%>
<%@page import="dto.Plant"%>
<%@page import="dao.PlantRepository"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		String id= request.getParameter("id");
	if(id == null || id.trim().equals("")){
		response.sendRedirect("products.jsp");
		return;
	}
	
	PlantRepository dao = PlantRepository.getInstance();
	
	Plant book = dao.getPlantById(id);
	
	if(book == null){
		response.sendRedirect("exceptionNoBookId.jsp");
	}
	ArrayList<Plant> cartList = (ArrayList<Plant>)session.getAttribute("cartlist");
	Plant goodsQnt = new Plant();
	for(int i=0; i<cartList.size();i++){
		goodsQnt = cartList.get(i);
		if(goodsQnt.getPlantId().equals(id)){
			cartList.remove(goodsQnt);
		}
	}
	
	response.sendRedirect("cart.jsp");
	%>
</body>
</html>