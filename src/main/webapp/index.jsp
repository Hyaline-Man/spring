<%@ page language="java" contentType="text/html; charset=UTF-8"  
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd"> 
<html>
	<head>
		<title>欢迎</title>
		<script src="<%=request.getContextPath() %>/js/jquery-1.12.1.js" type="text/javascript"></script>
	</head>
	<body>
		<h2>Hello World!</h2>
		<form action="login">
			用户名:<input id="username" name="username" type="text"></input><br>
			密码:<input id="password" name="password" type="password"></input><br>
			<input type="submit" value="提交"></input>
		</form>
		<span>当前IP:<%=request.getRemoteAddr() %></span>
		<button type="button" name="myAjax" onclick="myAjax();">测试ajax长度</button>
		<script>
			function myAjax(){
				var dataArr = new Array();
				for(var i = 0; i < 10000; i++){
					dataArr.push(i);
				}
				var jsonData = JSON.stringify(dataArr);
				console.info(jsonData);
				$.ajax({
					url:"<%=request.getContextPath()%>/ajaxJson",
					type:"post",
					data:{
						jsonData : jsonData
					},
					success:function(){
						console.info("asdfasdf");
					}
				})
			}
		</script>
	</body>
</html>
