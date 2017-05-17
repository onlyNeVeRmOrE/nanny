<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>秋裤网首页</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Tutoring Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<link href="css/style.css" rel='stylesheet' type='text/css' />
<script src="./dist/jquery/jquery-3.1.1/jquery-3.1.1.min.js"></script>
<script src="js/bootstrap.js"></script>
<!---- start-smoth-scrolling---->
<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>
<script type="text/javascript">
			jQuery(document).ready(function($) {
				$(".scroll").click(function(event){		
					event.preventDefault();
					$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
				});
			});
		</script>
<!--start-smoth-scrolling-->
</head>
<body>
	<!--start-header-->
	<div class="header" id="home">
		<nav class="navbar navbar-default">
			<div class="container-fluid">
			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
				<span class="sr-only">Toggle navigation</span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="index.html"><img src="images/logo.png" alt="" /></a>
			</div>
			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav">
					<li class="active"><a href="index.jsp" class="hvr-bounce-to-top">主页<span class="sr-only">(current)</span></a></li>
					<li><a href="ToFindNanny.jsp" class="hvr-bounce-to-top">找月嫂</a></li>
					<li><a href="index.jsp" class="hvr-bounce-to-top">月嫂排行</a></li>
					<li><a href="index.jsp" class="hvr-bounce-to-top">月嫂咨询</a></li>
					<li><a href="index.jsp" class="hvr-bounce-to-top">关于我们</a></li>
				</ul>
				<div class="clearfix"></div>
			</div><!-- /.navbar-collapse -->
			</div><!-- /.container-fluid -->
		</nav>
	</div>
	<!--end-header-->
	<!--start-banner-->
	<div class="banner">
		<div class="container">
			<section class="slider">
				<div class="flexslider">
					<ul class="slides">
						<li>
							<div class="banner-top">
								<h1>信 息 标 题1</h1>
								<h2>副 标 题1</h2>
								<p>balabalabalabalabalabala1.</p>
								<div class="bnr-btn">
									<a href="#" class="hvr-shutter-out-horizontal">加个链接</a>
								</div>
							</div>
						</li>
						<li>
							<div class="banner-top">
								<h1>信 息 标 题2</h1>
								<h2>副 标 题2</h2>
								<p>balabalabalabalabalabala2.</p>
								<div class="bnr-btn">
									<a href="#" class="hvr-shutter-out-horizontal">加个链接</a>
								</div>
							</div>
						</li>
						<li>
							<div class="banner-top">
								<h1>信 息 标 题3</h1>
								<h2>副 标 题3</h2>
								<p>balabalabalabalabalabala3.</p>
								<div class="bnr-btn">
									<a href="#" class="hvr-shutter-out-horizontal">加个链接</a>
								</div>
							</div>
						</li>
					</ul>
				</div>
			</section>
		</div>
	</div>
	<!--end-banner-->
	<!--FlexSlider-->
	<link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen" />
	<script defer src="js/jquery.flexslider.js"></script>
	<script type="text/javascript">
    $(function(){
    	<!--SyntaxHighlighter.all();-->
    });
    $(window).load(function(){
      $('.flexslider').flexslider({
        animation: "slide",
        start: function(slider){
          $('body').removeClass('loading');
        }
      });
    });
  </script>
	<!--End-slider-script-->	
	<!--start-provide-->
	<div class="provide">
		<div class="col-md-3 provide-left provide-one">
			<h5>放心</h5>
			<h3>直营 </h3>
			<p>甲乙方合同，有事儿公司给你解决.</p>
		</div>
		<div class="col-md-3 provide-left provide-two">
			<h5>安心</h5>
			<h3>高保险</h3>
			<p>为您上100万 + 物品保险.</p>
		</div>
		<div class="col-md-3 provide-left provide-tre">
			<h5>省心</h5>
			<h3>标准化</h3>
			<p>通过ISO9001认证，保证服务质量.</p>
		</div>
		<div class="col-md-3 provide-left provide-four">
			<h5>舒心</h5>
			<h3>严培训</h3>
			<p>120+课时培训，七段情景时培训.</p>
		</div>
		<div class="clearfix"></div>
	</div>
	<!--end-provide-->
	<!--start-welcome-->
	<div class="welcome">
		<div class="container">
			<div class="welcome-top">
				<div class="col-md-6 welcome-left">
					<h3>二胎满月</h3>
					<h4>奥运冠军杨威的柔情一面.</h4>
					<p>2月16日，杨威杨云双胞胎小公举欢欢乐乐满月啦，北京爱帝宫上上下下为这可爱的一家举办了温馨梦幻的满月趴体，现场欢声笑语，大家都在为小</p>
					<div class="w-btn">
						<a href="#" class="hvr-shutter-out-horizontal">查看详情</a>
					</div>
				</div>
				<div class="col-md-6 welcome-left">
					<h3>月子餐是一项良心事业</h3>
					<h4>深入走进秋裤网餐饮重地.</h4>
					<p>猴年注定是个热闹非凡的一年，二孩政策开放迎来了新的生育高峰，生育假、陪产假等配套措施的施行给母婴行业带来了更多利好。其中，月子餐作为女人坐月子中不可或缺的一部分，近来也被越来越多的人所关注。</p>
					<div class="w-btn">
						<a href="#" class="hvr-shutter-out-horizontal">查看详情</a>
					</div>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
	<!--end-welcome-->
	<!--start-join-->
	<div class="join">
		<div class="container">
			<div class="join-main">
				<div class="col-md-3 join-left">
					<span class="glyphicon glyphicon-time" aria-hidden="true"></span>
					<h4>更加安全</h4>
					<p>全国联网，身份验证.</p>
				</div>
				<div class="col-md-3 join-left">
					<span class="glyphicon glyphicon-user" aria-hidden="true"></span>
					<h4>更加专业</h4>
					<p>家政经纪人专业面试.</p>
				</div>
				<div class="col-md-3 join-left">
					<span class="glyphicon glyphicon-map-marker" aria-hidden="true"></span>
					<h4>更加保险</h4>
					<p>家政保险，全程防护.</p>
				</div>
				<div class="col-md-3 join-left">
					<span class="glyphicon glyphicon-calendar" aria-hidden="true"></span>
					<h4>更加严格</h4>
					<p>工作监督，全方位了解.</p>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
	<!--end-join-->
    <div class="copyrights">Collect from <a href="http://www.cssmoban.com/" >企业网站模板</a></div>
	<!--start-news-->
	<div class="news">
		<div class="container">
			<div class="news-top">
				<div class="col-md-8 news-left">
					<div class="news-heading">
						<h3>选择秋裤网，你可以得到什么？</h3>
					</div>
					<div class="news-bottom">
						<h4>为什么要请月嫂？</h4>
						<p>月嫂的服务对象是宝宝和产妇，主要工作内容是产妇月子期间对宝宝和产妇的专业护理。聘请月嫂可以让产妇得到充分的休息和身体恢复，一家几个人搞不定的事，月嫂一个人就可以全部搞定。
