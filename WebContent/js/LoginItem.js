$(document).ready(function(){
	 $("#loginIn").on("click", function() { 

	    	var username = document.getElementById("input_email").value;
	    	var password = document.getElementById("input_password").value;

	    	if(username!=="" && password!==""){
	    		 $.ajax({
	                 type: "POST",
	                 url: "login.action?username="+username+"&password="+password,//目标url 
	                 dataType: "json", 
	                 success: function (jsonResult) {
	                     var flog = eval(jsonResult);
	                     if (flog.authResult === 'true'){ 
	                    	$('.theme-popover-mask').fadeOut(100);
	                 		$('.theme-popover').slideUp(200);
	                 		swal({ 
	                            title: "成 功！", 
	                            text: "登入成功！", 
	                            type: "success",
	                            confirmButtonText: "确定！", 
	                            closeOnConfirm: false, 
	                            }).then(function () {
	               				 $('.theme-popover-mask').fadeOut(100);
	                     		 $('.theme-popover').slideUp(200);
	                     		DisplayAndHiddenBtn("signIn", "h");
	                        	DisplayAndHiddenBtn("login", "h");
	                        	DisplayAndHiddenBtn("userEmail", "d");
	                        	DisplayAndHiddenBtn("logout", "d");
	                        	$("#userEmail").text(username);
	               	    		})                    	
	                     }else{
	                    	 $('.theme-popover-mask').fadeOut(100);
	                 		$('.theme-popover').slideUp(200);
	                 		swal({ 
	                            title: "错 误！", 
	                            text: "邮箱或密码不正确！", 
	                            type: "error",
	                            confirmButtonText: "确定！", 
	                            closeOnConfirm: false, 
	                            }).then(function () {
	                 	    			$('.theme-popover-mask').fadeIn(100);
	                 	    			$('.theme-popover').slideDown(200);
	                 	    		})
	                     }
	                 },

	    		 	 error:function(){
	    		 		 alert("请求失败");
	    		 	 }
	             });
	    		
	    	}else{
	    		$('.theme-popover-mask').fadeOut(100);
	    		$('.theme-popover').slideUp(200);
	    		swal({ 
                    title: "错 误！", 
                    text: "邮箱或密码不能为空！", 
                    type: "error",
                    confirmButtonText: "确定！", 
                    closeOnConfirm: false, 
                    }).then(function () {
	    	    			$('.theme-popover-mask').fadeIn(100);
	    	    			$('.theme-popover').slideDown(200);
	    	    		})
	    	}
	 }) 
 });
 
 function DisplayAndHiddenBtn(btnId, type) {//这里的button意味着<a></a>
	    var currentBtn = document.getElementById(btnId);
	    if (type == "d") {
	        currentBtn.style.display = "block";//style中的display属性 显示
	    }
	    else if (type == "h") {
	        currentBtn.style.display = "none";//不显示
	    }
	}
 