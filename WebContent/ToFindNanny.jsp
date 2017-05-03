<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>秋裤网</title>
<link rel="icon" href="./assets/favicon.png">
<link rel="apple-touch-icon" href="./assets/apple-touch-icon.png">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Courgette">

<link rel="stylesheet" href="./assets/buttons.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/animatecss/3.5.2/animate.css">
<link rel="stylesheet" href="./dist/sweetalert2.min.css">

<script src="./dist/sweetalert2.js"></script>
<script src="./dist/jquery/jquery-3.1.1/jquery-3.1.1.min.js"></script>

<script type="text/javascript" src="js/LoginItem.js"></script>
<script type="text/javascript" src="js/SignIn.js"></script>
<script type="text/javascript" src="js/logout.js"></script>


<link rel="stylesheet" href="dist/css/logincss.css" media="all">
<link rel="stylesheet" href="dist/css/bootstrap.min.css">

<script type="text/javascript" src="dist/js/bootstrap.min.js"></script>

<script>
jQuery(document).ready(function($) {
	$('.theme-login').click(function(){
		$('.theme-popover-mask').fadeIn(100);
		$('.theme-popover').slideDown(200);
	})
	$('.theme-poptit .close').click(function(){
		$('.theme-popover-mask').fadeOut(100);
		$('.theme-popover').slideUp(200);
	})
	
	var currentEmail = "<%=session.getAttribute("sessionName")%>";
	if(currentEmail != "null")
	{
		DisplayAndHiddenBtn("signIn", "h");
		DisplayAndHiddenBtn("login", "h");
		DisplayAndHiddenBtn("userEmail", "d");
		DisplayAndHiddenBtn("logout", "d");
		$("#userEmail").text(currentEmail);
		
	}
	

})

</script>

</head>
<body>
	<nav class="navbar navbar-default" role="navigation">
	<div class="container-fluid">
		<div class="navbar-header">
			<a class="navbar-brand" href="#">秋裤网</a>
		</div>
		<ul class="nav navbar-nav navbar-left">
			<li><a href="#"><span class="glyphicon glyphicon-tags"></span>
					月嫂登记</a></li>
			<li><a href="#"><span class="glyphicon glyphicon-home"></span>
					月嫂分布</a></li>
			<li><a href="#"><span
					class="glyphicon glyphicon-credit-card"></span> 秋裤快报</a></li>
			<li><a href="#"><span class="glyphicon glyphicon-eye-open"></span>
					如何找月嫂</a></li>
			<li><a href="#"><span class="glyphicon glyphicon-heart"></span>
					月嫂工资</a></li>
		</ul>
		<ul class="nav navbar-nav navbar-right">
			<li><a href="#" style="display: block" id="signIn"><span
					class="glyphicon glyphicon-user"></span> 注册</a></li>
			<li><a href="#" style="display: block" id="login"><span
					class="glyphicon glyphicon-log-in theme-login"></span> 登录</a></li>
			<li><a href="UserCenter.jsp" style="display: none" id="userEmail"><span
					class="glyphicon glyphicon-user"></span></a></li>
			<li><a href="#" style="display: none" id="logout"><span
					class="glyphicon glyphicon-log-in"></span> 注销</a></li>
		</ul>
	</div>

	<div class="theme-popover">
		<div class="theme-poptit">
			<a title="关闭" class="close"><strong>×</strong></a>
			<h3>欢迎登录秋裤网！</h3>
		</div>
		<div class="theme-popbod dform">
			<form class="theme-signin" name="loginform" action="" method="post">
				<ol>
					<li><h4>请输入您的信息！</h4></li>
					<li><strong>用户名：</strong><input class="inputarea7"
						type="email" name="log" placeholder="电子邮件" size="20"
						id="input_email" /></li>
					<li><strong>密码：</strong><input class="inputarea7"
						type="password" name="pwd" placeholder="密　码" size="20"
						id="input_password" /></li>
					<li><button class="button7 button7-primary" type="button"
							name="submit" value="登 录 " id="loginIn" /></li>
				</ol>
			</form>
		</div>
	</div>
	<div class="theme-popover-mask"></div>
	</nav>
</body>
</html>


