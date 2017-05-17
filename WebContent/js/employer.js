function employer() {
	var flag = submitEmployerForm();
	if (flag) {
		var json = [];
		var employer = {};
		employer.identity = "employer";
		employer.workPlace = $("#workPlace").val();
		isNeedLive = document.getElementsByName("isNeedLive");
		for (i in isNeedLive) {
			if (isNeedLive[i].checked)
				employer.isNeedLive = isNeedLive[i].value;
		}
		
		employer.experience = $("#experience").val();
		employer.employerEducation = $("#employerEducation").val();
		employer.employerSalary = $("#employerSalary").val();
		employer.employerRestTime = $("#employerRestTime").val();
		employer.babyyear = $("#babyyear").val();
		employer.babymonth = $("#babymonth").val();
		employer.babydate = $("#babydate").val();
		employer.babyBirthWeight = $("#babyBirthWeight").val();
		employer.motherAge = $("#motherAge").val();
		employer.motherWeight = $("#motherWeight").val();
		employer.motherHeight = $("#motherHeight").val();
		employer.deliveryTimes = $("#deliveryTimes").val();
		employer.deliveryMode = $("#deliveryMode").val();
		
		json.push(employer);
		$.ajax({
			type : "POST",
			url : "employerAuth.action",
			contentType : "application/x-www-form-urlencoded",
			dataType : "json",
			data : {
				"employerData":JSON.stringify(employer)
			},
			success : function(jsonResult) {
				alert("成功");
				$("#employersubmit").hide();
				$('input,select,textarea', $('form[name="employerform"]')).prop(
						'disabled', true);
			},
			error : function(jsonResult) {
				alert("失败");
			}
		})
	} else {
		return false;
	}
}

function submitEmployerForm() {
	var result = true;
	var experience = document.getElementById('experience');
	var employerEducation = document.getElementById('employerEducation');
	var employerSalary = document.getElementById('employerSalary');
	var employerRestTime = document.getElementById('employerRestTime');
	var babyyear = document.getElementById('babyyear');
	var babymonth = document.getElementById('babymonth');
	var babydate = document.getElementById('babydate');
	var babyBirthWeight = document.getElementById('babyBirthWeight');
	var motherAge = document.getElementById('motherAge');
	var motherWeight = document.getElementById('motherWeight');
	var motherHeight = document.getElementById('motherHeight');
	var deliveryTimes = document.getElementById('deliveryTimes');
	var deliveryMode = document.getElementById('deliveryMode');
	
	var msg = "";
	    	
	if (experience.value == "") {
		msg = "工作经验不能为空";
		result = false;
	}
	if (employerEducation.value == "") {
		msg = msg + "\n学历不能为空";
		result = false;
	}
	if (employerSalary.value == "") {
		msg = msg + "\n可支付工资不能为空";
		result = false;
	}
	if (employerRestTime.value == "") {
		msg = msg + "\n月嫂每月可休息天数不能为空";
		result = false;
	}
	if (babyyear.value == "") {
		msg = msg + "\n婴儿出生年不能为空";
		result = false;
	}
	if (babymonth.value == "") {
		msg = msg + "\n婴儿出生月不能为空";
		result = false;
	}
	if (babydate.value == "") {
		msg = msg + "\n婴儿出生日不能为空";
		result = false;
	}
	if (babyBirthWeight.value == "") {
		msg = msg + "\n婴儿出生体重不能为空";
		result = false;
	}
	if (motherAge.value == "") {
		msg = msg + "\n母亲年龄不能为空";
		result = false;
	}
	if (motherWeight.value == "") {
		msg = msg + "\n母亲体重不能为空";
		result = false;
	}
	if (motherHeight.value == "") {
		msg = msg + "\n备注不能为空";
		result = false;
	}
	if (deliveryTimes.value == "") {
		msg = msg + "\n备注不能为空";
		result = false;
	}
	if (deliveryMode.value == "") {
		msg = msg + "\n备注不能为空";
		result = false;
	}

	if (msg != "") {
		alert(msg);
	}
	return result;
}
