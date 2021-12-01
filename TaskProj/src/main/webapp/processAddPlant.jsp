<%@page import="java.util.concurrent.Flow.Publisher"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page import="dto.Plant"%>
<%@ page import="dao.PlantRepository"%>
<%@page import="com.oreilly.servlet.*"%>
<%@page import="com.oreilly.servlet.multipart.*"%>
<%@page import="java.util.*"%>
<%@page import="java.sql.*"%>
<%@include file="dbconn.jsp"%>
<%
	request.setCharacterEncoding("utf-8");
	
	String filename= "";
	String realFolder = "/Users/wallcraft/Documents/exercise";
	String encType="utf-8";
	int maxSize=5*1024*1024;
	
	MultipartRequest multi = new MultipartRequest(request,realFolder, maxSize, encType, new DefaultFileRenamePolicy());


	String plantId=multi.getParameter("p_id");
	String name=multi.getParameter("p_name");
	String pPrice=multi.getParameter("pPrice");
	String level=multi.getParameter("p_level");
	String period=multi.getParameter("p_period");
	String description=multi.getParameter("p_description");
	String category=multi.getParameter("p_category");
	String unitsInStock=multi.getParameter("p_stock");
	String p_filename=multi.getParameter("p_filename");
	
	Integer price;
	
	if(pPrice.isEmpty())
		price=0;
	else price=Integer.valueOf(pPrice);
	
	long stock;
	if(unitsInStock.isEmpty())
		stock=0;
	else stock=Long.valueOf(unitsInStock);
	
	
	int pPeriod;
	if(unitsInStock.isEmpty())
		pPeriod=0;
	else pPeriod=Integer.valueOf(period);
	
	Enumeration files = multi.getFileNames();
	String fname = (String) files.nextElement();
	String fileName = multi.getFilesystemName(fname);
	
	PreparedStatement pstmt = null;
	String sql = "insert into product values(?,?,?,?,?,?,?,?,?)";
	pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, plantId);
	pstmt.setString(2, name);
	pstmt.setInt(3, price);
	pstmt.setString(4, description);
	pstmt.setString(5, category);
	pstmt.setString(6, level);
	pstmt.setInt(7, pPeriod);
	pstmt.setLong(8, stock);
	pstmt.setString(9, p_filename);
	pstmt.executeUpdate();
	
	if(pstmt!=null)
		pstmt.close();
	if(conn!=null)
		conn.close();
	response.sendRedirect("products.jsp");
%>