<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>个人信息</title>


<link rel="stylesheet" type="text/css" href="css/thelabel.css" />
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all">
<link href="css/person.css" rel="stylesheet" type="text/css" media="all" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="./assets/buttons.css">
<link rel="stylesheet" href="./dist/sweetalert2.min.css">

<script src="./dist/sweetalert2.js"></script>
<script src="./dist/jquery/jquery-3.1.1/jquery-3.1.1.min.js"></script>

<script type="text/javascript" src="js/LoginItem.js"></script>
<script type="text/javascript" src="js/SignIn.js"></script>
<script type="text/javascript" src="js/logout.js"></script>

<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>

<!---- start-smoth-scrolling---->
<script type="text/javascript" src="js/forappend.js"></script>
<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>

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


<script type="text/javascript">
		jQuery(document).ready(function($) {
			$("#scorlltounder").click(function(event){		
				event.preventDefault();
				$('html,body').animate({scrollTop:$(this.hash).offset().top},1200);
			});
		});
</script>

<style>
.wrap{ width:1120px; margin:0 auto;}

.solutions{width:1120px;overflow: hidden}
.solutions ul{width:1140px}
.solutions li{height:300px;background: #fff; width:263px;border:1px solid #e5e5e5;border-bottom: 5px solid #efefef; float:left; margin-right:20px; position:relative;}

.solutit{display: block;width:100%;}
.solutit img{ margin:30px auto;text-align: center;display: block;}
.solutit h4{color: #333;font-size: 16px;text-align: center;font-weight: bold;line-height: 30px;}
.solutit p{color: #72ac2d;line-height: 20px;font-size: 14px;text-align: center;margin:-10px auto 0;}
.solutit a{line-height: 30px;height:30px;width: 100px;background: #72ac2d;color: #fff;font-size: 14px;font-weight: bold;text-align: center;display: block;margin:20px auto 0;border-radius: 5px;}
.solutit:hover a{background: #ec8000;}

.solutit2{width:100%;padding:0 20px;position:absolute;left:px;top:0px;overflow: hidden;height:0px;background: #fff;z-index: 99;display: block;border-bottom:5px solid #72ac2d;}
.solutit2 h4{color: #333;font-weight: bold;font-size: 16px;line-height: 16px;margin-bottom: 10px;text-align: center;margin-top:50px;}
.solutit2 h5{text-align: center;color: #72ac2d;display: block;}
.solutit2 span{display: block;background: #bbbbbb;height:2px;width:50px;margin:10px auto;}
.solutit2 p{line-height: 24px;color: #666666;height:144px;display: block;overflow: hidden;}
.solutit2 a{line-height: 30px;height:30px;width: 100px;background: #72ac2d;color: #fff;font-size: 14px;font-weight: bold;text-align: center;display: block;margin:20px auto 0;border-radius: 5px;}
.solutit2 :hover a{background: #ec8000;}
</style>





</head>
<body>
<div class="TheNomalNavbar">
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
	<body>
		<!--start-header-section-->
			<div class="header-section">
				<div class="continer">
					<img id="imageId" width="200" height="280" >
						<h1>您好<span>!</span></h1>
							<p>我的名字是：<p id ="name"></p></p>
							<p>我的工号是：<p id ="userID"></p></p>
							<a href="#contact" class="scroll top" id = "scorlltounder"><span class="glyphicon glyphicon-triangle-bottom" aria-hidden="true"></span></a>
				</div>
			</div>
		<!--end header-section-->
			<!--start-study-section-->
			<div class="study-section">
				<div class="container">
					<div class="study-grids">
						<div class="col-md-5 study-grid">
						<h3>个人信息<span>!</span></h3>
						<div class="study1">
							<p>身份证  ：<label id = "idcard"></label></p>
							<p>婚姻状况  ： <label id = "marriage"></label></p>
							<p>所在城市  ： <label id = "city"></label></p>
							<p>详细住址  ： <label id = "area"></label></p>
						</div>
						</div>
						
						<div class="col-md-5 study-grid">
						<br></br>
						<div class="study1">
						    <br />
							<p>手机号  ：<label id = "phone"></label></p>
							<p>孩子是否在本地  ： <label id = "child"></label></p>
							<p>父母是否在本地  ： <label id = "parent"></label></p>							
						</div>
					    </div>
					    
					    <div class="study-grid">
						<br></br>
						<div class="study1">
						    <br />
							<p>名族  ：<label id = "nation"></label></p>
							<p>信仰  ：<label id = "belief"></label></p>
							<p>学历  ：<label id = "education"></label></p>							
						</div>
					    </div>
					    <br></br>
					    <br></br>
					    <br></br>
					    <div class="col-md-5 study-grid">
						<h3>工作信息<span>!</span></h3>
						<div class="study1">
							<p>目标工作城市  ：<label id = "target"></label></p>
							<p>目前工作状况	  ： <label id = "now"></label></p>
							<p>工作情况  ： <label id = "workinformation"></label></p>
						</div>
						</div>
						
						<div class="col-md-5 study-grid">
						<br></br>
						<div class="study1">
						    <br />
							<p>期望工资  ：<label id = "salary"></label></p>
							<p>期望月休息天数  ： <label id = "time"></label></p>						
						</div>
					    </div>
					    
					    <div class="study-grid">
						<br></br>
						<div class="study1"> 
						    <br />
							<p>属否住家  ：<label id = "isHome"></label></p>
							<p>近三年工作数  ： <label id = "worktime"></label></p>					
						</div>
					    </div>
					   
					    
					<div class="clearfix"></div>
					</div>
				</div>
			</div>
			<!--end study-section-->
					<!--start-social-section-->
				<div class="social-icons">
				<h3>工 作</h3>
			<div class="container">
						<div class="col-md-3 face">
					<p><i class="facebook"> </i> 733</p>
						<h4>经 验</h4>
							</div>
								<div class="col-md-3 face">
						<p><i class="twitter"> </i> 620</p>
						<h4>好 评</h4>
						</div>
							<div class="col-md-3 face">
						<p><i class="google"> </i> 412</p>
						<h4>中 评</h4>
						</div>
						<div class="col-md-3 face">
						<p><i class="beh"> </i> 322</p>
						<h4>差 评</h4>
						</div>
						<div class="clearfix"> </div>
							</div>
							</div>
							<!--end-social-section-->
						<div class='labelflow'>

 <div class='wrap'>
	<div class='solutions' id="solutions">
		<ul id="thelabel">
			 
		</ul>
	</div>
</div>
</div>
 <br></br>
  <br></br>
   <br></br>
							<!--start-contact-section-->
						<div class="contact-section" id="contact">
				<div class="container">
					<h3>预 约</h3>
					 <div class="contact-details">
			 <form>
				 <div class="col-md-6 contact-left">
					
				 </div>
				 <div class="col-md-6 contact-right">
					 <input id="yuyue" class="tijiao" type="button" value="预 约"/>
				 </div> 
				 
			
			 </form>
			</div>		 
		</div>
	</div>
	<!--end-contact-section-->
			<!--end-map-section-->
			<!--start-footer-section-->
			<div class="footer-section">
						<div class="container">
							<div class="footer-top">
					
							<script type="text/javascript">
						$(document).ready(function() {
							/***
							var defaults = {
					  			containerID: 'toTop', // fading element id
								containerHoverID: 'toTopHover', // fading element hover id
								scrollSpeed: 1200,
								easingType: 'linear' 
					 		};
							*/
							
							$().UItoTop({ easingType: 'easeOutQuart' });
							
						});
					</script>
				<a href="#" id="toTop" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>
				</div>
			</div>
	<!--end-footer-section-->
	
	
	
	
<script type="text/javascript">
$(function(){
    $('#solutions li').click(function(){
    	$('#solutions .solutit2').stop().animate({
            height:'0'

        },600);
        $(this).find('.solutit2').stop().animate({
            height:'300'

        },600);
    });
   
    togetinf(${param.uid});
    
    $('#yuyue').click(function(){
    	var currentEmail = "<%=session.getAttribute("sessionName")%>";
    	if(currentEmail == "null")
    	{
    		swal('预约失败','请先登入！','error');
    		
    	}
    	else{
    		$.ajax({
    			type : "GET",
    			url : "getUserIdentity.action",
    			success : function(data) {
    				var flag = eval(data);
    				if(flag[0].identity == "nanny"){
    					swal('预约失败','您是月嫂！','error');
    				}
    				else if(flag[0].identity == "employer"){
    					var id = $("#userID").text();
    		    		var cy = $("#target").text();
    		    		window.open('appointment.jsp?uid='+id+'&city='+'"'+cy+'"');
    				}
    			},
    			error:function(){
    				alert("预约失败");
    			}
    		})

    	}
    });

});
</script>

</body>
</html>