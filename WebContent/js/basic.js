function basic() {
	var flag = submitBasicForm();
	if (flag) {
		
		username = $("#username").val();
		IDnumber = $("#IDnumber").val();
		phone = $("#phone").val();
		appellation = $("#appellation").val();
		city = $("#city").val();
		residence = $("#residence").val();
		alert(1);
		
		$.ajax({
			type : "POST",
			url :"addBaseInfo.action",
			contentType : "application/x-www-form-urlencoded",
//			async:false,
			data : {
				"username":username,
				"IDnumber":IDnumber,
				"phone":phone,
				"city":city,
				"appellation":appellation,
				"residence":residence
			},
			success : function() {
				$("#basicsubmit").hide();
				$('input,select,textarea', $('form[name="basicform"]')).prop(
						'disabled', true);
				document.getElementById(basicsubmit).style.display = "none";

			},
			error : function() {
				alert("失败");
			}
		})
	} else {
		return false;
	}
}

function submitBasicForm() {
	var result = true;
	var username = document.getElementById('username');
	var IDnumber = document.getElementById('IDnumber');
	var phone = document.getElementById('phone');
	var appellation = document.getElementById('appellation');
	var city = document.getElementById('city');
	var residence = document.getElementById('residence');
	var msg = "";
	if (username.value == "") {
		msg = "真实姓名不能为空";
		result = false;
	}
	if (IDnumber.value == "") {
		msg = msg + "\n身份证号不能为空";
		result = false;
	}
	if (phone.value == "") {
		msg = msg + "\n手机号不能为空";
		result = false;
	}
	if (appellation.value == "") {
		msg = msg + "\n称呼不能为空";
		result = false;
	}
	if (city.value == "") {
		msg = msg + "\n所在城市不能为空";
		result = false;
	}
	if (residence.value == "") {
		msg = msg + "\n居住地不能为空";
		result = false;
	}

	if (msg != "") {
		alert(msg);
	}
	return result;
}
