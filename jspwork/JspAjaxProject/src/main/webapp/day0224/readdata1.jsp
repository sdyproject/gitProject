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
 <style type="text/css">
 div.box{
 	float: left;
 	margin-left: 20px;
 	border: 2px soild gray;
 	
 }
 </style>
 <script type="text/javascript">
 $(function () {
	$("#btn1").click(function () {
		
	});
	
	
	
$("#btn2").click(function () {
		
	$.ajax({
		type:"get",
		url:"xmldata1.xml",
		dataType:"xml",
		success:function(res){
		
			var s="<h3 class='alert alert-info'>xml데이터 출력</h3>";
			
			$(res).find("data").each(function(i,ele){
				
				var row=$(ele);
				s+="<div class='alert alert-warning box'>";
				s+="아이디:" +row.attr("id")+"<br>";
				s+="이름:"+row.attr("name")+"<br>";
				s+="제목:"+row.find("subject").text()+"<br>";
				var imgname=row.find("photo").text();
				s+="이미지명:"+imgname+"<br>";
				s+="<img src='"+imgname+"'>;
				s+="</div>";
			});
			$("#show").html(s);
		}
		
	});
	});
	
	
});
 
 </script>
</head>
<body>
<button class="btn btn-info" id="btn1" type="button">json데이터 읽기</button>
<button class="btn btn-info" id="btn2" type="button">xml데이터 읽기</button>


<div id="show" class="alert alert-default"></div>
</body>
</html> 