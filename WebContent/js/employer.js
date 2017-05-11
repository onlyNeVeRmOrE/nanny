function employer() {
	var json = [];
	var employer = {};
	employer.identity = employer;
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
	alert(JSON.stringify(json));
	$.ajax({
		type : "POST",
		url : url + "",
		contentType : "application/x-www-form-urlencoded",
		dataType : "json",
		data : JSON.stringify(GetJsonData()),
		success : function(jsonResult) {
			alert("成功");
			$('input,select,textarea', $('form[name="employerform"]')).prop(
					'disabled', true);
		},
		error : function(jsonResult) {
			alert("失败");
		}
	})
}
