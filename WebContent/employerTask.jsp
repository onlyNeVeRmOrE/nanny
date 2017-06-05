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
<script src="js/employerTask.js"></script>
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
<script type="text/javascript" src="js/employerTask.js"></script>
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
	
	var currentEmail = "<%=session.getAttribute("sessionName")%>";
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

#starttwo0 .star_score {
	background: url(img/starky.png);
}

#starttwo0 .star_score a:hover {
	background: url(img/starsy.png);
	left: 0;
}

#starttwo0 .star_score a.clibg {
	background: url(img/starsy.png);
	left: 0;
}

#starttwo1 .star_score {
	background: url(img/starky.png);
}

#starttwo1 .star_score a:hover {
	background: url(img/starsy.png);
	left: 0;
}

#starttwo1 .star_score a.clibg {
	background: url(img/starsy.png);
	left: 0;
}

#starttwo2 .star_score {
	background: url(img/starky.png);
}

#starttwo2 .star_score a:hover {
	background: url(img/starsy.png);
	left: 0;
}

#starttwo2 .star_score a.clibg {
	background: url(img/starsy.png);
	left: 0;
}

#starttwo3 .star_score {
	background: url(img/starky.png);
}

#starttwo3 .star_score a:hover {
	background: url(img/starsy.png);
	left: 0;
}

#starttwo3 .star_score a.clibg {
	background: url(img/starsy.png);
	left: 0;
}

#starttwo4 .star_score {
	background: url(img/starky.png);
}

#starttwo4 .star_score a:hover {
	background: url(img/starsy.png);
	left: 0;
}

#starttwo4 .star_score a.clibg {
	background: url(img/starsy.png);
	left: 0;
}

#starttwo5 .star_score {
	background: url(img/starky.png);
}

#starttwo5 .star_score a:hover {
	background: url(img/starsy.png);
	left: 0;
}

