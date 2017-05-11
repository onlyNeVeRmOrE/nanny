function nanny() {
	var json = [];
	var nanny = {};
	nanny.identity = nanny;
	city = document.getElementsByName("city");
	for (k in city) {
		if (city[k].checked)
			nanny.city = city[k].value;
	}

	live = document.getElementsByName("isLive");
	for (j in live) {
		if (live[j].checked)
			nanny.live = live[j].value;
	}
	nanny.workCondition = $("#workCondition").val();
	nanny.nannyEducation = $("#nannyEducation").val();
	nanny.nannySalary = $("#nannySalary").val();
	nanny.nannyRestTime = $("#nannyRestTime").val();
	nanny.nation = $("#nation").val();
	nanny.faith = $("#faith").val();
	nanny.maritalStatus = $("#maritalStatus").val();
	nanny.isChildLocal = $("#isChildLocal").val();
	nanny.isParentLocal = $("#isParentLocal").val();
	nanny.introduce = $("#introduce").val();
	nanny.remark = $("#remark").val();

	json.push(nanny);
	alert(JSON.stringify(json));

	$.ajax({
		type : "POST",
		url : url + "",
		contentType : "application/x-www-form-urlencoded",
		dataType : "json",
		data : JSON.stringify(GetJsonData()),
		success : function(jsonResult) {
			alert("成功");
			$('input,select,textarea', $('form[name="nannyform"]')).prop(
					'disabled', true);
		},
		error : function(jsonResult) {
			alert("失败");
		}
	})

}
