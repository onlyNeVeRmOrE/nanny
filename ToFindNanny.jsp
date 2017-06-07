<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="zh-cn"> 
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

<link href="css/city.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/style2.css">

		 
          <script type="text/javascript" src="js/city.min.js"></script>
          <script type="text/javascript" src="js/forappend.js"></script>
          <script type="text/javascript" src="js/script.js"></script>
          <script type="text/javascript" src="dist/js/bootstrap.min.js"></script>


<link rel="stylesheet" href="dist/css/logincss.css" media="all">
<link rel="stylesheet" href="dist/css/bootstrap.min.css">
<link rel="stylesheet" href="css/tofindnanny_main.css">
<link rel="stylesheet" href="css/tofindnanny_style.css">



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
			<a class="navbar-brand" href="index.jsp">秋裤网</a>
		</div>
		<ul class="nav navbar-nav navbar-left">
			<li><a href="ToFindNanny.jsp"><span class="glyphicon glyphicon-tags"></span>
					月嫂登记</a></li>
			<li><a href="ToFindNanny.jsp"><span class="glyphicon glyphicon-home"></span>
					月嫂分布</a></li>
			<li><a href="ToFindNanny.jsp"><span
					class="glyphicon glyphicon-credit-card"></span> 秋裤快报</a></li>
			<li><a href="ToFindNanny.jsp"><span class="glyphicon glyphicon-eye-open"></span>
					如何找月嫂</a></li>
			<li><a href="ToFindNanny.jsp"><span class="glyphicon glyphicon-heart"></span>
					月嫂工资</a></li>
		</ul>
		<form class="navbar-form navbar-left " role="search">
            <div class="form-group">
                <input type="text" class="form-control" placeholder="搜索">
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
							name="submit" id="loginIn">登入</button></li>
				</ol>
			</form>
		</div>
	</div>
	<div class="theme-popover-mask"></div>
	<div id="search">
	
	<div class="demo">	
	<ul class="select">
	<div class="wtf">
	<li class="select-list">
	<dl>
		 <div id="content-left" class="chooseCity">
                <form action="" name="form1">
                        <div class="infolist">
                            <lable>所在地区：</lable>
                            <div class="liststyle">
                                <span id="Province">
                                    <i>请选择省份</i>
                                    <ul>
                                        <li><a id="province" href="javascript:void(0)" alt="请选择省份">请选择省份</a></li>
                                    </ul>
                                    <input type="hidden" name="cho_Province" value="请选择省份">
                                </span>
                                <span id="City">
                                    <i>请选择城市</i>
                                    <ul>
                                        <li><a href="javascript:void(0)" alt="请选择城市">请选择城市</a></li>
                                    </ul>
                                   <input type="hidden" name="cho_City" value="请选择城市">
                                </span>
                                <span id="Area">
                                   <i>请选择地区</i>
                                    <ul>
                                        <li><a href="javascript:void(0)" alt="请选择地区">请选择地区</a></li>
                                    </ul>
                                    <input type="hidden" name="cho_Area" value="请选择地区">
                                </span>
                            </div>
                        </div>
                    </form> 
            </div>
            </dl>
	</li>
	</div>
	
	<div class="another">	
	<div class="select-up">
		<li class="select-list">
			<dl id="select1">
				<dt>住家：</dt>
				<dd class="select-all selected"><a href="#">不限</a></dd>
				<dd><a href="#">是</a></dd>
				<dd><a href="#">否</a></dd>
			</dl>
		</li>
		<li class="select-list">
			<dl id="select2">
				<dt>学历：</dt>
				<dd class="select-all selected"><a href="#">不限</a></dd>
				<dd><a href="#">初中</a></dd>
				<dd><a href="#">中专</a></dd>
				<dd><a href="#">专科</a></dd>
				<dd><a href="#">本科</a></dd>
				<dd><a href="#">本科以上</a></dd>
			</dl>
		</li>
		<li class="select-list">
			<dl id="select3">
				<dt>工龄：</dt>
				<dd class="select-all selected"><a href="#">不限</a></dd>
				<dd><a href="#">从未干过</a></dd>
				<dd><a href="#">一年以内</a></dd>
				<dd><a href="#">一到三年</a></dd>
				<dd><a href="#">三到五年</a></dd>
				<dd><a href="#">五年以上</a></dd>
			</dl>
		</li>
		<li class="select-list">
			<dl id="select4">
				<dt>工资：</dt>
				<dd class="select-all selected"><a href="#">不限</a></dd>
				<dd><a href="#">低于8000</a></dd>
				<dd><a href="#">8000-12000</a></dd>
				<dd><a href="#">12000-15000</a></dd>
				<dd><a href="#">15000以上</a></dd>
			</dl>
		</li>
		<li class="select-result">
			<dl>
				<dt>已选条件：</dt>
				<dd class="select-no">暂时没有选择过滤条件</dd>
			</dl>
		</li>		
		</div>
		
		<div class="select-down">
		<li class="select-list">
			<dl id="select-label">
				<dt>技能：</dt>
				<dd class="select-all selected"><a href="#">不限</a></dd>
				<dd id="Label-1"><a id="a_1" href="#">月子餐</a></dd>
				<dd id="Label-2"><a id="a_2" href="#">伤口护理</a></dd>
				<dd id="Label-3"><a id="a_3" href="#">生活照料</a></dd>
				<dd id="Label-4"><a id="a_4" href="#">乳房护理</a></dd>
				<dd id="Label-5"><a id="a_5" href="#">技能培训</a></dd>
				<dd id="Label-6"><a id="a_6" href="#">心里疏通</a></dd>
				<dd id="Label-7"><a id="a_7" href="#">家庭关系协调</a></dd>
				<dd id="Label-9"><a id="a_9" href="#">育儿记录</a></dd>
				<dd id="Label-10"><a id="a_10" href="#">早期促进</a></dd>
				<dd id="Label-11"><a id="a_11" href="#">婴儿操</a></dd>
			</dl>
		</li>
		<li class="select-label-result">
			<dl>
				<dt>已选条件：</dt>
				<dd class="select-label-no">暂时没有选择过滤条件</dd>
			</dl>
		</li>
		<li class="select-list">			
			<button id="get">搜索</button>
		</li>
		</div>
		
		
		</div>
	</ul>
	</div>

