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
	<img alt="" src="../img/01.png">
	<br>
	<button type="button" class="btn btn-info" id="btn1">data.xml읽기</button>
	<button type="button" class="btn btn-danger" id="btn2">data.json읽기</button>
	<br>
	<div id="result">결과</div>
	
	<script type="text/javascript">
	
	$("#btn1").click(function () {
		$("#result").empty();
		
		//xml읽기 
		$.ajax({
			type: "get",
			url: "data1.xml",
			dataType="xml",
			success:function(res){
				
				var s ="City:" +$(data).find("name").attr("city")+"<br>";
				s+= "Name:"+$(data).find("name").text()+"<br>";
				s+= "Age:"+$(data),find("age").text()+"<br>";
				
				
				$("#result").append(s);
			},
			statusCode: {
				404:function(){
					alrert("xml파일을 찾을수 없어요");
				},
				500:function(){
					alrert("서버오류");
				}
				
			}
		});
		
	});
	
	//json읽기
	$("#btn2").click(function(){
		$("#result").empty();
		
		
		
		$.ajax({
			
			type: "get",
			url: "data1.json",
			dataType:"json",
			success:function(res){
				 
				var s="";
				s+="이름:" +data.name+"<br>";
				s+="주소:" +data.addr+"<br>";
				s+="점수:" +data.score+"<br>";
				
				$("#result").append(s);
				
				statusCode: {
					404:function(){
						alrert("xml파일을 찾을수 없어요");
					},
					500:function(){
						alrert("서버오류");
					}
			}
			
		});
	});
	
	
	
	</script>
</body>
</html> 