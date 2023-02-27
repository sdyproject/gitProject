<%@page import="mysql.db.dbConnect"%>
<%@page import="org.json.simple.JSONObject"%>
<%@page import="org.json.simple.JSONArray"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%
dbConnect db=new dbConnect();
	Connection conn=db.getConnection();
	Statement stmt=null;
	ResultSet rs=null;
	
	String sql="select * from jshop order by num";
	
	try{
		stmt=conn.createStatement();
		rs=stmt.executeQuery(sql);
		
		JSONArray arr=new JSONArray();
		
		while(rs.next())
		{
			String num=rs.getString("num");
			String sangpum=rs.getString("sangpum");
			String color=rs.getString("color");
			String price=rs.getString("price");
			String imagename=rs.getString("imagename");
			
			JSONObject ob=new JSONObject();
			ob.put("num", num);
			ob.put("sangpum", sangpum);
			ob.put("color", color);
			ob.put("price", price);
			ob.put("imagename", imagename);
			
			//array에 추가
			arr.add(ob);
			
		}%>
	
		<%=arr.toString() %>	
	<%}catch(SQLException e){
		
	}
	
%>