真正实现了轻松坐月子，幸福一家人！
</p>   
                         
						<div class="news-one">
							<div class="news-one-left">
								<img src="images/banner.png" alt="" />
							</div>
							<div class="news-one-right">
								<h4>为什么100000000名妈妈选择秋裤网</h4>
								<p>01.解放自我，打造阳光靓丽妈妈</p>   
                         <p>02.贴心服务，营造温馨和谐家庭</p>      
                          <p>03.细心科学，培养健康聪明宝宝
						 </p>
							</div>
							<div class="clearfix"></div>
						</div>
						<div class="news-one">
							<h4>非中介月嫂平台 / 亲民的价格 / 不一样的服务</h4>
							<p>每一位月嫂通过层层考核严苛筛选，员工制月嫂管理服务安心有保障。
剥去层层中介、管理费用，“云专家团队”为您服务，
包括营养师、产后修复专家、母婴顾问等都是您的月子帮手。.</p>
						</div>
					</div>
				</div>
				<div class="col-md-4 news-right">
					<div class="news-heading">
						<h3>看看这里我要放图片</h3>
					</div>
					<div class="news-btm">
						<div class="news-1">
							<img src="images/sy-1.png" alt="" />
							<!--<div class="n-1">
								 <h5>配点文字</h5>
								<p>配点文字</p>-->
							</div>
						</div>
						<div class="news-1">
							<img src="images/sy-2.png" alt="" />
							<!--<div class="n-1">
							    <h5>配点文字</h5>
								<p>配点文字</p>-->
							</div>
						</div>
					</div>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
	<!--end-news-->
	<!--start-teacher-->
    <div id="fh5co-team-section" class="fh5co-lightgray-section">
		<div class="container">
			<div class="row">
				<div class="col-md-8 col-md-offset-2">
					<div class="heading-section text-center animate-box">
						<h2>秋裤网的月嫂</h2>
						<p>好的我都不知道说些啥！</p>
					</div>
				</div>
			</div>
			<div class="row text-center">
				<div class="col-md-4 col-sm-6">
					<div class="team-section-grid animate-box"
						style="background-image: url(images/jpys-6.jpg);">
						<div class="overlay-section">
							<div class="desc">
								<h3>斯嘉丽.约翰逊</h3>
								<span>首席月嫂，拥有多年从事月嫂的经验
								</span>
								<p>bangbangde</p>
								<p class="fh5co-social-icons">
									<a href="#"><i class="icon-twitter-with-circle"></i></a> <a
										href="#"><i class="icon-facebook-with-circle"></i></a> <a
										href="#"><i class="icon-instagram-with-circle"></i></a>
								</p>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-4 col-sm-6">
					<div class="team-section-grid animate-box"
						style="background-image: url(images/jpys-5.jpg);">
						<div class="overlay-section">
							<div class="desc">
								<h3>大 飞 神</h3>
								<span>催 奶 师</span>
								<p>人 帅 活 好</p>
								<p class="fh5co-social-icons">
									<a href="#"><i class="icon-twitter-with-circle"></i></a> 
									<a href="#"><i class="icon-facebook-with-circle"></i></a> 
									<a href="#"><i class="icon-instagram-with-circle"></i></a>
								</p>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-4 col-sm-6">
					<div class="team-section-grid animate-box"
						style="background-image: url(images/jpys-4.jpg);">
						<div class="overlay-section">
							<div class="desc">
								<h3>大 飞 神</h3>
								<span>催 奶 师</span>
								<p>人 帅 活 好</p>
								<p class="fh5co-social-icons">
									<a href="#"><i class="icon-twitter-with-circle"></i></a> <a
										href="#"><i class="icon-facebook-with-circle"></i></a> <a
										href="#"><i class="icon-instagram-with-circle"></i></a>
								</p>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-4 col-sm-6">
					<div class="team-section-grid animate-box"
						style="background-image: url(images/jpys-3.jpg);">
						<div class="overlay-section">
							<div class="desc">
								<h3>大 飞 神</h3>
								<span>催 奶 师</span>
								<p>人 帅 活 好</p>
								<p class="fh5co-social-icons">
									<a href="#"><i class="icon-twitter-with-circle"></i></a> <a
										href="#"><i class="icon-facebook-with-circle"></i></a> <a
										href="#"><i class="icon-instagram-with-circle"></i></a>
								</p>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-4 col-sm-6">
					<div class="team-section-grid animate-box"
						style="background-image: url(images/jpys-2.jpg);">
						<div class="overlay-section">
							<div class="desc">
								<h3>大 飞 神</h3>
								<span>催 奶 师</span>
								<p>人 帅 活 好</p>
								<p class="fh5co-social-icons">
									<a href="#"><i class="icon-twitter-with-circle"></i></a> <a
										href="#"><i class="icon-facebook-with-circle"></i></a> <a
										href="#"><i class="icon-instagram-with-circle"></i></a>
								</p>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-4 col-sm-6">
					<div class="team-section-grid animate-box"
						style="background-image: url(images/jpys-1.jpg);">
						<div class="overlay-section">
							<div class="desc">
								<h3>大 飞 神</h3>
								<span>催 奶 师</span>
								<p>人 帅 活 好</p>
								<p class="fh5co-social-icons">
									<a href="#"><i class="icon-twitter-with-circle"></i></a> <a
										href="#"><i class="icon-facebook-with-circle"></i></a> <a
										href="#"><i class="icon-instagram-with-circle"></i></a>
								</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--end-teacher-->
	<!--start-footer-->
	<div class="footer">
		<div class="container">
			<div class="footer-main">
				<div class="col-md-4 footer-left">
					<span class="glyphicon glyphicon-map-marker map-marker" aria-hidden="true"></span>
					<p>我们的名字是, <span>秋裤网,</span> 给你秋裤般的温暖.</p>
				</div>
				<div class="col-md-4 footer-left">
					<span class="glyphicon glyphicon-phone map-marker" aria-hidden="true"></span>
					<p>+110 <span>+119</span> </p>
				</div>
				<div class="col-md-4 footer-left">
					<p class="footer-class">Copyright &copy; 2015.Company name All rights reserved.More Templates</p>
				<!--    <ul>
						<li><a href="#"><span class="fb"></span></a></li>
						<li><a href="#"><span class="twit"></span></a></li>
						<li><a href="#"><span class="rss"></span></a></li>
						<li><a href="#"><span class="ggl"></span></a></li>
					</ul>-->
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
		<script type="text/javascript">
									$(document).ready(function() {
										/*
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
		<a href="#home" id="toTop" class="scroll" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>
	</div>
	<!--end-footer-->
</body>
</html>