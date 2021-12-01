<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="dao.PlantRepository"%>
<%@ page import="dto.Plant"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		String id = request.getParameter("id");
		if(id== null || id.trim().equals("")){
			response.sendRedirect("products.jsp");
			return;
		}
		
		
		PlantRepository dao = PlantRepository.getInstance();
		
		Plant plant = dao.getPlantById(id);
		if(plant == null){
			response.sendRedirect("exceptionNoPlantId.jsp");
		}
		
		ArrayList<Plant> goodsList = dao.getAllPlants();
		Plant goods = new Plant();
		for(int i=0; i<goodsList.size(); i++){
			goods = goodsList.get(i);
			if(goods.getPlantId().equals(id))
				break;
		}
		
		
		ArrayList<Plant> list = (ArrayList<Plant>) session.getAttribute("cartlist");
		if(list == null){
			list = new ArrayList<Plant>();
			session.setAttribute("cartlist", list);
		}
		
		int cnt = 0;
		
		Plant goodsQnt = new Plant();
		
		for(int i=0; i<list.size(); i++){
			goodsQnt = list.get(i);
			if(goodsQnt.getPlantId().equals(id)){
				cnt++;
				int orderQuantity = goodsQnt.getQuantity() +1;
				goodsQnt.setQuantity(orderQuantity);
			}
		}
		
		if(cnt == 0){
			goods.setQuantity(1);
			list.add(goods);
		}
		
		response.sendRedirect("product.jsp?id=" + id);
	%>
</body>
</html>