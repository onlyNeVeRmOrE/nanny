$(document).ready(function() {
	$.ajax({
		url : "getIdentityInfo.action",
		dataType : 'json',
		type : "GET",
		success : function(result) {
			var data = eval(result);
			succFunction(data);
		},
		error : function(result) {
			alert("error");
		}
	});

	function succFunction(data) {
		var json = eval(data);
		if (json[0].identity == "nanny") {
			document.getElementById('targetCity').value=json[1].targetCity;
			document.getElementById('isLive').value=json[1].is_home;
			document.getElementById('workCondition').value=json[1].experience;
			//$("#nannysubmit").hide();
			$('input,select,textarea',
					$('form[name="nannyform"]')).prop(
					'disabled', true);
		} else {

		}
	}
});