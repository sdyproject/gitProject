<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="mysql.db.dbConnect"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

 <%
 dbConnect db=new dbConnect();
 Connection conn=db.getConnection();
 PreparedStatement pstmt=null;
 ResultSet rs=null;
 
 String sql="select * from info order by num";
 
 String s="[";
 
 try{
 pstmt=conn.prepareStatement(sql);
 rs=pstmt.executeQuery();
 
 while(rs.next())
 {
	 String num=rs.getString("num");
	 String name=rs.getString("name");
	 String hp=rs.getString("hp");
	 String age=rs.getString("age");
	 String photo=rs.getString("photo");
	 
	 s+="{";
	 s+="{";
		s+= "\"num\":"+num+",\"name\":\""+name+"\",\"hp\":\""+hp;  
		s+="\",\"age\":"+age+",\"photo\":\""+photo+"\"";
		s+="},"; //"num":num
			 

 }
	 
	 s=s.substring(0,s.length()-1);
	 
 }catch(Exception e){
	 
 }finally{
	 db.dbClose(rs, pstmt, conn);
 }
 s+="]";
 %>
 <%=s%>
 