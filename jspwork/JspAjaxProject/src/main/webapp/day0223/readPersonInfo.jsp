<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<link href="https://fonts.googleapis.com/css2?family=Do+Hyeon&family=East+Sea+Dokdo&family=Nanum+Gothic+Coding&family=Nanum+Pen+Script&display=swap" rel="stylesheet">

<script src="https://code.jquery.com/jquery-3.6.3.js"></script>
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
 
</head>
<body>
 <h2>jpuery의 ajax함수 이용해서 person(xml)_db읽어오기</h2>
 <button type="button" class="btn btn-success" id="btn1">persontoxml 읽기</button>
  <h2>jpuery의 ajax함수 이용해서 info(jason)_db읽어오기</h2>
   <button type="button" class="btn btn-info" id="btn2">info 읽기</button>
   
   <div id="show"></div>
  
 <script type="text/javascript">
 
 $("#btn1").click(function(){
		 $.ajax({
			 type:"get",
			 url:"persontoxml.jsp",
			 dataType:"xml"
			 success:function(res){
				 
				 var s="";
				 
				 $(res).find("person").each(function(i,ele){
					var n=$(ele);
					
					s+="<div class='alert alert-info' style='width:400px;'>";
					s+="No:"+n.attr("num")+",";
					s+="Name:"+n.find("name").text()+"<br>";
					s+="age:"+n.find("age").text()+"<br>";
					s+="hp:"+n.find("hp").text()+"<br>";
					s+="</div>
					
				 });
				 $("#show").html(s);
			 }
			 
		 });
 });
 
 
 
 $("#btn2").click(function(){
	 
 });
 
 
 </script>
</body>
</html> 