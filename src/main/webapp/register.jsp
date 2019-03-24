<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="cn" >

<head>
  <meta charset="UTF-8">
  <title>注册</title>
  
  
  
      <link rel="stylesheet" href="css/style1.css">

  
</head>

<body>

  <hgroup>
  <h1>注册信息</h1>
<!--   <h3>By Josh Adamous</h3> -->
</hgroup>
<form method="post" action="employee/register.html" onsubmit="return check()">
  <div class="group">
    <input name="username" id="username" onblur="checkUsername()" type="text"><span class="highlight"></span><span id="musername" class="bar"></span>
    <label>用户名</label>
  </div>
  <div class="group">
    <input name="realname" id="realname" type="text"><span class="highlight"></span><span class="bar" id="mrealname"></span>
    <label>真实姓名</label>
  </div>
  <div class="group">
    <input name="pass" id="pass" type="password"><span class="highlight"></span><span class="bar" id="mpass"></span>
    <label>密码</label>
  </div>
  <div class="group">
    <input name="cpass" id="cpass" onblur="checkPass()" type="password"><span class="highlight"></span><span class="bar" id="mcpass"></span>
    <label>重复密码</label>
  </div>
  <div class="group">
    <input name="telphone" id="telphone" type="text"><span class="highlight"></span><span class="bar" id="mtelphone"></span>
    <label>电话</label>
  </div>
  <div class="group" id="tips">
  </div>
  <input type="submit" value="注册" class="button buttonBlue">
  <div style="color: black;">已有账号?去<a href="login.jsp">登录</a>吧!</div>
<!--   <button type="button" class="button buttonBlue">注册 -->
<!--     <div class="ripples buttonRipples"><span class="ripplesCircle"></span></div> -->
<!--   </button> -->
</form>

  <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
<script type="text/javascript">
	function check() {
		var username = document.getElementById("username").value;
		var realname = document.getElementById("realname").value;
		var pass = document.getElementById("pass").value;
		var cpass = document.getElementById("cpass").value;
		var telphone = document.getElementById("telphone").value;
		if(username == ""){
			document.getElementById("musername").innerText="用户名不能为空!";
			return false;
		}
		if(realname == ""){
			document.getElementById("mrealname").innerText="真实姓名不能为空!";
			return false;
		}
		if(pass == ""){
			document.getElementById("mpass").innerText="密码不能为空!";
			return false;
		}
		if(cpass == ""){
			document.getElementById("mcpass").innerText="确认密码不能为空!";
			return false;
		}
		if(telphone == ""){
			document.getElementById("mtelphone").innerText="电话号码不能为空!";
			return false;
		}
		return true;
	}
	
	function checkPass(){
		var pass = document.getElementById("pass").value;
		var cpass = document.getElementById("cpass").value;
		if(pass != "" && cpass != ""){
			if(pass != cpass){
				document.getElementById("mcpass").innerText="两次密码不一致!";
			}else{
				document.getElementById("mcpass").innerText="两次密码一致!";
			}
		}
	}
	
	function checkUsername(){
		var username = document.getElementById("username").value;
		var param = "username="+username;
		if(username != ""){
			$.ajax({
				url : "${pageContext.request.contextPath }/employee/checkUsername.html",
				data : param,
				type : "post",
				cache : false,
				dataType : "text",
				beforeSend : function(datas) {
					//alert("before");
				},
				async : true,
				success : function(datas) {
					var json = eval('('+datas+')');
					document.getElementById("musername").innerText=json.message;
				},
				error : function() {
					alert("error");
				}
			});
		}else{
			document.getElementById("musername").innerText="用户名不能为空!";
		}
	}
</script>
  

    <script  src="js/index1.js"></script>




</body>

</html>
