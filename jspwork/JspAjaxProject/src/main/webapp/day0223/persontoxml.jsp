<?xml version="1.0" encoding="UTF-8"?>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="mysql.db.dbConnect"%>
<%@ page language="java" contentType="text/xml; charset=utf-8"
    pageEncoding="utf-8"%>
<date>
<%

	dbConnect db=new dbConnect();
Connection conn=db.getConnection();
PreparedStatement pstmt=null;
ResultSet rs = null;

String sql="select * from person order by num";

try{
	pstmt=conn.prepareStatement(sql);
	
	rs=pstmt.executeQuery();
	
	while(rs.next())
	{
		String num=rs.getString("num");
		String name=rs.getString("name");
		int age=rs.getInt("age");
		String hp=rs.getString("hp");
		%>
		<person num="<%=num%>">
		<name><%=name %></name>
		<age><%=age %></age>
		<hp><%=hp%></hp>
		</person>
	<%}
	
}catch(Exception e){
	
}finally{
	db.dbClose(rs, pstmt, conn);
}
%>
</date>