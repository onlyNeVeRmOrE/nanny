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
<script src="js/addSkill.js"></script>
<script src="other/DJMask/js/jquery-DJMask.2.1.1.js"></script>
<script src="other/DJMask/js/jquery.js"></script>
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
		<li class="mm-menu__item">
		<a class="mm-menu__link"
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
						<div class="form-group">
							<label class="col-sm-2 control-label">
								<p style='font-size: 19px; font-weight: bold;'>目标城市：</p>
							</label>

							<div class="col-sm-2">
								<div class="radio">
									<label> <input id="city1" type="radio" name="city"
										value="北京" required data-fv-notempty-message="请选择城市，不能为空">
										北京
									</label>
								</div>
								<div class="radio">
									<label> <input id="city2" type="radio" name="city"
										value="上海"> 上海
									</label>
								</div>
								<div class="radio">
									<label> <input id="city3" type="radio" name="city"
										value="广州"> 广州
									</label>
								</div>
								<div class="radio">
									<label> <input id="city4" type="radio" name="city"
										value="深圳"> 深圳
									</label>
								</div>
								<div class="radio">
									<label> <input id="city5" type="radio" name="city"
										value="天津"> 天津
									</label>
								</div>
								<div class="radio">
									<label> <input id="city6" type="radio" name="city"
										value="其他"> 其他
									</label>
								</div>
							</div>
						</div>

						<div class="form-group">
							<label class="col-sm-2 control-label">
								<p style='font-size: 19px; font-weight: bold;'>是否住家：</p>
							</label>
							<div class="col-sm-2">
								<div class="radio">
									<label> <input id="isLive1" type="radio" name="isLive"
										value="是" required data-fv-notempty-message="请选择是否住家，不能为空">
										是
									</label>
								</div>
								<div class="radio">
									<label> <input id="isLive2" type="radio" name="isLive"
										value="否" /> 否
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
									onclick="ShowDiv('xlstDiv','fade')">心理疏通</span>  <span
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
							<textarea class="form-control textarea-item1" id="introduce" name="introduce"
								style='resize: none; width: 843px;' placeholder="请填写自我介绍，200字以内" onchange="count();"></textarea>
							<div class="textarea-count1">
								<span class="textareaInput1">0</span>/<span class="textareaTotal1">200</span>
							</div>
						</div>

						<div class="form-group col-sm-10">
							<label class="col-sm-1 control-label">
								<p style='font-size: 19px; font-weight: bold;'>备注</p>
							</label>
							<textarea class="form-control textarea-item2" id="remark" name="remark"
								style='resize: none; width: 843px;' placeholder="请填写备注，200字以内"  onkeyUp="textLimitCheck(this, 20);"></textarea>
							<div class="textarea-count2">
								<span class="textareaInput2">0</span>/<span class="textareaTotal2">200</span>
							</div>
						</div>
					</fieldset>

					<script>
						autosize(document.querySelectorAll('textarea'));				
					</script>

					<div class="form-group col-sm-10 col-sm-offset-2">
						<div class="col-sm-10 col-sm-offset-2">
							<input type="submit" id="nannysubmit" class="btn btn-default"
								value="提 交" onclick="nanny();return false;">
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

				<div class="form-group">
					<label class="control-label">
						<p style='font-size: 19px; font-weight: bold;'>技能凭证</p>
					</label> <input type="file" id="yzcFile" name="yzcFile"> <br>
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

				<div class="form-group">
					<label class="control-label">
						<p style='font-size: 19px; font-weight: bold;'>技能凭证</p>
					</label> <input type="file" id="skhlFile" name="skhlFile"> <br>
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

				<div class="form-group">
					<label class="control-label">
						<p style='font-size: 19px; font-weight: bold;'>技能凭证</p>
					</label> <input type="file" id="shzlFile" name="shzlFile"> <br>
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

				<div class="form-group">
					<label class="control-label">
						<p style='font-size: 19px; font-weight: bold;'>技能凭证</p>
					</label> <input type="file" id="rfhlFile" name="rfhlFile"> <br>
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

				<div class="form-group">
					<label class="control-label">
						<p style='font-size: 19px; font-weight: bold;'>技能凭证</p>
					</label> <input type="file" id="jnpxFile" name="jnpxFile"> <br>
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

				<div class="form-group">
					<label class="control-label">
						<p style='font-size: 19px; font-weight: bold;'>技能凭证</p>
					</label> <input type="file" id="jtgxxtFile" name="jtgxxtFile"> <br>
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

				<div class="form-group">
					<label class="control-label">
						<p style='font-size: 19px; font-weight: bold;'>技能凭证</p>
					</label> <input type="file" id="xlstFile" name="xlstFile"> <br>
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

				<div class="form-group">
					<label class="control-label">
						<p style='font-size: 19px; font-weight: bold;'>技能凭证</p>
					</label> <input type="file" id="jbgcFile" name="jbgcFile"> <br>
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

				<div class="form-group">
					<label class="control-label">
						<p style='font-size: 19px; font-weight: bold;'>技能凭证</p>
					</label> <input type="file" id="shzl2File" name="shzl2File"> <br>
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

				<div class="form-group">
					<label class="control-label">
						<p style='font-size: 19px; font-weight: bold;'>技能凭证</p>
					</label> <input type="file" id="yejlFile" name="yejlFile"> <br>
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

				<div class="form-group">
					<label class="control-label">
						<p style='font-size: 19px; font-weight: bold;'>技能凭证</p>
					</label> <input type="file" id="zqcjFile" name="zqcjFile"> <br>
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

				<div class="form-group">
					<label class="control-label">
						<p style='font-size: 19px; font-weight: bold;'>技能凭证</p>
					</label> <input type="file" id="yecFile" name="yecFile"> <br>
				</div>

				<input type="submit" id="yecsubmit"
					class="btn btn-default col-sm-offset-1" value="提 交"
					onclick="yec();">
			</div>
		</form>
	</div>


	<script type="text/javascript">
	$(document).ready(function() {		
		var lenInput1 = $('.textarea-item1').val().length;
		var lenInput2 = $('.textarea-item2').val().length;
        $(".textarea-item1").keyup(function(){
             lenInput1 = $(this).val().length;
             if(lenInput1>=0 && lenInput1<=200){
                 $('.textareaInput1').html(lenInput1);
                 
             }
        });
        $(".textarea-item2").keyup(function(){
            lenInput2 = $(this).val().length;
            if(lenInput2>=0 && lenInput2<=200){
                $('.textareaInput2').html(lenInput2);
                
            }
       });

		$('#nannyform').formValidation({
			icon : {
				valid : 'glyphicon glyphicon-ok',
				invalid : 'glyphicon glyphicon-remove',
				validating : 'glyphicon glyphicon-refresh'
			},
			fields : {
				workCondition : {
					validators : {
						notEmpty : {
							message : '请选择工作情况，不能为空'
						}
					}
				},
				nannyEducation : {
					validators : {
						notEmpty : {
							message : '请选择学历，不能为空'
						}
					}
				},
				nannySalary : {
					validators : {
						notEmpty : {
							message : '请填写期望工资，不能为空'
						},
						regexp : {
							regexp : /^([0-9])+(\.[0-9]+)?$/,
							message : '期望工资必须为非负数'
						}
					}
				},
				nannyRestTime : {
					validators : {
						notEmpty : {
							message : '请填写期望休息天数，不能为空'
						},
						regexp : {
							regexp : /^(?:\d|[12]\d|31)$/,
							message : '期望休息天数必须为0-31的整数'
						}
					}
				},
				nation : {
					validators : {
						notEmpty : {
							message : '请填写民族，不能为空'
						},
						stringLength : {
							min : 1,
							max : 8,
							message : '超过输入长度'
						},
						regexp : {
							regexp : /^[\u4E00-\u9FA5]+$/,
							message : '民族填写错误'
						}
					}
				},
				faith : {
					validators : {
						notEmpty : {
							message : '请选择信仰，不能为空'
						}
					}
				},
				maritalStatus : {
					validators : {
						notEmpty : {
							message : '请选择婚姻状况，不能为空'
						}
					}
				},
				isChildLocal : {
					validators : {
						notEmpty : {
							message : '请选择孩子是否在本地，不能为空'
						}
					}
				},
				isParentLocal : {
					validators : {
						notEmpty : {
							message : '请选择父母是否在本地，不能为空'
						}
					}
				},
				introduce : {
					validators : {
						notEmpty : {
							message : '请填写自我介绍，不能为空'
						},
						stringLength : {
							min : 1,
							max : 200,
							message : '超过输入长度'
						}
					}
				},
				remark : {
					validators : {
						notEmpty : {
							message : '请填写备注，不能为空'
						},
						stringLength : {
							min : 1,
							max : 200,
							message : '超过输入长度'
						}
					}
				},
				'city' : {
					validators : {
						notEmpty : {
							message : '请选择至少一个城市，不能空'
						}
					}
				}

			}
		});
	});
	</script>

	<iframe id="nanny_iframe" name="nanny_iframe" style="display: none;"></iframe>
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