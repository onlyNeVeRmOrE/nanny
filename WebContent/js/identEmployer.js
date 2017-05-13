$(document).ready(function() {
	$.ajax({
		url : "getIdentityInfo.action",
		dataType : 'json',
		type:"GET",
		success : function(result) {
			var data = eval(result);
			succFunction(data);
		},
		error : function(result) {
			alert("请求失败");
		}
	});
		
		
	function succFunction(data) {
		var json = eval(data);
		alert(json[0].identity);
		if (json[0].identity == "employer") {
			document.getElementById('workPlace').value = json[1].work_address;
			var isNeedLive = json.is_home;
			document.getElementById('experience').value = json[1].experience_need;
			document.getElementById('employerEducation').value = json[1].education;
			document.getElementById('employerSalary').value = json[1].can_pay;
			document.getElementById('employerRestTime').value = json[1].vacation;
			document.getElementById('babyyear').value = json[1].year;
			document.getElementById('babymonth').value = json[1].month;
			document.getElementById('babydate').value = json[1].day;
			document.getElementById('babyBirthWeight').value = json[1].baby_weight;
			document.getElementById('motherAge').value = json[1].mother_age;
			document.getElementById('motherWeight').value = json[1].mother_weight;
			document.getElementById('motherHeight').value = json[1].mother_height;
			document.getElementById('deliveryTimes').value = json[1].childbirth_count;
			document.getElementById('deliveryMode').value = json[1].childbirth_method;
			$("#employersubmit").hide();
			$('input,select,textarea',
					$('form[name="employerform"]')).prop(
					'disabled', true);
		} else {
			window.location.href = "identEmployer.jsp";
		}
	}
});
	
