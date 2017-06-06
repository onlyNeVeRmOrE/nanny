<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

<head>
<meta charset="utf-8">
<title>用户中心</title>
<link rel="stylesheet"
	href="other/bootstrap-3.3.7/css/bootstrap.min.css">
<script src="js/jquery.js"></script>
<script src="js/ajaxUtils.js"></script>
<script src="js/nannyTask.js"></script>
<script src="other/jquery/jquery-3.1.1/jquery-3.1.1.min.js"></script>
<link rel="stylesheet"
	href="http://www.jq22.com/jquery/font-awesome.4.6.0.css" />
<link rel="stylesheet"
	href="other/validation/vendor/bootstrap/css/bootstrap.css">
<link rel="stylesheet"
	href="other/validation/dist/css/formValidation.css">
<script type="text/javascript"
	src="other/validation/vendor/bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript"
	src="other/validation/dist/js/formValidation.js"></script>
<script type="text/javascript"
	src="other/validation/dist/js/framework/bootstrap.js"></script>
<script type="text/javascript"
	src="other/validation/dist/js/language/zh_CN.js"></script>
<link rel="stylesheet" href="other/jquery-nav/css/style.min.css">
<link rel="stylesheet" href="other/jquery-nav/css/style.css">
<script src="other/jquery-nav/js/production/materialMenu.min.js"></script>
<script src="other/autosize-master/autosize.js"></script>
<script src="other/jquery-ui/jquery-ui.min.js"></script>
<link rel="stylesheet" href="other/jquery-ui/jquery-ui.min.css">

<link rel="icon" href="./assets/favicon.png">
<link rel="apple-touch-icon" href="./assets/apple-touch-icon.png">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Courgette">
<link
	href='https://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800'
	rel='stylesheet' type='text/css'>

<link rel="stylesheet" href="./assets/buttons.css">
<link rel="stylesheet" href="./dist/sweetalert2.min.css">

<script src="./dist/sweetalert2.js"></script>


<script type="text/javascript" src="js/LoginItem.js"></script>
<script type="text/javascript" src="js/SignIn.js"></script>
<script type="text/javascript" src="js/logout.js"></script>
<script type="text/javascript" src="js/forappend.js"></script>

<link rel="stylesheet" href="dist/css/logincss.css" media="all">
<link rel="stylesheet" href="dist/css/bootstrap.min.css">

<script type="text/javascript" src="dist/js/bootstrap.min.js"></script>
<script type="application/x-javascript">
	
	
	
	
	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } 




</script>


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
	
	var currentEmail = "<%=session.getAttribute("sessionName")%>
	";
		if (currentEmail != "null") {
			DisplayAndHiddenBtn("signIn", "h");
			DisplayAndHiddenBtn("login", "h");
			DisplayAndHiddenBtn("userEmail", "d");
			DisplayAndHiddenBtn("logout", "d");
			$("#userEmail").text(currentEmail);

		}

	})
</script>
<script src="js/starScore.js"></script>
<style>
body, li, p, ul {
	margin: 0;
	padding: 0;
	font: 12px/1 Tahoma, Helvetica, Arial, "\5b8b\4f53", sans-serif;
}

ul, li, ol {
	list-style: none;
}

/* 重置文本格式元素 */
a {
	text-decoration: none;
	cursor: pointer;
	color: #333333;
	font-size: 14px;
}

a:hover {
	text-decoration: none;
}

.clearfix::after {
	display: block;
	content: '';
	height: 0;
	overflow: hidden;
	clear: both;
}

/*星星样式*/
.content {
	width: 600px;
	margin: 0 auto;
	padding-top: 20px;
}

.title {
	font-size: 14px;
	background: #dfdfdf;
	padding: 10px;
	margin-bottom: 10px;
}

.block {
	width: 100%;
	margin: 0 0 20px 0;
	padding-top: 10px;
	padding-left: 50px;
	line-height: 21px;
}

.block .star_score {
	float: left;
}

.star_list {
	height: 21px;
	margin: 50px;
	line-height: 21px;
}

