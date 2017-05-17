$(document).ready(function() {
	$.ajax({
		url : "getBaseInfo.action",
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
		document.getElementById('username').value = json.name;
		document.getElementById('IDnumber').value = json.id_card;
		document.getElementById('phone').value = json.phoneNumber;
		document.getElementById('appellation').value = "先生";
		document.getElementById('city').value = json.city;
		document.getElementById('residence').value = json.address;
		$("#basicsubmit").hide();
		$('input,select,textarea',
				$('form[name="basicform"]')).prop(
				'disabled', true);
	}
});