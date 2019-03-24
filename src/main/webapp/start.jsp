<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>欢迎</title>
</head>
<script type="text/javascript">
	function loc(i){
		if(i == 1){
			location.href="login.jsp";
		}else{
			location.href="adminLogin.jsp";
		}
	}
</script>
<body>
<h2 style="margin: 0 auto; text-align: center;">欢迎访问XX系统</h2>
<div style="margin: 0 auto; width: 500px; height: 300px;">
	<button style="width: 200px; height: 120px;" onclick="loc(1)">我是员工</button>
	<button style="width: 200px; height: 120px;" onclick="loc(2)">我是管理员</button>
</div>
</body>
</html>