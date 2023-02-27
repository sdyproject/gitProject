<%@page import="org.json.simple.JSONObject"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%

//front에서 보낸 데이타 읽어오기
String photono= request.getParameter("photono");
String photostu= request.getParameter("photostu");
String java= request.getParameter("java");
String oracle= request.getParameter("oracle");
String spring= request.getParameter("spring");

//총점
int tot=Integer.parseInt(java)+Integer.parseInt(oracle)+Integer.parseInt(spring);

//평균
double avg=tot/3.0;

//frontㅎㅇ태로만들어서 front로 보내기 
JSONObject ob=new JSONObject();

ob.put("photo","../img/"+photono+".png");
ob.put("stu","photostu");
ob.put("tot","tot");
ob.put("avg","avg");




%>
<%=ob.toString()%>