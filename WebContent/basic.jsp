<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

<head>
<meta charset="utf-8">
<title>用户中心</title>
<link href="css/addskill.css" type="text/css" rel="stylesheet" />
<link href="css/imgUp.css" type="text/css" rel="stylesheet" />
<script src="js/jquery.js"></script>
<script src="js/ajaxUtils.js"></script>
<script src="js/basic.js"></script>
<script src="js/nanny.js"></script>
<script src="js/employer.js"></script>
<script src="js/showdiv.js"></script>
<script src="js/identBasic.js"></script>
<script src="js/imgUp.js"></script>
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
<link rel="stylesheet" type="text/css"
	href="other/jquery-nav/css/default.css">
<link rel="stylesheet" href="other/jquery-nav/css/style.min.css">
<script src="other/jquery-nav/js/production/materialMenu.min.js"></script>
<link rel="stylesheet" href="other/jquery-nav/css/style.css">

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
				<h1>基本信息</h1>
			</div>
			<div class="col-sm-8">
				<form action="" method="post" id="basicform" name="basicform"
					class="form-horizontal" enctype="multipart/form-data"
					target="basic_iframe">
					<fieldset>
						<div class="form-group">
							<label class="col-sm-3 control-label">
								<p style='font-size: 19px; font-weight: bold;'>真实姓名</p>
							</label>
							<div class="col-sm-8">
								<input type="text" class="form-control" id="username"
									name="username" value="" placeholder="2-4位中文名" />
							</div>
						</div>

						<div class="form-group">
							<label class="col-sm-3 control-label">
								<p style='font-size: 19px; font-weight: bold;'>身份证号</p>
							</label>
							<div class="col-sm-8">
								<input type="text" class="form-control" id="IDnumber"
									name="IDnumber" value="" placeholder="18位有效身份证号" />
							</div>
						</div>

						<div class="form-group">
							<label class="col-sm-3 control-label">
								<p style='font-size: 19px; font-weight: bold;'>手机号</p>
							</label>
							<div class="col-sm-8">
								<input type="text" class="form-control" id="phone" name="phone"
									value="" placeholder="11位有效手机号" />
							</div>
						</div>

						<div class="form-group">
							<label class="col-sm-3 control-label">
								<p style='font-size: 19px; font-weight: bold;'>称呼</p>
							</label>
							<div class="col-sm-8">
								<select class="form-control" id="appellation" name="appellation">
									<option value="">请选择</option>
									<option value="先生">先生</option>
									<option value="女士">女士</option>
								</select>
							</div>
						</div>

						<div class="form-group">
							<label class="col-sm-3 control-label">
								<p style='font-size: 19px; font-weight: bold;'>所在城市</p>
							</label>
							<div class="col-sm-8">
								<input type="text" class="form-control" id="city" name="city"
									value="" placeholder="如：北京" />
							</div>
						</div>

						<div class="form-group">
							<label class="col-sm-3 control-label">
								<p style='font-size: 19px; font-weight: bold;'>居住地</p>
							</label>
							<div class="col-sm-8">
								<input type="text" class="form-control" id="residence"
									name="residence" value="" placeholder="如：xx省xx市xx县xx路" />
							</div>
						</div>

					</fieldset>

					<div class="form-group">
						<div class="col-sm-10 col-sm-offset-3">
							<input type="submit" id="basicsubmit" class="btn btn-default"
								value="提 交" onclick="basic();return false;">
						</div>
					</div>
				</form>
			</div>

			<div class="col-sm-4">
				<form class="imgform" enctype="multipart/form-data" action=""
					method="post" target="img_iframe">
					<div id="preview">
						<img id="imghead" width=100% height=auto border=0
							src='img/noneImg.png'>
					</div>
					<input type="file" id="previewImg" name="previewImg"
						accept="image/gif, image/jpg, image/jpeg, image/png"
						onchange="previewImage(this)" /> <br> <input type="submit"
						class="btn btn-primary col-sm-offset-2" id="uploadImg"
						value="上传图片" onclick="uploadImage();" />
				</form>
			</div>
		</div>
	</div>

	<script>
	function previewImage(file) {
		var MAXWIDTH = 170;
		var MAXHEIGHT = 220;
		var div = document.getElementById('preview');
		if (file.files && file.files[0]) {
			div.innerHTML = '<img id=imghead>';
			var img = document
					.getElementById('imghead');
			img.onload = function() {
				var rect = clacImgZoomParam(
						MAXWIDTH, MAXHEIGHT,
						img.offsetWidth,
						img.offsetHeight);
				img.width = rect.width;
				img.height = rect.height;
				img.style.marginTop = rect.top+ 'px';
			}
			var reader = new FileReader();
			reader.onload = function(evt) {
				img.src = evt.target.result;
			}
			reader.readAsDataURL(file.files[0]);
		} else {
			var sFilter = 'filter:progid:DXImageTransform.Microsoft.AlphaImageLoader(sizingMethod=scale,src="';
			file.select();
			var src = document.selection
					.createRange().text;
			div.innerHTML = '<img id=imghead>';
			var img = document
					.getElementById('imghead');
			img.filters
					.item('DXImageTransform.Microsoft.AlphaImageLoader').src = src;
			var rect = clacImgZoomParam(MAXWIDTH,
					MAXHEIGHT, img.offsetWidth,
					img.offsetHeight);
			status = ('rect:' + rect.top + ','
					+ rect.left + ',' + rect.width
					+ ',' + rect.height);
			div.innerHTML = "<div id=divhead style='width:"+rect.width+"px;height:"+rect.height+"px;margin-top:"+rect.top+"px;"+sFilter+src+"\"'></div>";
		}
	}
	function clacImgZoomParam(maxWidth, maxHeight,width, height) {
		var param = {
			top : 0,
			left : 0,
			width : width,
			height : height
		};
		if (width > maxWidth || height > maxHeight) {
			rateWidth = width / maxWidth;
			rateHeight = height / maxHeight;

			if (rateWidth > rateHeight) {
				param.width = maxWidth;
				param.height = Math.round(height
						/ rateWidth);
			} else {
				param.width = Math.round(width
						/ rateHeight);
				param.height = maxHeight;
			}
		}
		param.left = Math
				.round((maxWidth - param.width) / 2);
		param.top = Math
				.round((maxHeight - param.height) / 2);
		return param;
	}
	</script>

	<script type="text/javascript">
	$(document).ready(function() {
		$('#basicform').formValidation({
			icon : {
				valid : 'glyphicon glyphicon-ok',
				invalid : 'glyphicon glyphicon-remove',
				validating : 'glyphicon glyphicon-refresh'
			},
			fields : {
				username : {
					validators : {
						notEmpty : {
							message : '请填写真实姓名，不能为空'
						},
						stringLength : {
							max : 4,
							message : '超过输入长度'
						},
						regexp : {
							regexp : /^[\u4E00-\u9FA5]+$/,
							message : '真实姓名填写错误，必须为中文'
						}
					}
				},
				IDnumber : {
					validators : {
						notEmpty : {
							message : '请填写身份证号，不能为空'
						},
						stringLength : {
							min : 1,
							max : 18,
							message : '超过输入长度'
						},
						regexp : {
							regexp : /^[1-9]\d{5}[1-9]\d{3}((0\d)|(1[0-2]))(([0|1|2]\d)|3[0-1])\d{3}([0-9]|x|X)$/,
							message : '请输入18位有效的身份证号'
						}
					}
				},
				phone : {
					validators : {
						notEmpty : {
							message : '请填写手机号，不能为空'
						},
						stringLength : {
							min : 1,
							max : 11,
							message : '超过输入长度'
						},
						regexp : {
							regexp : /^0?(13[0-9]|15[012356789]|17[013678]|18[0-9]|14[57])[0-9]{8}$/,
							message : '请输入11位有效的手机号'
						}
					}
				},
				appellation : {
					validators : {
						notEmpty : {
							message : '请选择称呼，不能为空'
						}
					}
				},
				city : {
					validators : {
						notEmpty : {
							message : '请填写所在城市，不能为空'
						},
						stringLength : {
							min : 1,
							max : 6,
							message : '超过输入长度'
						},
						regexp : {
							regexp : /^[\u4E00-\u9FA5]+$/,
							message : '请输入正确的城市'
						}
					}
				},
				residence : {
					validators : {
						notEmpty : {
							message : '请填写具体居住地，不能为空'
						},
						stringLength : {
							min : 1,
							max : 24,
							message : '超过输入长度'
						},
						regexp : {
							regexp : /^[\u4e00-\u9fa5_a-zA-Z0-9]+$/,
							message : '请输入正确的居住地'
						}
					}
				}
			}
		});
	});
	</script>

	<iframe id="basic_iframe" name="basic_iframe" style="display: none;"></iframe>
	<iframe id="img_iframe" name="img_iframe" style="display: none;"></iframe>
</body>

</html>