#starttwo5 .star_score a.clibg {
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
				<h2><b>月嫂信息<b></h2>
			</legend>
			<h3 id="name" class="col-sm-4" style='float: left; display: inline;'>姓名：</h3>
			<h3 id="phone" class="col-sm-4" style='float: left; display: inline;'>手机号：</h3>
			<h3 id="mail" class="col-sm-4" style='float: left; display: inline;'>邮箱号：</h3>
			<h3 id="residence" class="col-sm-6"
				style='float: left; display: inline;'>居住地：</h3>
			<h3 id="workTime" class="col-sm-6"
				style='float: left; display: inline;'>工作时间：</h3>
			<h3 id="skill" class="col-sm-2" style='float: left; display: inline;'>技能标签：</h3>
			<div id="nannymain" role="main">
				<ul id="nannytiles">
					<br><br><br><br><br><br><br><br><br><br><br><br>
					<!-- End of grid blocks -->
				</ul>
			</div>
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
			<input type="button" class="btn  btn-default " value="第二栏"
				onclick="qaq()"> <input type="button"
				class="btn  btn-default " value="第一栏" onclick="qaqw()">
			<script>
			function qaqw() {
				var data=[
				    [
				        {
				            "skill": "技能培训",
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
				            "residence": "北京市海淀区北京交通大学",
				            "phone": "11111",
				            "city": "北京",
				            "user_id": 8,
				            "id_card": "430623199511051634",
				            "name": "祁家祯",
				            "mail": "hxl@qk.com",
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
				    ],
				    [],
				    [
				    	{
				    		"skillName": "伤口护理"
				    	},
				    	{
				    		"skillName": "婴儿操"
				    	},
				    	{
				    		"skillName": "月子餐"
				    	}
				    ]
				];
				var json = eval(data);	
				var name = json[0][1].name;
				var phone = json[0][1].phone;
				var mail = json[0][1].mail;
				var residence = json[0][1].residence;
				var startTime = json[0][0].startTime;
				var endTime = json[0][0].endTime;
				document.getElementById("name").innerHTML = "姓名：" + name;
				document.getElementById("phone").innerHTML = "手机号:" + phone;
				document.getElementById("mail").innerHTML = "邮箱号:" + mail;
				document.getElementById("residence").innerHTML = "居住地:" + residence;
				document.getElementById("workTime").innerHTML = "工作时间:" + startTime + "至" + endTime;
				var $tiles = $('#nannytiles'), $handler = $('li', $tiles), $main = $('#nannymain'), $window = $(window), $document = $(document), options = {
					autoResize : true, 
					container : $main, 
					offset : 20,
					itemWidth : 280
				};
				var html = '';
				for (var i = 0, l = json[2].length; i < l; i++) {
					if (json[2][i].skillName == "月子餐") {
						html += '<span class="label label-primary">月子餐</span>';
						html += '&nbsp;&nbsp;';
					}
					if (json[2][i].skillName == "伤口护理") {
						html += '<span class="label label-primary">伤口护理</span>';
						html += '&nbsp;&nbsp;';
					}
					if (json[2][i].skillName == "生活照料") {
						html += '<span class="label label-primary">生活照料</span>';
						html += '&nbsp;&nbsp;';
					}
					if (json[2][i].skillName == "乳房护理") {
						html += '<span class="label label-primary">乳房护理</span>';
						html += '&nbsp;&nbsp;';
					}
					if (json[2][i].skillName == "技能培训") {
						html += '<span class="label label-primary">技能培训</span>';
						html += '&nbsp;&nbsp;';
					}
					if (json[2][i].skillName == "家庭关系协调") {
						html += '<span class="label label-primary">家庭关系协调</span>';
						html += '&nbsp;&nbsp;';
					}
					if (json[2][i].skillName == "心理疏通") {
						html += '<span class="label label-primary">心理疏通</span>';
						html += '&nbsp;&nbsp;';
					}
					if (json[2][i].skillName == "疾病观察") {
						html += '<span class="label label-primary">疾病观察</span>';
						html += '&nbsp;&nbsp;';
					}
					if (json[2][i].skillName == "生活照料2") {
						html += '<span class="label label-primary">生活照料2</span>';
						html += '&nbsp;&nbsp;';
					}
					if (json[2][i].skillName == "育儿记录") {
						html += '<span class="label label-primary">育儿记录</span>';
						html += '&nbsp;&nbsp;';
					}
					if (json[2][i].skillName == "早期促进") {
						html += '<span class="label label-primary">早期促进</span>';
						html += '&nbsp;&nbsp;';
					}
					if (json[2][i].skillName == "婴儿操") {
						html += '<span class="label label-primary">婴儿操</span>';
						html += '&nbsp;&nbsp;';
					}
				}
				$tiles.append(html);
			}
			</script>

			<script>
			function qaq() {
				var $tiles = $('#todaytiles'), $handler = $('li', $tiles), $main = $('#todaymain'), $window = $(window), $document = $(document), options = {
					autoResize : true, 
					container : $main,
					offset : 20, 
					itemWidth : 280
				};
				var html = '';
				var data=[
				    [
				        {
				            "time": "17:00-17:30",
				            "work": "婴儿操",
				            "star": "4"
				        },
				        {
				            "time": "09:00-09:30",
				            "work": "月子餐",
				            "star": "3"
				        },
				        {
				            "time": "17:00-17:30",
				            "work": "伤口护理",
				            "star": "4"
				        },
				        {
				            "time": "12:00-12:30",
				            "work": "做午餐",
				            "star": "3.3"
				        }
				    ]
				];
				var json = eval(data);
				
				for (var  n= 0; n < 4; n++) {
					html += '<div id="startwo'+n+'" class="col-sm-12">';
					html += '<div class="col-sm-2" style="float: left; display: inline;">';
					html += '<h3>'+json[0][n].time+'</h3>';
					html += '</div>';
					html += "<div style='float: left; display: inline;'>";
					html += '<h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</h3>';
					html += '</div>';
					html += '<div class="col-sm-2" style="float: left; display: inline;">';
					html += '<h3>'+json[0][n].work+'</h3>';
					html += '</div>';
					html += "<div style='float: left; display: inline;'>";
					html += '<h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</h3>';
					html += '</div>';
					html += '<br>';
					html += '<div class="col-sm-3" style="float: left; display: inline;">';
					html += '<div id="starttwo'+n+'" class="block clearfix">';		
					html += '<div class="star_score"></div>';
					html += '<p style="float:left;">您的评分：<span class="fenshu"></span> 分</p>';
					html += '<div class="attitude"></div>';
					html += '</div>';
					html += '</div>';
					html += "<div style='float: left; display: inline;'>";
					html += '<h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</h3>';
					html += '</div>';
					html += '<div class="col-sm-2" style="float: left; display: inline;">';
					html += '<input type="submit" class="btn btn-primary" value="确认完成" onclick="check'+n+'();">';
					html += '</div>';
					html += '<hr size="10" width=100%>';
					html += '</div>';					
				}
				$tiles.append(html);
				
							
				scoreFun($("#starttwo0"), {
					fen_d : 22,
					ScoreGrade : 5
				});
				scoreFun($("#starttwo1"), {
					fen_d : 22,
					ScoreGrade : 5
				});
				scoreFun($("#starttwo2"), {
					fen_d : 22,
					ScoreGrade : 5
				});
				scoreFun($("#starttwo3"), {
					fen_d : 22,
					ScoreGrade : 5
				});
				scoreFun($("#starttwo4"), {
					fen_d : 22,
					ScoreGrade : 5
				});
				scoreFun($("#starttwo5"), {
					fen_d : 22,
					ScoreGrade : 5
				});
				$(".show_number li p").each(
						function(index, element) {
							var num = $(this).attr("tip");
							var www = num * 2 * 16;
							$(this).css("width", www);
							$(this).parent(".atar_Show").siblings("span")
									.text(num + "分");
						});
				}
			</script>
			
			<script>
			function check0() {
				alert(1);
				var num = $(this).attr("tip");
				if(num==1){ 
					alert(233444);
				}
				
			}
			function check1() {
				var msg = "您真的确定要完成吗？请确认！";
				if (confirm(msg) == true) {
					$("#startwo1").remove(); 
				}
			}
			function check2() {
				var msg = "您真的确定要完成吗？请确认！";
				if (confirm(msg) == true) {
					$("#startwo2").remove(); 
				} 
			}
			function check3() {
				var msg = "您真的确定要完成吗？请确认！";
				if (confirm(msg) == true) {
					$("#startwo3").remove(); 
				}
			}
			function check4() {
				var msg = "您真的确定要完成吗？请确认！";
				if (confirm(msg) == true) {
					$("#startwo4").remove(); 
				} 
			}
			function check5() {
				var msg = "您真的确定要完成吗？请确认！";
				if (confirm(msg) == true) {
					$("#startwo5").remove(); 
				}
			}
			</script>
		</fieldset>


		<fieldset>
			<legend>
				<h2 style='float: left; display: inline;'><b>任务列表</b></h2> <br>
				<div class="col-sm-2 col-sm-offset-8"
					style='float: left; display: inline;'>
					<input type="button" class="btn  btn-primary btn-block"
						value="添加任务" onclick="qaq()">
				</div>
				<br> <br>
			</legend>

			<div id="accordion">
				<h1>1月1日</h1>

				<div style='height: 300px; min-height: 300px;'>

					<div id="taskmain1" role="main">
						<ul id="tasktiles1">


							<!-- End of grid blocks -->
						</ul>
					</div>
				</div>

				<h1>1月2日</h1>
				<div style='height: 300px; min-height: 300px;'>
					<div id="taskmain2" role="main">
						<ul id="tasktiles2">


							<!-- End of grid blocks -->
						</ul>
					</div>
				</div>

				<h1>1月3日</h1>
				<div style='height: 300px; min-height: 300px;'>
					<div id="taskmain3" role="main">
						<ul id="tasktiles3">


							<!-- End of grid blocks -->
						</ul>
					</div>
				</div>
			</div>
			<br> <br> <br> <br> <br> <br> <br>
			<br>
		</fieldset>

		<div class="col-sm-2 col-sm-offset-10">
			<input type="button" class="btn  btn-warning btn-block" value="结束雇佣"
				onclick="sss()">
		</div>
	</div>

	<script>
	function sss() {
		
		var $tiles = $('#tasktiles1'), $handler = $('li', $tiles), $main = $('#taskmain1'), $window = $(window), $document = $(document), options = {
			autoResize : true,
			container : $main,
			offset : 20,
			itemWidth : 280
		};
		var html = '';
		
		var data=[
		    [
		        {
		            "time": "17:00-17:30",
		            "work": "婴儿操",
		            "star": "1"
		        },
		        {
		            "time": "09:00-09:30",
		            "work": "月子餐",
		            "star": "3"
		        },
		        {
		            "time": "17:00-17:30",
		            "work": "做午餐",
		            "star": "5"
		        },
		        {
		            "time": "09:00-09:30",
		            "work": "月子餐22",
		            "star": "2"
		        }
		    ],
		    [
		        {
		            "time": "17:00-17:30",
		            "work": "晚饭",
		            "star": "4"
		        },
		        {
		            "time": "09:00-09:30",
		            "work": "婴儿操",
		            "star": "2"
		        },
		        {
		            "time": "17:00-17:30",
		            "work": "散步",
		            "star": "3"
		        },
		        {
		            "time": "09:00-09:30",
		            "work": "技能培训",
		            "star": "5"
		        }
		    ]
		];
		var json = eval(data);
		var sum = 0;
		for (var i = 0, l = json[0].length; i < l; i++) {
			html += '<div class="col-sm-12">';
			html += '<div class="col-sm-3" style="float: left; display: inline;">';
			html += '<h3>'+json[0][i].time+'</h3>';
			html += '</div>';
			html += "<div style='float: left; display: inline;'>";
			html += '<h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</h3>';
			html += '</div>';
			html += '<div class="col-sm-3" style="float: left; display: inline;">';
			html += '<h3>'+json[0][i].work+'</h3>';
			html += '</div>';
			html += "<div style='float: left; display: inline;'>";
			html += '<h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</h3>';
			html += '</div>';
			html += '<div class="col-sm-4" style="float: left; display: inline;">';
			html += '<ul class="show_number clearfix">';
			html += '<li><div class="atar_Show"><p tip='+json[0][i].star+'></p>';
			html += '</div><span></span></li></ul>';
			html += '</div>';
			html += "<div style='float: left; display: inline;'>";
			html += '<h2>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</h2>';
			html += '</div>';						
			html += '<hr size="10" width=100%>';
			html += '</div>';		
			sum += parseInt(json[0][i].star);
			var avg=sum/l;			
		}	
		html += '<div class="col-sm-5 col-sm-offset-1" style="float: left; display: inline;">';
		html += '<h1><b>本日的综合评分为：</b></h1>';
		html += '</div>';
		html += '<div class="col-sm-4" style="float: left; display: inline;">';
		html += '<ul class="show_number clearfix">';
		html += '<li><div class="atar_Show"><p tip='+avg+'></p>';
		html += '</div><span></span></li></ul>';
		html += '</div>';
		$tiles.append(html);
		
				
		var $tiles = $('#tasktiles2'), $handler = $('li', $tiles), $main = $('#taskmain2'), $window = $(window), $document = $(document), options = {
			autoResize : true,
			container : $main,
			offset : 20,
			itemWidth : 280
		};
		var html = '';			
		var json = eval(data);
		var sum = 0;
		for (var i = 0, l = json[1].length; i < l; i++) {
			html += '<div class="col-sm-12">';
			html += '<div class="col-sm-3" style="float: left; display: inline;">';
			html += '<h3>'+json[1][i].time+'</h3>';
			html += '</div>';
			html += "<div style='float: left; display: inline;'>";
			html += '<h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</h3>';
			html += '</div>';
			html += '<div class="col-sm-3" style="float: left; display: inline;">';
			html += '<h3>'+json[1][i].work+'</h3>';
			html += '</div>';
			html += "<div style='float: left; display: inline;'>";
			html += '<h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</h3>';
			html += '</div>';
			html += '<div class="col-sm-4" style="float: left; display: inline;">';
			html += '<ul class="show_number clearfix">';
			html += '<li><div class="atar_Show"><p tip='+json[1][i].star+'></p>';
			html += '</div><span></span></li></ul>';
			html += '</div>';
			html += "<div style='float: left; display: inline;'>";
			html += '<h2>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</h2>';
			html += '</div>';						
			html += '<hr size="10" width=100%>';
			html += '</div>';		
			sum += parseInt(json[1][i].star);
			var avg=sum/l;			
		}	
		html += '<div class="col-sm-5 col-sm-offset-1" style="float: left; display: inline;">';
		html += '<h1><b>本日的综合评分为：</b></h1>';
		html += '</div>';
		html += '<div class="col-sm-4" style="float: left; display: inline;">';
		html += '<ul class="show_number clearfix">';
		html += '<li><div class="atar_Show"><p tip='+avg+'></p>';
		html += '</div><span></span></li></ul>';
		html += '</div>';
		$tiles.append(html);
		
		
		
		scoreFun($("#startone"))
		scoreFun($("#starttwo0"),{
           fen_d:22,//每一个a的宽度
           ScoreGrade:5//a的个数5
        });
	    scoreFun($("#starttwo1"),{
           fen_d:22,//每一个a的宽度
           ScoreGrade:5//a的个数5
        });
	    //显示分数
	    $(".show_number li p").each(function(index, element) {
	        var num=$(this).attr("tip");
	        var www=num*2*16;//
	        $(this).css("width",www);
	        $(this).parent(".atar_Show").siblings("span").text(num+"分");
	    });
	}
	</script>

	<script>
	$(function() {
	    $( "#accordion" ).accordion();
	  });
	</script>

</body>
</html>