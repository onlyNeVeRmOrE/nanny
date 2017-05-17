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
<script src="js/getOrder.js"></script>
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

	<div id="pending" class="container">
		<div class="page-header">
			<h1>待处理预约</h1>
		</div>
		
		 
		 <!--
		<div id="aaa" class="panel panel-default">
			<div class="panel-body">
				<div>
					<img src="img/u90.png" class="img-rounded col-sm-2">
				</div>
				<div class="col-sm-6">
					<b><h2 id="replyTime">最晚答复时间：</h2></b>
					<b><h2 id="workTime">工作时间:</h2></b>
					<b><h2 id="salary">可支付工资:</h2></b>
					<b><h2 id="workPlace">工作地点:</h2></b>
				</div>
				<script>var replyTime = "111";document.getElementById("replyTime").innerHTML = "最晚答复时间："+ replyTime;</script>
				<div class="col-sm-4">
					<div>
						<input type="button" id="employerInformation"
							class="btn btn-default" value="雇主信息"
							onMouseOver="javascript:show(this,'employerDiv');"
							onMouseOut="hide(this,'employerDiv')">
					</div>
					<br>
					<div>
						<input type="button" id="contactEmployer" class="btn btn-default"
							value="联系雇主">
					</div>
					<br>
					<div>
						<input type="button" id="confirm" class="btn btn-default"
							value="确认预约" onclick=" confirmOrder();">
					</div>
					
					<script>
					function confirmOrder() {
						var msg = "您真的确定要预约吗？请确认！";  
			            if (confirm(msg)==true){  			                
			                $("#aaa").remove(); 
			            }   
					};
					</script>
				</div>
			</div>
		</div> 


		<input type="button" id="conf" class="btn btn-default" value="新增预约"
			onclick="qqq()"> <input type="button" id="conf"
			class="btn btn-default" value="添加信息" onclick="qqqa()">

		<script>
			function qqq() {
				alert("111aaa");
				var divTop = document.createElement("div");
				var divNext = document.createElement("div");
				var divImg = document.createElement("div");
				var img = document.createElement('img');
				var divP = document.createElement("div");
				var replyTimeB = document.createElement("b");
				var workTimeB = document.createElement("b");
				var salaryB = document.createElement("b");
				var workPlaceB = document.createElement("b");
				var replyTimeH = document.createElement("h2");
				var workTimeH = document.createElement("h2");
				var salaryH = document.createElement("h2");
				var workPlaceH = document.createElement("h2");
				var divBtn = document.createElement("div");
				var divInformation = document.createElement("div");
				var btnInformation = document.createElement("BUTTON");
				var informationValue = document.createTextNode("雇主信息");
				var information = document.createElement("div");
				var nameH = document.createElement("h6");
				var phoneH = document.createElement("h6");
				var mailH = document.createElement("h6");
				var placeH = document.createElement("h6");
				var birthdayH = document.createElement("h6");
				var nameB = document.createElement("b");
				var phoneB = document.createElement("b");
				var mailB = document.createElement("b");
				var placeB = document.createElement("b");
				var birthdayB = document.createElement("b");

				var divContact = document.createElement("div");
				var btnContact = document.createElement("BUTTON");
				var contactValue = document.createTextNode("联系雇主");
				var divConfirm = document.createElement("div");
				var btnConfirm = document.createElement("BUTTON");
				var confirmValue = document.createTextNode("确认预约");
				var br1 = document.createElement("br");
				var br2 = document.createElement("br");
				var br3 = document.createElement("br");

				divTop.className = "panel panel-default";
				divNext.className = "panel-body";
				img.src = 'img/u90.png';
				img.className = "img-rounded col-sm-2";
				divP.className = "col-sm-4";
				information.className = "col-sm-4";
				replyTimeH.innerHTML = '最晚答复时间：';
				workTimeH.innerHTML = '工作时间:';
				salaryH.innerHTML = '可支付工资:';
				workPlaceH.innerHTML = '工作地点:';
				nameH.innerHTML = '姓名：';
				phoneH.innerHTML = '手机号:';
				mailH.innerHTML = '邮箱号:';
				placeH.innerHTML = '居住地址:';
				birthdayH.innerHTML = '婴儿出生日期:';
				divBtn.className = "col-sm-1";
				btnInformation.className = "btn btn-default";
				btnContact.className = "btn btn-default";
				btnConfirm.className = "btn btn-default";
				divTop.setAttribute("id", "top");
				replyTimeH.setAttribute("id", "replyTime");
				workTimeH.setAttribute("id", "workTime");
				salaryH.setAttribute("id", "salary");
				workPlaceH.setAttribute("id", "workPlace");
				nameH.setAttribute("id", "name");
				phoneH.setAttribute("id", "phone");
				mailH.setAttribute("id", "mail");
				placeH.setAttribute("id", "place");
				birthdayH.setAttribute("id", "birthday");
				btnInformation.setAttribute("id", "information");
				btnContact.setAttribute("id", "contact");
				btnConfirm.setAttribute("id", "confirm");

				divTop.appendChild(divNext);
				divNext.appendChild(divImg);
				divNext.appendChild(divP);
				divNext.appendChild(information);
				divNext.appendChild(divBtn);

				divImg.appendChild(img);
				divP.appendChild(replyTimeB);
				replyTimeB.appendChild(replyTimeH);
				divP.appendChild(workTimeB);
				workTimeB.appendChild(workTimeH);
				divP.appendChild(salaryB);
				salaryB.appendChild(salaryH);
				divP.appendChild(workPlaceB);
				workPlaceB.appendChild(workPlaceH);

				information.appendChild(nameB);
				information.appendChild(phoneB);
				information.appendChild(mailB);
				information.appendChild(placeB);
				information.appendChild(birthdayB);

				nameB.appendChild(nameH);
				phoneB.appendChild(phoneH);
				mailB.appendChild(mailH);
				placeB.appendChild(placeH);
				birthdayB.appendChild(birthdayH);

				divBtn.appendChild(divInformation);
				divBtn.appendChild(br1);
				divBtn.appendChild(divContact);
				divBtn.appendChild(br2);

				divBtn.appendChild(divConfirm);
				divInformation.appendChild(btnInformation);
				divContact.appendChild(btnContact);
				divConfirm.appendChild(btnConfirm);
				btnInformation.appendChild(informationValue);
				btnContact.appendChild(contactValue);
				btnConfirm.appendChild(confirmValue);

				var pending = document.getElementById("pending");
				pending.appendChild(divTop);

				function addEvent(element, e, fn) {
					if (element.addEventListener) {
						element.addEventListener(e, fn, false);
					} else {
						element.attachEvent("on" + e, fn);
					}
				}

				var element = document.getElementById("confirm");
				addEvent(element, "click", confirmOrder);

				function confirmOrder() {
					var msg = "您真的确定要预约吗？请确认！";
					if (confirm(msg) == true) {
						$("#top").remove();
					}
				}

				/*
				function show(obj, id) {
					var objDiv = $("#" + id + "");
					$(objDiv).css("display", "block");
					$(objDiv).css("left", event.clientX);
					$(objDiv).css("top", event.clientY + 10);
				}
				function hide(obj, id) {
					var objDiv = $("#" + id + "");
					$(objDiv).css("display", "none");
				};*/
			}
		</script>
				
		<script>
		function qqqa() {
			var data=[
			    [
			        {
			            "theLastTime": "2017-05-02",
			            "address": "北京",
			            "highSalary": "12000",
			            "startTime": "2017-05-09",
			            "endTime": "2017-05-08",
			            "id": 1,
			            "lowSalary": "9000",
			            "nanny_id": 7,
			            "employer_id": 8
			        },
			        {
			            "address": "北京市海淀区北京交通大学",
			            "phoneNumber": "18707784338",
			            "city": "北京",
			            "user_id": 8,
			            "id_card": "430623199511051634",
			            "mail":"hxl@qk.com",
			            "name": "祁家祯",
			            "pic_url": "./imgResources/8.jpg"
			        },
			        {
			            "baby_weight": 3,
			            "education": "专科",
			            "is_home": "是",
			            "mother_age": 25,
			            "can_pay": 9500,
			            "experience_need": "2年以上",
			            "baby_birth": "2012/1/1",
			            "user_id": 8,
			            "work_address": "北京市海淀区",
			            "mother_height": 166,
			            "vacation": 2,
			            "mother_weight": 50,
			            "childbirth_count": 1,
			            "childbirth_method": "顺产"
			        }
			    ]
			];
			var json = eval(data);	
			var replyTime = json[0][0].theLastTime;
			var workStartTime = json[0][0].startTime;
			var workendTime = json[0][0].endTime;
			var lowSalary = json[0][0].lowSalary;
			var highSalary = json[0][0].highSalary;
			var workPlace = json[0][0].address;
			document.getElementById("replyTime").innerHTML = "最晚答复时间：" + replyTime;
			document.getElementById("workTime").innerHTML = "工作时间:" + workStartTime + "至" + workendTime;
			document.getElementById("salary").innerHTML = "可支付工资:" + lowSalary + "元至" + highSalary + "元";
			document.getElementById("workPlace").innerHTML = "工作地点:" + workPlace;
			
			var name = json[0][1].name;
			var phone = json[0][1].phoneNumber;
			var mail = json[0][1].mail;
			var place = json[0][1].address;
			var birthday = json[0][2].baby_birth;
			document.getElementById("name").innerHTML = "姓名：" + name;
			document.getElementById("phone").innerHTML = "手机号:" + phone;
			document.getElementById("mail").innerHTML = "邮箱号:" + mail;
			document.getElementById("place").innerHTML = "居住地点:" + place;
			document.getElementById("birthday").innerHTML = "婴儿出生日期:" + birthday;
		}
		</script>
	</div>
	
	
	

	<div id="employerDiv" style="position: absolute; display: none; border: 1px solid silver; background: silver;">
		<b><h2 id="name">姓名：</h2></b>
		<b><h2 id="phone">手机号:</h2></b>
		<b><h2 id="mail">邮箱号:</h2></b>
		<b><h2 id="place">居住地点:</h2></b>
		<b><h2 id="birthday">婴儿出生日期:</h2></b>
	</div> -->
</body>
</html>