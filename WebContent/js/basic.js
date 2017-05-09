function basic() {
	var json = [];
	var basic = {};

	basic.username = $("#username").val();
	basic.IDnumber = $("#IDnumber").val();
	basic.phone = $("#phone").val();
	basic.appellation = $("#appellation").val();
	basic.city = $("#city").val();
	basic.residence = $("#residence").val();

	json.push(basic);
	alert(JSON.stringify(json));
	document.getElementById(basicsubmit).style.display = "none";
	$.ajax({
		type : "POST",
		url : url + "",
		contentType : "application/x-www-form-urlencoded",
		dataType : "json",
		data : JSON.stringify(GetJsonData()),
		success : function(jsonResult) {
			$("#basicsubmit").hide();
			$('input,select,textarea', $('form[name="basicform"]')).prop(
					'disabled', true);

		},
		error : function(jsonResult) {
			alert("失败");
		}
	})
}