.block p, .block .attitude {
	padding-left: 20px;
	line-height: 21px;
	display: inline-block;
}

.block p span {
	color: #C00;
	font-size: 16px;
	font-family: Georgia, "Times New Roman", Times, serif;
}

.star_score {
	background: url(img/stark2.png);
	width: 160px;
	height: 21px;
	position: relative;
}

.star_score a {
	height: 21px;
	display: block;
	text-indent: -999em;
	position: absolute;
	left: 0;
}

.star_score a:hover {
	background: url(img/stars2.png);
	left: 0;
}

.star_score a.clibg {
	background: url(img/stars2.png);
	left: 0;
}

#starttwo .star_score {
	background: url(img/starky.png);
}

#starttwo .star_score a:hover {
	background: url(img/starsy.png);
	left: 0;
}

#starttwo .star_score a.clibg {
	background: url(img/starsy.png);
	left: 0;
}

/*星星样式*/
.show_number {
	padding-left: 50px;
	padding-top: 20px;
}

.show_number li {
	width: 240px;
	border: 1px solid #ccc;
	padding: 10px;
	margin-right: 5px;
	margin-bottom: 20px;
}

.atar_Show {
	background: url(img/stark2.png);
	width: 160px;
	height: 21px;
	position: relative;
	float: left;
}

.atar_Show p {
	background: url(img/stars2.png);
	left: 0;
	height: 21px;
	width: 134px;
}

.show_number li span {
	display: inline-block;
	line-height: 21px;
}
</style>
</head>

