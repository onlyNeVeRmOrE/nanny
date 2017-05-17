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
<script src="js/needSkill.js"></script>
<script src="other/jquery/jquery-3.1.1/jquery-3.1.1.min.js"></script>
<script src="other/DJMask/js/jquery-DJMask.2.1.1.js"></script>
<script src="other/DJMask/js/jquery.js"></script>
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

						<div class="form-group">
							<label class="col-sm-2 control-label">
								<p style='font-size: 19px; font-weight: bold;'>是否住家：</p>
							</label>

							<div class="col-sm-2">
								<div class="radio">
									<label> <input type="radio" id="isNeedLive1"
										name="isNeedLive" value="是" required
										data-fv-notempty-message="请选择是否住家"> 是
									</label>
								</div>

								<div class="radio">
									<label> <input type="radio" id="isNeedLive2"
										name="isNeedLive" value="否"> 否
									</label>
								</div>
							</div>
						</div>
						
						<div class="form-group">
							<label class="col-sm-2 control-label">
								<p style='font-size: 19px; font-weight: bold;'>技能标签：</p>
							</label>
							<div>
								<span id="yzc" class="label label-default">月子餐</span> 
								<span id="skhl" class="label label-default" onclick="ShowDiv('skhlDiv','fade')">伤口护理</span>
								<span id="shzl" class="label label-default"
									onclick="ShowDiv('shzlDiv','fade')">生活照料</span> <span id="rfhl"
									class="label label-default" onclick="ShowDiv('rfhlDiv','fade')">乳房护理</span>
								<span id="jnpx" class="label label-default"
									onclick="ShowDiv('jnpxDiv','fade')">技能培训</span> <span
									id="jtgxxt" class="label label-default"
									onclick="ShowDiv('jtgxxtDiv','fade')">家庭关系协调</span> <span
									id="xlst" class="label label-default"
									onclick="ShowDiv('xlstDiv','fade')">心理疏通</span> <span
									id="jbgc" class="label label-default"
									onclick="ShowDiv('jbgcDiv','fade')">疾病观察</span> <span
									id="shzl2" class="label label-default"
									onclick="ShowDiv('shzl2Div','fade')">生活照料</span> <span
									id="yejl" class="label label-default"
									onclick="ShowDiv('yejlDiv','fade')">育儿记录</span> <span id="zqcj"
									class="label label-default" onclick="ShowDiv('zqcjDiv','fade')">早期促进</span>
								<span id="yec" class="label label-default"
									onclick="ShowDiv('yecDiv','fade')">婴儿操</span>
							</div>
												
							<div class="col-sm-offset-2">
								<br> <input type="button" id="viewSkill1"
									class="btn btn-sm btn-info" value="产妇方面技能说明"
									onclick='DJMask.open({
									　　width:"1000px",
									　　height:"505px",
									　　title:"产妇方面技能说明",
									　　content:"<p>月嫂基本技能：<br>1.月子餐<br>月子餐的营养搭配非常重要，既要促进伤口愈合，为母乳提供足够的营养。<br>而且产妇饮食有诸多禁忌，如不能吃回奶食物，不能摄入过多糖分，要少食多餐等。<br>2.伤口护理<br>产妇的会阴部护理、剖腹产护理、恶露排净观察等，也是月嫂必备技能之一。如果产后没有恢复好，对产妇以后的健康非常不利。<br>3.生活照料<br>因为民间有很多“捂月子”、“吃鸡蛋”、“不碰水”等不好的月子传统，让产妇的月子做得非常不卫生、不健康。严重的甚至会危及生命。“捂月子”活活热死的新闻，时见报端。<br>所以月嫂一定要摒弃这些观念，让产妇的月子坐得科学、舒心。照顾好产妇的个人卫生、房间温湿度调控、空气流通等。<br>4.乳房护理<br>专业月嫂不一定都有催乳师证，但一定会有乳房护理技能。<br>预防乳头皲裂、预防乳汁淤积、乳房按摩等，防治乳腺炎的发生。<br>5.技能培训<br>月嫂并不是只做好分内团工作就可以的，如果一旦下户，家庭就手忙脚乱，这也不能算好月嫂。<br>月嫂要把照料宝宝的方法、注意事项，手把手教给家人，让他们能顺利过渡，自己也能照顾好宝宝。<br><br>月嫂升级技能:<br>1.家庭关系协调<br>部分月嫂处事能力很强，能够巧妙化解家庭成员之间的矛盾。说服老人摒弃错误的坐月子理念，如捂月子、给宝宝垫枕头等。<br>有月嫂在，还能作为产妇和家中老人的缓冲。家中老人照顾产妇时，难免会有疏漏。月嫂协调得好，可以避免产妇受委屈，也避免让老人觉得自己吃力不讨好。<br>2.心理疏通<br>由于产妇生理和心里原因，有可能诱发产后抑郁的情况。一般月嫂会多跟产妇沟通，避免产妇陷入自我纠结中。<br>而经过培训的月嫂，能做到抑郁症观察。小部分月嫂甚至考了心理咨询师证件，让产妇心理状况恢复。</p>"
								　　});'>
								<input type="button" id="viewSkill2" class="btn btn-sm btn-info"
									value="婴儿方面技能说明"
									onclick='DJMask.open({
									　　width:"1000px",
									　　height:"365px",
									　　title:"婴儿方面技能说明",
									　　content:"<p>月嫂基本技能:<br>1.疾病观察<br>月嫂需判定宝宝是否患有尿布疹、鹅口疮、新生儿黄疸等，并对某些新生儿疾病有预防措施。<br>月嫂经验足够，会从宝宝的便便、体重增长等方面，判断宝宝的身体状况。<br>2.生活照料<br>照料宝宝的日常起居，包括喂奶、喂水、换尿布、洗澡、抚触；日光浴、空气浴、洗浴；婴儿房温湿度调节、通风、清理；宝宝奶瓶、衣物等清洗。<br>这些是月嫂最基本、必须掌握的技能，也是占用月嫂时间最多的工作内容。<br>3.育儿记录<br>宝宝每日喂奶记录、宝宝大小便情况记录、宝宝体重测量记录等。<br>月嫂帮宝妈做育儿日记，不仅仅能让宝妈见证宝宝一天天长大，还能从中看出宝宝的身体状况。<br><br>月嫂升级技能:<br>1.早期促进<br>部分月嫂不仅仅是跟宝宝互动交流，而是对宝宝进行感知、语言动作训练，情感与社会行为培养，开发大脑并给予宝宝美妙的情感抚慰。<br>2.婴儿操<br>有些月嫂可以指导产妇为宝宝做婴儿操，锻炼宝宝的四肢协调能力，能让宝宝训练完成抬头、抓握等动作，让宝宝发育更健康。</p>"
								　　});'>
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
							<div class="col-sm-8">
								<div class="row no-gutter">
									<div class="col-sm-2">
										<input type="text" class="form-control" id="babyyear"
											name="year" placeholder="年">
									</div>

									<div class="col-sm-2">
										<input type="text" class="form-control" id="babymonth"
											name="month" placeholder="月">
									</div>

									<div class="col-sm-2">
										<input type="text" class="form-control" id="babydate"
											name="date" placeholder="日">
									</div>
								</div>
								<input type="hidden" name="babyBirthday">
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

					<div class="form-group">
						<div class="col-sm-10 col-sm-offset-2">
							<input type="submit" id="employersubmit" class="btn btn-default"
								value="提 交" onclick="employer();return false;">
						</div>
					</div>
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

				<input type="submit" id="yzcsubmit"
					class="btn btn-default col-sm-offset-1" value="提 交"
					onclick="yzc();">
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

				<input type="submit" id="skzlsubmit"
					class="btn btn-default col-sm-offset-1" value="提 交"
					onclick="skhl();">
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

				<input type="submit" id="shzlsubmit"
					class="btn btn-default col-sm-offset-1" value="提 交"
					onclick="shzl();">
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

				<input type="submit" id="rfhlsubmit"
					class="btn btn-default col-sm-offset-1" value="提 交"
					onclick="rfhl();">
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

				<input type="submit" id="jnpxsubmit"
					class="btn btn-default col-sm-offset-1" value="提 交"
					onclick="jnpx();">
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

				<input type="submit" id="jtgxxtsubmit"
					class="btn btn-default col-sm-offset-1" value="提 交"
					onclick="jtgxxt();">
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

				<input type="submit" id="xlstsubmit"
					class="btn btn-default col-sm-offset-1" value="提 交"
					onclick="xlst();">
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

				<input type="submit" id="jbgcsubmit"
					class="btn btn-default col-sm-offset-1" value="提 交"
					onclick="jbgc();">
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

				<input type="submit" id="shzl2submit"
					class="btn btn-default col-sm-offset-1" value="提 交"
					onclick="shzl2();">
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

				<input type="submit" id="yejlsubmit"
					class="btn btn-default col-sm-offset-1" value="提 交"
					onclick="yejl();">
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

				<input type="submit" id="zqcjsubmit"
					class="btn btn-default col-sm-offset-1" value="提 交"
					onclick="zqcj();">
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

				<input type="submit" id="yecsubmit"
					class="btn btn-default col-sm-offset-1" value="提 交"
					onclick="yec();">
			</div>
		</form>
	</div>


	<script type="text/javascript">
    $(document).ready(function() {
        $('#employerform').formValidation({
            icon: {
                valid: 'glyphicon glyphicon-ok',
                invalid: 'glyphicon glyphicon-remove',
                validating: 'glyphicon glyphicon-refresh'
            },
            fields: {
                babyBirthday: {
                    excluded: false,
                    validators: {
                        notEmpty: {
                            message: '请填写每一个空格',
                            transformer: function($field, validatorName) {
                                var y = $('#employerform').find('[name="year"]').val(),
                                    m = $('#employerform').find('[name="month"]').val(),
                                    d = $('#employerform').find('[name="date"]').val();
                                return (y === '' || m === '' || d === '') ? '' : [y, m, d].join('.');
                            }
                        },
                        date: {
                            format: 'YYYY.MM.DD',
                            separator: '.',
                            transformer: function($field, validatorName) {
                                var y = $('#employerform').find('[name="year"]').val(),
                                    m = $('#employerform').find('[name="month"]').val(),
                                    d = $('#employerform').find('[name="date"]').val();
                                return [y, m, d].join('.');
                            },
                            message: '请输入正确的婴儿出生日期'
                        }
                    }
                },
                workPlace: {
                    validators: {
                        notEmpty: {
                            message: '请填写需要工作住址，不能为空'
                        },
                        stringLength: {
                            min: 1,
                            max: 30,
                            message: '超出长度限制'
                        },
                        regexp: {
                            regexp: /^[\u4e00-\u9fa5_a-zA-Z0-9]+$/,
                            message: '请输入正确的工作住址'
                        }
                    }
                },
                experience: {
                    validators: {
                        notEmpty: {
                            message: '请选择经验需要，不能为空'
                        }
                    }
                },
                employerEducation: {
                    validators: {
                        notEmpty: {
                            message: '请选择学历，不能为空'
                        }
                    }
                },
                employerSalary: {
                    validators: {
                        notEmpty: {
                            message: '请填写可支付工资，不能为空'
                        },
                        regexp: {
                            regexp: /^([0-9])+(\.[0-9]+)?$/,
                            message: '可支付工资必须为非负数'
                        }
                    }
                },
                employerRestTime: {
                    validators: {
                        notEmpty: {
                            message: '请填写月嫂可休息天数，不能为空'
                        },
                        regexp: {
                            regexp: /^(?:\d|[12]\d|31)$/,
                            message: '期望休息天数必须为0-31的整数'
                        }
                    }
                },
                babyBirthWeight: {
                    validators: {
                        notEmpty: {
                            message: '请填写婴儿体重，不能为空'
                        },
                        regexp: {
                            regexp: /^([0-9])+(\.[0-9]+)?$/,
                            message: '婴儿出生体重必须为非负数'
                        }
                    }
                },
                motherAge: {
                    validators: {
                        notEmpty: {
                            message: '请填写母亲年龄，不能为空'
                        },
                        regexp: {
                            regexp: /^[1-9]*[1-9][0-9]*$/,
                            message: '母亲年龄必须为正整数'
                        }
                    }
                },
                motherWeight: {
                    validators: {
                        notEmpty: {
                            message: '请填写母亲体重，不能为空'
                        },
                        regexp: {
                            regexp: /^([0-9])+(\.[0-9]+)?$/,
                            message: '母亲体重必须为非负数'
                        }
                    }
                },
                motherHeight: {
                    validators: {
                        notEmpty: {
                            message: '请填写母亲身高，不能为空'
                        },
                        regexp: {
                            regexp: /^([0-9])+(\.[0-9]+)?$/,
                            message: '母亲身高必须为非负数'
                        }
                    }
                },
                deliveryTimes: {
                    validators: {
                        notEmpty: {
                            message: '请填写分娩次数，不能为空'
                        },
                        regexp: {
                            regexp: /^(([1-9]\d*)|\d)$/,
                            message: '分娩次数必须为整数'
                        }
                    }
                },
                deliveryMode: {
                    validators: {
                        notEmpty: {
                            message: '请选择分娩方式，不能为空'
                        }
                    }
                },
                healthReprotFile: {
                    validators: {
                        file: {
                            extension: 'pdf',
                            type: 'application/pdf',
                            maxSize: 10 * 1024 * 1024,
                            message: '请上传pdf文件且不能超过10M.'
                        },
                        notEmpty: {
                            message: '请选择上传文件，不能为空'
                        }
                    }
                }
            }
        }).on('keyup', 'input[name="year"], input[name="month"], input[name="date"]', 'success.form.fv', function(e) {
            $('#employerform').formValidation('revalidateField', 'babyBirthday');
            e.preventDefault();
            $('#employerform').data('formValidation').disableSubmitButtons(true);
        });
    });
    </script>

	<iframe id="employer_iframe" name="employer_iframe"
		style="display: none;"></iframe>
		<iframe id="yzc_iframe" name="yzc_iframe" style="display: none;"></iframe>
	<iframe id="skhl_iframe" name="skhl_iframe" style="display: none;"></iframe>
	<iframe id="shzl_iframe" name="shzl_iframe" style="display: none;"></iframe>
	<iframe id="rfhl_iframe" name="rfhl_iframe" style="display: none;"></iframe>
	<iframe id="jnpx_iframe" name="jnpx_iframe" style="display: none;"></iframe>
	<iframe id="jtgxxt_iframe" name="jtgxxt_iframe" style="display: none;"></iframe>
	<iframe id="xlst_iframe" name="xlst_iframe" style="display: none;"></iframe>
	<iframe id="jbgc_iframe" name="jbgc_iframe" style="display: none;"></iframe>
	<iframe id="shzl2_iframe" name="shzl2_iframe" style="display: none;"></iframe>
	<iframe id="yejl_iframe" name="yejl_iframe" style="display: none;"></iframe>
	<iframe id="zqcj_iframe" name="zqcj_iframe" style="display: none;"></iframe>
	<iframe id="yec_iframe" name="yec_iframe" style="display: none;"></iframe>
</body>
</html>