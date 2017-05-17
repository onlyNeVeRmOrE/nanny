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
<script src="js/identNanny.js"></script>
<script src="other/DJMask/js/jquery-DJMask.2.1.1.js"></script>
<script src="other/DJMask/js/jquery.js"></script>
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
				<h1>月嫂认证</h1>
			</div>
			<div>
				<form action="" method="post" id="nannyform" name="nannyform"
					role="form" class="form-horizontal" target="nanny_iframe">
					<fieldset>
						<div class="row">
							<div class="form-group col-sm-4">
								<label class="col-sm-6 control-label">
									<p style='font-size: 19px; font-weight: bold;'>目标城市</p>
								</label>
								<div class="col-sm-6">
									<select class="form-control" id="targetCity" name="targetCity">
										<option value="">请选择</option>
										<option value="北京">北京</option>
										<option value="上海">上海</option>
										<option value="广州">广州</option>
										<option value="深圳">深圳</option>
										<option value="天津">天津</option>
										<option value="其他">其他</option>
									</select>
								</div>
							</div>

							<div class="form-group col-sm-4">
								<label class="col-sm-6 control-label">
									<p style='font-size: 19px; font-weight: bold;'>是否住家</p>
								</label>
								<div class="col-sm-6">
									<select class="form-control" id="isLive" name="isLive">
										<option value="">请选择</option>
										<option value="是">是</option>
										<option value="否">否</option>
									</select>
								</div>
							</div>
						</div>
						
						<div class="form-group">
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
									<p style='font-size: 19px; font-weight: bold;'>工作情况</p>
								</label>
								<div class="col-sm-6">
									<select class="form-control" id="workCondition"
										name="workCondition">
										<option value="">请选择</option>
										<option value="从未干过">从未干过</option>
										<option value="1年以内">1年以内</option>
										<option value="2-3年">2-3年</option>
										<option value="3-5年">3-5年</option>
										<option value="5年以上">5年以上</option>
									</select>
								</div>
							</div>

							<div class="form-group col-sm-4">
								<label class="col-sm-6 control-label">
									<p style='font-size: 19px; font-weight: bold;'>学历</p>
								</label>
								<div class="col-sm-6">
									<select class="form-control" id="nannyEducation"
										name="nannyEducation">
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
									<p style='font-size: 19px; font-weight: bold;'>期望工资</p>
								</label>
								<div class="col-sm-6">
									<input id="nannySalary" type="text" class="form-control"
										name="nannySalary" placeholder="单位:元/月">
								</div>
							</div>


							<div class="form-group col-sm-4">
								<label class="col-sm-6 control-label">
									<p style='font-size: 19px; font-weight: bold;'>期望休息天数</p>
								</label>
								<div class="col-sm-6">
									<input id="nannyRestTime" type="text" class="form-control"
										name="nannyRestTime" placeholder="单位:天/月">
								</div>
							</div>

							<div class="form-group col-sm-4">
								<label class="col-sm-4 control-label">
									<p style='font-size: 19px; font-weight: bold;'>民族</p>
								</label>
								<div class="col-sm-6">
									<input id="nation" type="text" class="form-control"
										name="nation" placeholder="如：汉族">
								</div>
							</div>
						</div>

						<div class="row">
							<div class="form-group col-sm-4">
								<label class="col-sm-6 control-label">
									<p style='font-size: 19px; font-weight: bold;'>信仰</p>
								</label>
								<div class="col-sm-6">
									<select class="form-control" id="faith" name="faith">
										<option value="">请选择</option>
										<option value="无">无</option>
										<option value="佛教">佛教</option>
										<option value="基督教">基督教</option>
										<option value="伊斯兰教">伊斯兰教</option>
										<option value="其他">其他</option>
									</select>
								</div>
							</div>

							<div class="form-group col-sm-4">
								<label class="col-sm-6 control-label">
									<p style='font-size: 19px; font-weight: bold;'>婚姻状况</p>
								</label>
								<div class="col-sm-6">
									<select class="form-control" id="maritalStatus"
										name="maritalStatus">
										<option value="">请选择</option>
										<option value="未婚">未婚</option>
										<option value="已婚">已婚</option>
									</select>
								</div>
							</div>
						</div>

						<div class="row">
							<div class="form-group col-sm-4">
								<label class="col-sm-6 control-label">
									<p style='font-size: 19px; font-weight: bold;'>孩子是否在本地</p>
								</label>
								<div class="col-sm-6">
									<select class="form-control" id="isChildLocal"
										name="isChildLocal">
										<option value="">请选择</option>
										<option value="是">是</option>
										<option value="否">否</option>
									</select>
								</div>
							</div>

							<div class="form-group col-sm-4">
								<label class="col-sm-6 control-label">
									<p style='font-size: 19px; font-weight: bold;'>父母是否在本地</p>
								</label>
								<div class="col-sm-6">
									<select class="form-control" id="isParentLocal"
										name="isParentLocal">
										<option value="">请选择</option>
										<option value="是">是</option>
										<option value="否">否</option>
									</select>
								</div>
							</div>
						</div>

						<div class="form-group col-sm-10">
							<label class="col-sm-1 control-label">
								<p style='font-size: 19px; font-weight: bold;'>简介</p>
							</label>
							<textarea class="form-control" id="introduce" name="introduce"
								style="width: 842px; height: 150px;"
								placeholder="请填写自我介绍，200字以内"></textarea>
						</div>

						<div class="form-group col-sm-10">
							<label class="col-sm-1 control-label">
								<p style='font-size: 19px; font-weight: bold;'>备注</p>
							</label>
							<textarea class="form-control" id="remark" name="remark"
								style="width: 842px; height: 100px;" placeholder="请填写备注，200字以内"></textarea>
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

				<div class="form-group">
					<label class="control-label">
						<p style='font-size: 19px; font-weight: bold;'>技能凭证</p>
					</label> <input type="file" id="yzcFile" name="yzcFile"> <br>
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

				<div class="form-group">
					<label class="control-label">
						<p style='font-size: 19px; font-weight: bold;'>技能凭证</p>
					</label> <input type="file" id="skhlFile" name="skhlFile"> <br>
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

				<div class="form-group">
					<label class="control-label">
						<p style='font-size: 19px; font-weight: bold;'>技能凭证</p>
					</label> <input type="file" id="shzlFile" name="shzlFile"> <br>
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

				<div class="form-group">
					<label class="control-label">
						<p style='font-size: 19px; font-weight: bold;'>技能凭证</p>
					</label> <input type="file" id="rfhlFile" name="rfhlFile"> <br>
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

				<div class="form-group">
					<label class="control-label">
						<p style='font-size: 19px; font-weight: bold;'>技能凭证</p>
					</label> <input type="file" id="jnpxFile" name="jnpxFile"> <br>
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

				<div class="form-group">
					<label class="control-label">
						<p style='font-size: 19px; font-weight: bold;'>技能凭证</p>
					</label> <input type="file" id="jtgxxtFile" name="jtgxxtFile"> <br>
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

				<div class="form-group">
					<label class="control-label">
						<p style='font-size: 19px; font-weight: bold;'>技能凭证</p>
					</label> <input type="file" id="xlstFile" name="xlstFile"> <br>
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

				<div class="form-group">
					<label class="control-label">
						<p style='font-size: 19px; font-weight: bold;'>技能凭证</p>
					</label> <input type="file" id="jbgcFile" name="jbgcFile"> <br>
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

				<div class="form-group">
					<label class="control-label">
						<p style='font-size: 19px; font-weight: bold;'>技能凭证</p>
					</label> <input type="file" id="shzl2File" name="shzl2File"> <br>
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

				<div class="form-group">
					<label class="control-label">
						<p style='font-size: 19px; font-weight: bold;'>技能凭证</p>
					</label> <input type="file" id="yejlFile" name="yejlFile"> <br>
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

				<div class="form-group">
					<label class="control-label">
						<p style='font-size: 19px; font-weight: bold;'>技能凭证</p>
					</label> <input type="file" id="zqcjFile" name="zqcjFile"> <br>
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

				<div class="form-group">
					<label class="control-label">
						<p style='font-size: 19px; font-weight: bold;'>技能凭证</p>
					</label> <input type="file" id="yecFile" name="yecFile"> <br>
				</div>
			</div>
		</form>
	</div>

	<iframe id="id_iframe" name="nanny_iframe" style="display: none;"></iframe>
	
</body>
</html>