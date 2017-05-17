<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

<head>
<meta charset="utf-8">
<title>用户中心</title>
<link rel="stylesheet"
	href="other/bootstrap-3.3.7/css/bootstrap.min.css">
<link href="css/addskill.css" type="text/css" rel="stylesheet" />
<script src="js/jquery.js"></script>
<script src="js/ajaxUtils.js"></script>
<script src="js/basic.js"></script>
<script src="js/nanny.js"></script>
<script src="js/employer.js"></script>
<script src="js/showdiv.js"></script>
<script src="js/identEmployer.js"></script>
<script src="other/jquery/jquery-3.1.1/jquery-3.1.1.min.js"></script>
<link rel="stylesheet"
	href="other/font-awesome.css" />
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
		<li class="mm-menu__item"><a class="mm-menu__link"
			href="#"> <span class="mm-menu__link-text"><i
					class="md md-inbox"></i> 待进行任务</span>
		</a></li>
		<li class="mm-menu__item"><a class="mm-menu__link"
			href="#"> <span class="mm-menu__link-text"><i
					class="md md-favorite"></i> 正在进行任务</span>
		</a></li>
		<li class="mm-menu__item"><a class="mm-menu__link"
			href="#"> <span class="mm-menu__link-text"><i
					class="md md-settings"></i> 历史任务</span>
		</a></li>
	</ul>
	</nav>

	<script>
		  var menu = new Menu;
		</script>

	<div class="container">
		<div class="row">
			<div class="page-header">
				<h1>雇主认证</h1>
			</div>
			<div>
				<form action="" method="post" id="employerform" name="employerform"
					class="form-horizontal" target="employer_iframe">
					<fieldset>
						<legend>月嫂要求</legend>

						<div class="form-group">
							<label class="col-sm-2 control-label">
								<p style='font-size: 19px; font-weight: bold;'>需要工作住址</p>
							</label>
							<div class="col-sm-5">
								<input type="text" class="form-control" id="workPlace"
									name="workPlace" placeholder="如：xx省xx市xx县xx路">
							</div>
						</div>

						<div class="form-group col-sm-4">
							<label class="col-sm-6 control-label">
								<p style='font-size: 19px; font-weight: bold;'>是否住家</p>
							</label>
							<div class="col-sm-6">
								<select class="form-control" id="isNeedLive" name="isNeedLive">
									<option value="">请选择</option>
									<option value="是">是</option>
									<option value="否">否</option>
								</select>
							</div>
						</div>
						
						<div class="form-group col-sm-12">
							<label class="col-sm-2 control-label">
								<p style='font-size: 19px; font-weight: bold;'>技能标签：</p>
							</label>
							<div>
								<span id="yzc" class="label label-default" onclick="ShowDiv('yzcDiv','fade')">月子餐</span> 
								<span id="skhl" class="label label-default" onclick="ShowDiv('skhlDiv','fade')">伤口护理</span>
								<span id="shzl" class="label label-default" onclick="ShowDiv('shzlDiv','fade')">生活照料</span> 
								<span id="rfhl" class="label label-default" onclick="ShowDiv('rfhlDiv','fade')">乳房护理</span>
								<span id="jnpx" class="label label-default" onclick="ShowDiv('jnpxDiv','fade')">技能培训</span> 
								<span id="jtgxxt" class="label label-default" onclick="ShowDiv('jtgxxtDiv','fade')">家庭关系协调</span> 
								<span id="xlst" class="label label-default" onclick="ShowDiv('xlstDiv','fade')">心理疏通</span> 
								 
								<span id="jbgc" class="label label-default" onclick="ShowDiv('jbgcDiv','fade')">疾病观察</span> 
								<span id="shzl2" class="label label-default" onclick="ShowDiv('shzl2Div','fade')">生活照料</span> 
								<span id="yejl" class="label label-default" onclick="ShowDiv('yejlDiv','fade')">育儿记录</span> 
								<span id="zqcj" class="label label-default" onclick="ShowDiv('zqcjDiv','fade')">早期促进</span>
								<span id="yec" class="label label-default" onclick="ShowDiv('yecDiv','fade')">婴儿操</span>
							</div>
						</div>
					

						<div class="row">
							<div class="form-group col-sm-4">
								<label class="col-sm-6 control-label">
									<p style='font-size: 19px; font-weight: bold;'>经验需要</p>
								</label>
								<div class="col-sm-6">
									<select class="form-control" id="experience" name="experience">
										<option value="">请选择</option>
										<option value="1年以上">1年以上</option>
										<option value="2年以上">2年以上</option>
										<option value="5年以上">5年以上</option>
									</select>
								</div>
							</div>

							<div class="form-group col-sm-4">
								<label class="col-sm-6 control-label">
									<p style='font-size: 19px; font-weight: bold;'>学历</p>
								</label>
								<div class="col-sm-6">
									<select class="form-control" id="employerEducation"
										name="employerEducation">
										<option value="">请选择</option>
										<option value="初中">初中</option>
										<option value="中专">中专</option>
										<option value="专科">专科</option>
										<option value="本科">本科</option>
										<option value="本科以上">本科以上</option>
									</select>
								</div>
							</div>
						</div>

						<div class="row">
							<div class="form-group col-sm-4">
								<label class="col-sm-6 control-label">
									<p style='font-size: 19px; font-weight: bold;'>可支付工资</p>
								</label>
								<div class="col-sm-6">
									<input type="text" class="form-control" id="employerSalary"
										name="employerSalary" placeholder="单位:元/月">
								</div>
							</div>

							<div class="form-group col-sm-4">
								<label class="col-sm-6 control-label">
									<p style='font-size: 19px; font-weight: bold;'>月嫂可休息天数</p>
								</label>
								<div class="col-sm-6">
									<input type="text" class="form-control" id="employerRestTime"
										name="employerRestTime" placeholder="单位:天/月">
								</div>
							</div>
						</div>
					</fieldset>

					<fieldset>
						<legend>母婴情况</legend>
						<div class="form-group">
							<label class="col-sm-2 control-label">
								<p style='font-size: 19px; font-weight: bold;'>婴儿出生日期</p>
							</label>
							<div class="col-sm-4">
								<input type="text" class="form-control" id="babybirthday"
									name="babybirthday" placeholder="年/月/日">
							</div>
						</div>

						<div class="form-group col-sm-4">
							<label class="col-sm-6 control-label">
								<p style='font-size: 19px; font-weight: bold;'>婴儿出生体重</p>
							</label>
							<div class="col-sm-6">
								<input type="text" class="form-control" id="babyBirthWeight"
									name="babyBirthWeight" placeholder="单位:千克">
							</div>
						</div>

						<div class="form-group col-sm-4">
							<label class="col-sm-6 control-label">
								<p style='font-size: 19px; font-weight: bold;'>母亲年龄</p>
							</label>
							<div class="col-sm-6">
								<input type="text" class="form-control" id="motherAge"
									name="motherAge" placeholder="单位:岁">
							</div>
						</div>

						<div class="form-group col-sm-4">
							<label class="col-sm-6 control-label">
								<p style='font-size: 19px; font-weight: bold;'>母亲体重</p>
							</label>
							<div class="col-sm-6">
								<input type="text" class="form-control" id="motherWeight"
									name="motherWeight" placeholder="单位:千克">
							</div>
						</div>

						<div class="form-group col-sm-4">
							<label class="col-sm-6 control-label">
								<p style='font-size: 19px; font-weight: bold;'>母亲身高</p>
							</label>
							<div class="col-sm-6">
								<input type="text" class="form-control" id="motherHeight"
									name="motherHeight" placeholder="单位:厘米">
							</div>
						</div>

						<div class="form-group col-sm-4">
							<label class="col-sm-6 control-label">
								<p style='font-size: 19px; font-weight: bold;'>分娩次数</p>
							</label>
							<div class="col-sm-6">
								<input type="text" class="form-control" id="deliveryTimes"
									name="deliveryTimes" placeholder="单位:次">
							</div>
						</div>

						<div class="form-group col-sm-4">
							<label class="col-sm-6 control-label">
								<p style='font-size: 19px; font-weight: bold;'>分娩方式</p>
							</label>
							<div class="col-sm-6">
								<select class="form-control" id="deliveryMode"
									name="deliveryMode">
									<option value="">请选择</option>
									<option value="顺产">顺产</option>
									<option value="剖腹产">剖腹产</option>
								</select>
							</div>
						</div>
					</fieldset>

					<fieldset>
						<legend>母婴健康报告</legend>
						<div class="form-group">
							<label class="col-sm-2 control-label">
								<p style='font-size: 19px; font-weight: bold;'>母婴健康报告
									(本站承诺保密)</p>
							</label>
							<div class="col-sm-4">
								<input type="file" class="form-control" id="healthReprotFile"
									name="healthReprotFile" /> <span class="help-block">请上传pdf文件且大小不能超过10M</span>
							</div>
						</div>
					</fieldset>

				</form>
			</div>
		</div>
	</div>
	
	<div id="yzcDiv" class="white_content">
		<div style="text-align: right; cursor: default; height: 20px;">
			<span style="font-size: 16px;" onclick="CloseDiv('yzcDiv','fade')">关闭</span>
		</div>

		<form id="yzcform" name="yzcform" role="form" class="form-horizontal"
			target="yzc_iframe" enctype ="multipart/form-data">
			<div class="page-header">
				<h1>月子餐标签</h1>
			</div>
			<div class="col-sm-9">
				<div class="form-group">
					<label class="control-label">
						<p style='font-size: 19px; font-weight: bold;'>技能名：月子餐</p>
					</label>
				</div>
				<div class="form-group">
					<label class="control-label">
						<p style='font-size: 19px; font-weight: bold;'>技能描述:</p>
					</label>
					<textarea class="form-control" id="yzcDescribe" name="yzcDescribe"
						style='width: 470px; height: 100px;'></textarea>
					<br>
				</div>
			</div>
		</form>
	</div>

	<div id="skhlDiv" class="white_content">
		<div style="text-align: right; cursor: default; height: 20px;">
			<span style="font-size: 16px;" onclick="CloseDiv('skhlDiv','fade')">关闭</span>
		</div>
		<form id="skhlform" name="skhlform" role="form"
			class="form-horizontal" target="skhl_iframe" enctype ="multipart/form-data">
			<div class="page-header">
				<h1>伤口护理标签</h1>
			</div>
			<div class="col-sm-9">
				<div class="form-group">
					<label class="control-label">
						<p style='font-size: 19px; font-weight: bold;'>技能名：伤口护理</p>
					</label>
				</div>
				<div class="form-group">
					<label class="control-label">
						<p style='font-size: 19px; font-weight: bold;'>技能描述:</p>
					</label>
					<textarea class="form-control" id="skhlDescribe"
						name="skhlDescribe" style="width: 470px; height: 100px;"></textarea>
					<br>
				</div>
			</div>
		</form>
	</div>

	<div id="shzlDiv" class="white_content">
		<div style="text-align: right; cursor: default; height: 20px;">
			<span style="font-size: 16px;" onclick="CloseDiv('shzlDiv','fade')">关闭</span>
		</div>
		<form id="shzlform" name="shzlform" role="form"
			class="form-horizontal" target="shzl_iframe" enctype ="multipart/form-data">
			<div class="page-header">
				<h1>生活照料标签</h1>
			</div>
			<div class="col-sm-9">
				<div class="form-group">
					<label class="control-label">
						<p style='font-size: 19px; font-weight: bold;'>技能名：生活照料</p>
					</label>
				</div>
				<div class="form-group">
					<label class="control-label">
						<p style='font-size: 19px; font-weight: bold;'>技能描述:</p>
					</label>
					<textarea class="form-control" id="shzlDescribe"
						name="shzlDescribe" style="width: 470px; height: 100px;"></textarea>
					<br>
				</div>
			</div>
		</form>
	</div>

	<div id="rfhlDiv" class="white_content">
		<div style="text-align: right; cursor: default; height: 20px;">
			<span style="font-size: 16px;" onclick="CloseDiv('rfhlDiv','fade')">关闭</span>
		</div>
		<form id="rfhlform" name="rfhlform" role="form"
			class="form-horizontal" target="rfhl_iframe" enctype ="multipart/form-data">
			<div class="page-header">
				<h1>乳房护理标签</h1>
			</div>
			<div class="col-sm-9">
			    <div class="form-group">
					<label class="control-label">
						<p style='font-size: 19px; font-weight: bold;'>技能名：乳房护理</p>
					</label>
				</div>
				<div class="form-group">
					<label class="control-label">
						<p style='font-size: 19px; font-weight: bold;'>技能描述:</p>
					</label>
					<textarea class="form-control" id="rfhlDescribe"
						name="rfhlDescribe" style="width: 470px; height: 100px;"></textarea>
					<br>
				</div>
			</div>
		</form>
	</div>

	<div id="jnpxDiv" class="white_content">
		<div style="text-align: right; cursor: default; height: 20px;">
			<span style="font-size: 16px;" onclick="CloseDiv('jnpxDiv','fade')">关闭</span>
		</div>
		<form id="jnpxform" name="jnpxform" role="form"
			class="form-horizontal" target="jnpx_iframe" enctype ="multipart/form-data">
			<div class="page-header">
				<h1>技能培训标签</h1>
			</div>
			<div class="col-sm-9">
				<div class="form-group">
					<label class="control-label">
						<p style='font-size: 19px; font-weight: bold;'>技能名：技能培训</p>
					</label>
				</div>
				<div class="form-group">
					<label class="control-label">
						<p style='font-size: 19px; font-weight: bold;'>技能描述:</p>
					</label>
					<textarea class="form-control" id="jnpxDescribe"
						name="jnpxDescribe" style="width: 470px; height: 100px;"></textarea>
					<br>
				</div>
			</div>
		</form>
	</div>

	<div id="jtgxxtDiv" class="white_content">
		<div style="text-align: right; cursor: default; height: 20px;">
			<span style="font-size: 16px;" onclick="CloseDiv('jtgxxtDiv','fade')">关闭</span>
		</div>
		<form id="jtgxxtform" name="jtgxxtform" role="form"
			class="form-horizontal" target="jtgxxt_iframe" enctype ="multipart/form-data">
			<div class="page-header">
				<h1>家庭关系协调标签</h1>
			</div>
			<div class="col-sm-9">
				<div class="form-group">
					<label class="control-label">
						<p style='font-size: 19px; font-weight: bold;'>技能名：家庭关系协调</p>
					</label>
				</div>
				<div class="form-group">
					<label class="control-label">
						<p style='font-size: 19px; font-weight: bold;'>技能描述:</p>
					</label>
					<textarea class="form-control" id="jtgxxtDescribe"
						name="jtgxxtDescribe" style="width: 470px; height: 100px;"></textarea>
					<br>
				</div>
			</div>
		</form>
	</div>

	<div id="xlstDiv" class="white_content">
		<div style="text-align: right; cursor: default; height: 20px;">
			<span style="font-size: 16px;" onclick="CloseDiv('xlstDiv','fade')">关闭</span>
		</div>
		<form id="xlstform" name="xlstform" role="form"
			class="form-horizontal" target="xlst_iframe" enctype ="multipart/form-data">
			<div class="page-header">
				<h1>心理疏通标签</h1>
			</div>
			<div class="col-sm-9">
				<div class="form-group">
					<label class="control-label">
						<p style='font-size: 19px; font-weight: bold;'>技能名：心理疏通</p>
					</label>
				</div>
				<div class="form-group">
					<label class="control-label">
						<p style='font-size: 19px; font-weight: bold;'>技能描述:</p>
					</label>
					<textarea class="form-control" id="xlstDescribe"
						name="xlstDescribe" style="width: 470px; height: 100px;"></textarea>
					<br>
				</div>
			</div>
		</form>
	</div>

	<div id="jbgcDiv" class="white_content">
		<div style="text-align: right; cursor: default; height: 20px;">
			<span style="font-size: 16px;" onclick="CloseDiv('jbgcDiv','fade')">关闭</span>
		</div>
		<form id="jbgcform" name="jbgcform" role="form"
			class="form-horizontal" target="jbgc_iframe" enctype ="multipart/form-data">
			<div class="page-header">
				<h1>疾病观察标签</h1>
			</div>
			<div class="col-sm-9">
				<div class="form-group">
					<label class="control-label">
						<p style='font-size: 19px; font-weight: bold;'>技能名：疾病观察</p>
					</label>
				</div>
				<div class="form-group">
					<label class="control-label">
						<p style='font-size: 19px; font-weight: bold;'>技能描述:</p>
					</label>
					<textarea class="form-control" id="jbgcDescribe"
						name="jbgcDescribe" style="width: 470px; height: 100px;"></textarea>
					<br>
				</div>
			</div>
		</form>
	</div>

	<div id="shzl2Div" class="white_content">
		<div style="text-align: right; cursor: default; height: 20px;">
			<span style="font-size: 16px;" onclick="CloseDiv('shzl2Div','fade')">关闭</span>
		</div>
		<form id="shzl2form" name="shzl2form" role="form"
			class="form-horizontal" target="shzl2_iframe" enctype ="multipart/form-data">
			<div class="page-header">
				<h1>生活照料2标签</h1>
			</div>
			<div class="col-sm-9">
				<div class="form-group">
					<label class="control-label">
						<p style='font-size: 19px; font-weight: bold;'>技能名：生活照料</p>
					</label>
				</div>
				<div class="form-group">
					<label class="control-label">
						<p style='font-size: 19px; font-weight: bold;'>技能描述:</p>
					</label>
					<textarea class="form-control" id="shzl2Describe"
						name="shzl2Describe" style="width: 470px; height: 100px;"></textarea>
					<br>
				</div>
			</div>
		</form>
	</div>

	<div id="yejlDiv" class="white_content">
		<div style="text-align: right; cursor: default; height: 20px;">
			<span style="font-size: 16px;" onclick="CloseDiv('yejlDiv','fade')">关闭</span>
		</div>
		<form id="yejlform" name="yejlform" role="form"
			class="form-horizontal" target="yejl_iframe" enctype ="multipart/form-data">
			<div class="page-header">
				<h1>育儿记录标签</h1>
			</div>
			<div class="col-sm-9">
				<div class="form-group">
					<label class="control-label">
						<p style='font-size: 19px; font-weight: bold;'>技能名：育儿记录</p>
					</label>
				</div>
				<div class="form-group">
					<label class="control-label">
						<p style='font-size: 19px; font-weight: bold;'>技能描述:</p>
					</label>
					<textarea class="form-control" id="yejlDescribe"
						name="yejlDescribe" style="width: 470px; height: 100px;"></textarea>
					<br>
				</div>
			</div>
		</form>
	</div>

	<div id="zqcjDiv" class="white_content">
		<div style="text-align: right; cursor: default; height: 20px;">
			<span style="font-size: 16px;" onclick="CloseDiv('zqcjDiv','fade')">关闭</span>
		</div>
		<form id="zqcjform" name="zqcjform" role="form"
			class="form-horizontal" target="zqcj_iframe" enctype ="multipart/form-data">
			<div class="page-header">
				<h1>早期促进标签</h1>
			</div>
			<div class="col-sm-9">
				<div class="form-group">
					<label class="control-label">
						<p style='font-size: 19px; font-weight: bold;'>技能名：早期促进</p>
					</label>
				</div>
				<div class="form-group">
					<label class="control-label">
						<p style='font-size: 19px; font-weight: bold;'>技能描述:</p>
					</label>
					<textarea class="form-control" id="zqcjDescribe"
						name="zqcjDescribe" style="width: 470px; height: 100px;"></textarea>
					<br>
				</div>
			</div>
		</form>
	</div>

	<div id="yecDiv" class="white_content">
		<div style="text-align: right; cursor: default; height: 20px;">
			<span style="font-size: 16px;" onclick="CloseDiv('yecDiv','fade')">关闭</span>
		</div>
		<form id="yecform" name="yecform" role="form" class="form-horizontal"
			target="yec_iframe" enctype ="multipart/form-data">
			<div class="page-header">
				<h1>婴儿操标签</h1>
			</div>
			<div class="col-sm-9">
				<div class="form-group">
					<label class="control-label">
						<p style='font-size: 19px; font-weight: bold;'>技能名：婴儿操</p>
					</label>
				</div>
				<div class="form-group">
					<label class="control-label">
						<p style='font-size: 19px; font-weight: bold;'>技能描述:</p>
					</label>
					<textarea class="form-control" id="yecDescribe" name="yecDescribe"
						style="width: 470px; height: 100px;"></textarea>
					<br>
				</div>
			</div>
		</form>
	</div>

	<iframe id="id_iframe" name="employer_iframe" style="display: none;"></iframe>
</body>
</html>