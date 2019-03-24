<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>管理员登录</title>

<link href="css/main.css" rel="stylesheet" type="text/css" />

</head>
<body>

<div class="login">
    <div class="box png">
		<div class="logo png"></div>
		<div class="input">
			<div class="log">
				<form action="admin/login.html" method="post" onsubmit="return check()">
				<div class="name">
					<label>用户名</label><input type="text" class="text" id="username" placeholder="用户名" name="username" tabindex="1">
				</div>
				<div class="pwd">
					<label>密　码</label><input type="password" class="text" id="pass" placeholder="密码" name="pass" tabindex="2">
					<input type="submit" class="submit" tabindex="3" value="登录">
					<div class="check"></div>
				</div>
				</form>
				<div class="tip" id="tips"></div>
			</div>
		</div>
	</div>
    <div class="air-balloon ab-1 png"></div>
	<div class="air-balloon ab-2 png"></div>
    <div class="footer"></div>
</div>

<script type="text/javascript" src="js/jQuery.js"></script>
<script type="text/javascript" src="js/fun.base.js"></script>
<script type="text/javascript" src="js/script.js"></script>

<script type="text/javascript">
	function check() {
		var username = document.getElementById("username").value;
		var pass = document.getElementById("pass").value;
		if(username == ""){
			document.getElementById("tips").innerHTML="<div style=\"color: red; font-size: 10px;\">用户名不能为空!</div>";
			return false;
		}
		if(pass == ""){
			document.getElementById("tips").innerHTML="<div style=\"color: red; font-size: 10px;\">密码不能为空!</div>";
			return false;
		}
		return true;
	}
</script>
<!--[if IE 6]>
<script src="js/DD_belatedPNG.js" type="text/javascript"></script>
<script>DD_belatedPNG.fix('.png')</script>
<![endif]-->
<div style="text-align:center;margin:50px 0; font:normal 14px/24px 'MicroSoft YaHei';">
<!-- <p>适用浏览器：360、FireFox、Chrome、Safari、Opera、傲游、搜狗、世界之窗. 不支持IE8及以下浏览器。</p> -->
<!-- <p>More Templates <a href="http://www.cssmoban.com/" target="_blank" title="模板之家">模板之家</a> - Collect from <a href="http://www.cssmoban.com/" title="网页模板" target="_blank">网页模板</a></p> -->
</div>
</body>
</html>