<body>
	<div class="TheNomalNavbar">
		<nav class="navbar navbar-default" role="navigation">
		<div class="container-fluid">
			<div class="navbar-header">
				<a class="navbar-brand" href="index.jsp">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;秋裤网</a>
			</div>
			<ul class="nav navbar-nav navbar-left">
				<li><a href="#"><span class="glyphicon glyphicon-tags"></span>
						月嫂登记</a></li>
				<li><a href="#"><span class="glyphicon glyphicon-home"></span>
						月嫂分布</a></li>
				<li><a href="#"><span
						class="glyphicon glyphicon-credit-card"></span> 秋裤快报</a></li>
				<li><a href="ToFindNanny.jsp"><span
						class="glyphicon glyphicon-eye-open"></span> 如何找月嫂</a></li>
				<li><a href="#"><span class="glyphicon glyphicon-heart"></span>
						月嫂工资</a></li>
			</ul>
			<form class="navbar-form navbar-left " role="search">
				<div class="form-group">
					<input type="text" class="form-control" placeholder="Search">
				</div>
				<button type="submit" class="btn btn-default">搜索</button>
			</form>
			<ul class="nav navbar-nav navbar-right">
				<li><a href="#" style="display: block" id="signIn"><span
						class="glyphicon glyphicon-user"></span> 注册</a></li>
				<li><a href="#" style="display: block" id="login"><span
						class="glyphicon glyphicon-log-in theme-login"></span> 登录</a></li>
				<li><a href="basic.jsp" style="display: none" id="userEmail"><span
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
							name="submit" id="loginIn">登入</button></li>
					</ol>
				</form>
			</div>
		</div>
		</nav>
	</div>

	<div id="wrapper" class="wrapper"></div>
	<button id="mm-menu-toggle" class="mm-menu-toggle">Toggle Menu</button>
	<nav id="mm-menu" class="mm-menu">
	<div class="mm-menu__header">
		<h2 class="mm-menu__title">用户中心</h2>
	</div>
	<ul class="mm-menu__items">
		<li class="mm-menu__item"><a class="mm-menu__link"
			href="basic.jsp"> <span class="mm-menu__link-text"><i
					class="md md-home"></i> 基本信息</span>
		</a></li>
		<li class="mm-menu__item"><a class="mm-menu__link" href="#">
				<span class="mm-menu__link-text"><i class="md md-person"></i>
					选填信息</span>
		</a></li>
		<li class="mm-menu__item"><a class="mm-menu__link" href="#">
				<span class="mm-menu__link-text"><i class="md md-inbox"></i>
					修改密码</span>
		</a></li>
		<li class="mm-menu__item"><a class="mm-menu__link"
			href="getNanny.jsp"> <span class="mm-menu__link-text"><i
					class="md md-favorite"></i> 月嫂认证</span>
		</a></li>
		<li class="mm-menu__item"><a class="mm-menu__link"
			href="getEmployer.jsp"> <span class="mm-menu__link-text"><i
					class="md md-settings"></i> 雇主认证</span>
		</a></li>
	</ul>

	<div class="mm-menu__header">
		<h2 class="mm-menu__title">任务中心</h2>
	</div>
	<ul class="mm-menu__items">
		<li class="mm-menu__item"><a class="mm-menu__link"
			href="order.jsp"> <span class="mm-menu__link-text"><i
					class="md md-home"></i> 待处理预约</span>
		</a></li>
		<li class="mm-menu__item"><a class="mm-menu__link" href="toDo.jsp">
				<span class="mm-menu__link-text"><i class="md md-inbox"></i>
					待进行任务</span>
		</a></li>
		<li class="mm-menu__item"><a class="mm-menu__link" href="doing.jsp">
				<span class="mm-menu__link-text"><i class="md md-favorite"></i>
					正在进行任务</span>
		</a></li>
		<li class="mm-menu__item"><a class="mm-menu__link" href="#">
				<span class="mm-menu__link-text"><i class="md md-settings"></i>
					历史任务</span>
		</a></li>
	</ul>
	</nav>

	<script>
		var menu = new Menu;
	</script>

	<div id="pending" class="container">
		<div class="page-header">
			<h1><b>任务空间<b></h1>
		</div>

		<fieldset>
			<legend>
				<h2><b>雇主信息<b></h2>
			</legend>
			<h3 id="name" class="col-sm-3" style='float: left; display: inline;'>雇主姓名：</h3>
			<h3 id="phone" class="col-sm-4" style='float: left; display: inline;'>手机号：</h3>
			<h3 id="mail" class="col-sm-4" style='float: left; display: inline;'>邮箱号：</h3>
			<h3 id="babyBirthday" class="col-sm-3"
				style='float: left; display: inline;'>婴儿出生日期：</h3>
			<h3 id="workPlace" class="col-sm-4"
				style='float: left; display: inline;'>工作地点：</h3>
			<h3 id="workTime" class="col-sm-4"
				style='float: left; display: inline;'>工作时间：</h3>
		</fieldset>
		
		<fieldset>
			<legend>
				<h2><b>今日任务<b></h2>
			</legend>
			<div id="todaymain" role="main">
				<ul id="todaytiles">
					<!-- End of grid blocks -->
				</ul>
			</div>
		</fieldset>

		<fieldset>
			<legend>
				<h2><b>明日任务<b></h2>
			</legend>
			<div id="tomorrowmain" role="main">
				<ul id="tomorrowtiles">
					<!-- End of grid blocks -->
				</ul>
			</div>
		</fieldset>
				
		<fieldset>
			<legend>
				<h2><b>往期评价<b></h2>
			</legend>

			<div id="accordion">
				<h2>第1日</h2>
				<div style='height: 310px; min-height: 310px;'>
					<div id="evaluate1main" role="main">
						<ul id="evaluate1tiles">
							<!-- End of grid blocks -->
						</ul>
					</div>
				</div>

				<h2>第2日</h2>
				<div style='height: 310px; min-height: 310px;'>
					<div id="evaluate2main" role="main">
						<ul id="evaluate2tiles">
							<!-- End of grid blocks -->
						</ul>
					</div>
				</div>
				
				<h2>第3日</h2>
				<div style='height: 310px; min-height: 310px;'>
					<div id="evaluate3main" role="main">
						<ul id="evaluate3tiles">
							<!-- End of grid blocks -->
						</ul>
					</div>
				</div>
			</div>
			<br><br><br><br><br><br>
		</fieldset>
	</div>

	<script>
	$(function() {
	    $( "#accordion" ).accordion();
	  });
	</script>

</body>
</html>