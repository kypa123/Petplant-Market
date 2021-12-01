<%@page import="dto.Plant"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="resources/css/styles.css" rel="stylesheet" />
    <%
    String cartId = session.getId();%>
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="menu.jsp" />
	<div class="jumbotron">
		<div class="jumbotron">
			<h1 class="display-3">장바구니</h1>
		</div>
	</div>
	<div class="container">
		<div class="row">
			<table width="100%">
				<tr>
					<td align="right"><a href="#" class="btn btn-success">
					주문하기
					</a></td>
				</tr>
			</table>
		</div>
		<div style="padding-top: 50px">
			<table class="table table-hover">
				<tr>
					<th>상품</th>
					<th>가격</th>
					<th>수량</th>
					<th>소계</th>
					<th>비고</th>
				</tr>
				<%
					int sum=0;
					ArrayList<Plant> cartList = (ArrayList<Plant>)session.getAttribute("cartlist");
					if(cartList == null)
						cartList = new ArrayList<Plant>();
						for(int i=0; i<cartList.size();i++){
							Plant plant = cartList.get(i);
							int total = plant.getPrice() * plant.getQuantity();
							sum = sum+total;
						
				%>
				<tr>
					<td><%=plant.getPlantId()%> - <%=plant.getName()%></td>
					<td><%=plant.getPrice()%></td>
					<td><%=plant.getQuantity()%></td>
					<td><%=total%></td>
					<td><a href="./removeCart.jsp?id=<%=plant.getPlantId()%>" class="badge badge-danger">삭제</a></td>
				</tr>
				<%
				}%>
				<tr>
					<th></th>
					<th></th>
					<th>총액</th>
					<th><%=sum%></th>
					<th></th>
				</tr>
			</table>
			<a href="./products.jsp" class="btn btn-secondary">&raquo; 쇼핑 계속하기</a>
		</div>
		<hr>
	</div>
	<jsp include page="footer.jsp"/>
</body>
</html>