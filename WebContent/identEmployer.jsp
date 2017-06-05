<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>去认证雇主</title>
<link rel="stylesheet"
	href="other/bootstrap-3.3.7/css/bootstrap.min.css">
<link href="css/addskill.css" type="text/css" rel="stylesheet" />
<script src="js/jquery.js"></script>
<script src="js/ajaxUtils.js"></script>
<script src="js/basic.js"></script>
<script src="js/nanny.js"></script>
<script src="js/employer.js"></script>
<script src="js/showdiv.js"></script>
<script src="js/addSkill.js"></script>
<script src="other/DJMask/js/jquery-DJMask.2.1.1.js"></script>
<script src="other/DJMask/js/jquery.js"></script>
<script src="other/jquery/jquery-3.1.1/jquery-3.1.1.min.js"></script>
<link rel="stylesheet" href="other/font-awesome.css" />
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
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
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
<div class="TheNomalNavbar">
		<nav class="navbar navbar-default" role="navigation">
		<div class="container-fluid">
			<div class="navbar-header">
				<a class="navbar-brand" href="index.jsp">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp秋裤网</a>
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
								name="submit" value="登 录 " id="loginIn" /></li>
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
		<li class="mm-menu__item"><a class="mm-menu__link" href="#">
				<span class="mm-menu__link-text"><i class="md md-inbox"></i>
					待进行任务</span>
		</a></li>
		<li class="mm-menu__item"><a class="mm-menu__link" href="#">
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
	<div class="container">
		<div class="row">
			<div class="page-header">
				<h1>去认证雇主</h1>
			</div>

			<div class="col-sm-3 col-sm-offset-2">
				<p>相比市场上一些类似的“最佳雇主”“最佳工作场所”等以员工或潜在员工为调研对象、以调研对象对雇主的主观评价为基准的雇主品牌相关的评选项目相比，杰出雇主认证更多的是从雇主为员工提供的客观存在的人力资源条件为出发点，这让整个的调研和评审过程更加客观，评审的标准也更加容易量化，从而认证的结果也更加透明。</p>
				<p>此外，杰出雇主整个认证的流程除了机构本身的验证和核实，还有来自第三方审计机构的审计，最大程度的保证了认证结果的公平和公正性。</p>
				<p>第三，认证机构本身在业务运营范围上的独立性也是保证认证结果公平公正性的基础。无论是一项专业的人力资源认证，还是嘉奖优秀雇主品牌的奖项，颁发机构都应在评审过程中保持自己的独立性和客观性，排除来自本机构其他业务需求的影响和干涉。从这一方面，杰出雇主调研机构在其业务的专一性方面也是让雇主认可该认证的权威性的一个重要因素。</p>
			</div>
			<div class="col-sm-4">
				<a href="#" class="thumbnail"> <img src="img/employer.png"
					alt="通用的占位符缩略图">
				</a>
			</div>
			<div class="col-sm-7 col-sm-offset-2">
				<br> <input type="button" class="btn btn-block"
					id="identEmployer" name="identEmployer" value="去认证雇主"
					onclick="window.location='employer.jsp'">
			</div>
		</div>
	</div>
</body>
</html>