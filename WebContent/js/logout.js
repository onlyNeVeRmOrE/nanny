 $(document).ready(function(){
	 $("#logout").on("click", function() { 
		 var currentEmail = $("#userEmail").text();
		 $.ajax({
			 type: "POST",
             url: "logout.action",//目标url 
             dataType: "json", 
             success : function(jsonResult) {
     			var flog = eval(jsonResult);
     			if (flog.logoutResult === 'true') {
     				DisplayAndHiddenBtn("signIn", "d");
     				DisplayAndHiddenBtn("login", "d");
     				DisplayAndHiddenBtn("userEmail", "h");
     				DisplayAndHiddenBtn("logout", "h");
     				swal({ 
                        title: "成 功！", 
                        text: "登出成功！", 
                        type: "success",
                        confirmButtonText: "确定！", 
                        closeOnConfirm: false, 
                        });
     			} else {

     				swal({ 
                        title: "失 败！", 
                        text: "请重新登出！", 
                        type: "error",
                        confirmButtonText: "确定！", 
                        closeOnConfirm: false, 
                        });
     			}
     		},

     		error : function() {
     			alert("请求失败");
     		}
		 })
		 });
	 })
	 

function DisplayAndHiddenBtn(btnId, type) {// 这里的button意味着<a></a>
	var currentBtn = document.getElementById(btnId);
	if (type == "d") {
		currentBtn.style.display = "block";// style中的display属性 显示
	} else if (type == "h") {
		currentBtn.style.display = "none";// 不显示
	}
}