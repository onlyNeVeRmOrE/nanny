<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>秋裤网</title>
<link rel="icon" href="./assets/favicon.png">
<link rel="apple-touch-icon" href="./assets/apple-touch-icon.png">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Courgette">
<link href='https://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800' rel='stylesheet' type='text/css'>

<link rel="stylesheet" href="./assets/buttons.css">
<link rel="stylesheet" href="./dist/sweetalert2.min.css">

<script src="./dist/sweetalert2.js"></script>
<script src="./dist/jquery/jquery-3.1.1/jquery-3.1.1.min.js"></script>

<script type="text/javascript" src="js/LoginItem.js"></script>
<script type="text/javascript" src="js/SignIn.js"></script>
<script type="text/javascript" src="js/logout.js"></script>


<link rel="stylesheet" href="dist/css/logincss.css" media="all">
<link rel="stylesheet" href="dist/css/bootstrap.min.css">
<link rel="stylesheet" href="css/tofindnanny_main.css">
<link rel="stylesheet" href="css/tofindnanny_style.css">

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
			<li><a href="UserCenter.jsp" style="display: none" id="userEmail"><span
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
	<div class="theme-popover-mask"></div>
	</nav>
	</div>
	<!--photoflow-->
	<div class="content">
			<div class="wrap">
			 <div id="main" role="main">
			      <ul id="tiles">
			        
			        <!-- End of grid blocks -->
			      </ul>
			    </div>
			</div>
		</div>
		<!---//End-content---->
		<!----wookmark-scripts---->
		  <script src="js/jquery.imagesloaded.js"></script>
		  <script src="js/jquery.wookmark.js"></script>
		  <script type="text/javascript">
		    (function ($){
		      var $tiles = $('#tiles'),
		          $handler = $('li', $tiles),
		          $main = $('#main'),
		          $window = $(window),
		          $document = $(document),
		          options = {
		            autoResize: true, // This will auto-update the layout when the browser window is resized.
		            container: $main, // Optional, used for some extra CSS styling
		            offset: 20, // Optional, the distance between grid items
		            itemWidth:280 // Optional, the width of a grid item
		          };
		      
		      /**
		       * ajax to get data
		       */
		      var Datapage = 1;
		      function loadData(){
		    	  $.ajax({
		              url: apiURL,
		              dataType: 'jsonp',
		              data: {page: page}, // Page parameter to make sure we load new data
		              success: onLoadData
		            });
		      }
		      function onLoadData(data){
		    	  Datapage++;
		    	  var html = '';
		          var i=0, length=data.length, currentdata;
		          for(; i<length; i++) {
		        	  currentdata = data[i];
		              html += '<li onclick="javascript:alert()">';
			          // Image tag (preview in Wookmark are 200px wide, so we calculate the height based on that).
			          html += '<img src="'+currentdata.pic_url+'" width="200" height="280">';
			          html += '<div class="post-info">';
					  html += '<div class="post-basic-info">'
					  html += '<h3><a href="#">'+'name'+'<h4>'+'year'+'<h4>ID :<h4>'+currentdata.user_id+'</h4></h4></h4></a></h3>';
					  html += '<span><a href="#"><label> </label>'+'label1'+'</a></span>';
					  html += '<span><a href="#"><label> </label>'+'label2'+'</a></span>';
					  html += '<span><a href="#"><label> </label>'+'label3'+'</a></span>';
					  html += '<p>'+'introduce'+'</p>';
					  html += '<span>位置：<span>'+'location'+'</span></span>';
					  html += '</div>';
				      html += '<div class="post-info-rate-share">';
				      html += '<div class="good-reputation">';
					  html += '<h3>好评:<a>'+'good1'+'</a></h3>';
					  html += '<h3>中评:<a>'+'good2'+'</a></h3>';
					  html += '<h3>差评:<a>'+'good3'+'</a></h3>';
					  html += '</div>';
				      html += '<div class="post-share">';
				      html += '<span> </span>';
				      html += '</div>';
				      html += '<div class="clear"> </div>';
				      html += '</div>';
				      html += '</div>';
			          html += '</li>';
		            
		    	  
		      }
                  $tiles.append(html);		          
		          applyLayout();
		          
		      }
		      /**
		       * Reinitializes the wookmark handler after all images have loaded
		       */
		      function applyLayout() {
		        $tiles.imagesLoaded(function() {
		          // Destroy the old handler
		          if ($handler.wookmarkInstance) {
		            $handler.wookmarkInstance.clear();
		            
		          }	
		
		          // Create a new layout handler.
		          $handler = $('li', $tiles);
		          $handler.wookmark(options);
		        });
		      }
		      /**
		       * When scrolled all the way to the bottom, add more tiles
		       */
		      function onScroll() {
		        // Check if we're within 100 pixels of the bottom edge of the broser window.
		        var winHeight = window.innerHeight ? window.innerHeight : $window.height(), // iphone fix
		            closeToBottom = ($window.scrollTop() + winHeight > $document.height() - 10);
		
		        if (closeToBottom) {
		          // Get the first then items from the grid, clone them, and add them to the bottom of the grid
		          var $items = $('li', $tiles),
		              $firstEight = $items.slice(0, 8);
		          loadData();
		         
		        }
		      };
		

	          
	          
		      // Call the layout function for the first time
              loadData();
		
		      // Capture scroll event.
		      $window.bind('scroll.wookmark', onScroll);
		    })(jQuery);
		  </script>
		<!----//wookmark-scripts---->
		<!----start-footer--->
		<div class="footer">
			<p>Copyright &copy; 欢迎来到秋裤网！ <a href="http://www.cssmoban.com/" target="_blank" title="模板之家">秋裤首页</a></p>
		</div>
</body>
</html>