</div>
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
		 <script type="text/javascript" src="js/LoginItem.js"></script>
          <script type="text/javascript" src="js/SignIn.js"></script>
          <script type="text/javascript" src="js/logout.js"></script>
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
		      var flog = 1;
		      function loadData(){
		    	  $.ajax({
		              url: "image.action",
		              dataType: 'json',
		              async : false,
		              data: {page: Datapage}, // Page parameter to make sure we load new data
		              success: function(result){
		            	  onLoadData(result);
		              },
		              error: function(data){alert("11");}
		            });
		      }
		      function onLoadData(result){
		    	  var data = eval(result);
		    	  Datapage++;
		    	  var html = '';
		          var i=0, length=data.length;
		          if(data.length<8)
		        	  flog = 0;
		          for(; i<length; i++) {
		        	 html += '<li onclick="window.open(&apos;personal.jsp?uid='+data[i].user_id+'&apos;);">';
			          // Image tag (preview in Wookmark are 200px wide, so we calculate the height based on that).
			          html += '<img src="'+data[i].pic_url+'" width="200" height="280">';
			          html += '<div class="post-info">';
					  html += '<div class="post-basic-info">'
					  html += '<h3><a href="#">'+'月嫂'+'<h4>'+'34'+'<h4>ID :<h4>'+data[i].user_id+'</h4></h4></h4></a></h3>';
					  html += '<span><a href="#"><label> </label>'+'月子餐'+'</a></span>';
					  html += '<span><a href="#"><label> </label>'+'婴儿操'+'</a></span>';
					  html += '<span><a href="#"><label> </label>'+'乳腺疏通'+'</a></span>';
					  html += '<p>'+''+'</p>';
					  html += '<span>位置：<span>'+'北京'+'</span></span>';
					  html += '</div>';
				      html += '<div class="post-info-rate-share">';
				      html += '<div class="good-reputation">';
					  html += '<h3>好评:<a>'+'1'+'</a></h3>';
					  html += '<h3>中评:<a>'+'2'+'</a></h3>';
					  html += '<h3>差评:<a>'+'3'+'</a></h3>';
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
		            closeToBottom = ($window.scrollTop() + winHeight > $document.height() - 1);
		
		        if (closeToBottom) {
		          setTimeout(loadData(),100000);
		          // Get the first then items from the grid, clone them, and add them to the bottom of the grid
		       
		        }
		      };

		     function search(){

				    var html = '';
				    var i = 0 ;
					for (;;i++){
					if(getCookie(i)!=undefined){
					     var to_str = getCookie(i);
						 var value = JSON.parse(to_str);

						      html += '<li onclick="window.open(&apos;personal.jsp?uid='+value.user_id+'&apos;);">';
					          // Image tag (preview in Wookmark are 200px wide, so we calculate the height based on that).
					          html += '<img src="'+value.pic_url+'" width="200" height="280">';
					          html += '<div class="post-info">';
							  html += '<div class="post-basic-info">'
							  html += '<h3><a href="#">'+'月嫂'+'<h4>'+'34'+'<h4>ID :<h4>'+value.user_id+'</h4></h4></h4></a></h3>';
							  html += '<span><a href="#"><label> </label>'+'月子餐'+'</a></span>';
							  html += '<span><a href="#"><label> </label>'+'婴儿操'+'</a></span>';
							  html += '<span><a href="#"><label> </label>'+'乳腺疏通'+'</a></span>';
							  html += '<p>'+'introduce'+'</p>';
							  html += '<span>位置：<span>'+value.target_city+'</span></span>';
							  html += '</div>';
						      html += '<div class="post-info-rate-share">';
						      html += '<div class="good-reputation">';
						      html += '<h3>好评:<a>'+'1'+'</a></h3>';
							  html += '<h3>中评:<a>'+'2'+'</a></h3>';
							  html += '<h3>差评:<a>'+'3'+'</a></h3>';
							  html += '</div>';
						      html += '<div class="post-share">';
						      html += '<span> </span>';
						      html += '</div>';
						      html += '<div class="clear"> </div>';
						      html += '</div>';
						      html += '</div>';
					          html += '</li>';
					          removeCookie(i);
				      }
					  else{
					  break;
					  }
					}
					$tiles.append(html);		          
				    applyLayout();
				 }
		     /**
		       * get cookie
		       */
		     function getCookie(key) {
		    	    var arr1 = document.cookie.split('; ');
		    	    for (var i=0; i<arr1.length; i++) {
		    	        var arr2 = arr1[i].split('=');
		    	        if ( arr2[0] == key ) {
		    	            return decodeURI(arr2[1]);
		    	        }
		    	    }
		     }
		     function removeCookie(key) {
		         setCookie(key, '', -1);
		     }
	          
		     function setCookie(key, value, t) {
		 	    var oDate = new Date();
		 	    oDate.setDate( oDate.getDate() + t );
		 	    document.cookie = key + '=' + value + ';expires=' + oDate.toGMTString();
		 	}
	          
		      // Call the layout function for the first time
		      if(getCookie("0")==undefined){
		    	  loadData();
				 }
				 else
				 {
				   $tiles.children("li").remove();
				   search();
				 }
              
		
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


