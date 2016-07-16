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
		<form id="searchForm" method="post" action="">
			<input type="hidden" name="1" value="阿萨德法师打发士大夫"/>
			<input type="hidden" name="2" value="阿斯顿发生地方"/>
			<input type="hidden" name="3" value="去玩儿去玩儿"/>
			<input type="hidden" name="4" value="去玩儿去玩儿"/>
			<input type="hidden" name="5" value="1231231231-11119999999999999999999911111-9999999999999991111"/>
			<input type="hidden" name="6" value="123123123"/>
			<input type="hidden" name="7" value="123123123"/>
			<input type="hidden" name="8" value="去玩儿去玩儿"/>
			<input type="hidden" name="9" value="17777777777777723-12319999999999999999-23"/>
			<input type="hidden" name="10" value="12312312311111111111111"/>
			<input type="hidden" name="11" value="12312312311111111111"/>
			<input type="hidden" name="12" value="去玩儿去444444444444444444444玩儿"/>
			<input type="hidden" name="13" value="12312rtrrrrrrrrrrrrrrrrrrrrrrrrrrr3123"/>
			<input type="hidden" name="14" value="123123123"/>
			<input type="hidden" name="15" value="去玩儿去玩儿"/>
			<input type="hidden" name="16" value="去玩儿去玩儿阿斯顿发生地方"/>
		</form>
		<span>当前IP:<%=request.getRemoteAddr() %></span>
		<button type="button" name="myAjax" onclick="myAjax();">测试ajax长度</button>
		<script>
			function myAjax(){
//				var dataArr = new Array();
//				for(var i = 0; i < 1000000; i++){
//					dataArr.push(i);
//				}
//				var jsonData = JSON.stringify(dataArr);
//				console.info(jsonData);
				var data = $("#searchForm").serialize();
				$.ajax({
					url:"ajax/serialize",
					type:"POST",
					async:true,
					timeout:3000,
					data:data,
					success:function(data, status){
						console.info(data);
						console.info(status);
					},
					error:function(xhr, textStatus, errorThrown){
						console.info(textStatus);
						console.info(errorThrown)
					}
				})
			}
		</script>
	</body>
</html>
