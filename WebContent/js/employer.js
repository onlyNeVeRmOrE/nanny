function employer() {
	    $.ajax({
	        type: "POST",
	        url: url + "",
	        contentType: "application/json",
	        dataType: "json",
	        data: JSON.stringify(GetJsonData()),
	        success: function (jsonResult) {
	            $('input,select,textarea',$('form[name="employerform"]')).prop('disabled',true);
	        },
	        error: function (jsonResult) {
	            alert("失败");
	        }
	    })	
	}

function GetJsonData() {
    var json = {
        "workPlace": $("#workPlace").val(),
        "isNeedLive": $("#isNeedLive").val(),
        "experience": $("#experience").val(),
        "employerEducation": $("#employerEducation").val(),
        "employerSalary": $("#employerSalary").val(),
        "employerRestTime": $("#employerRestTime").val(),
        "babyBirthday": $("#babyBirthday").val(),
        "babyBirthWeight": $("#babyBirthWeight").val(),
        "motherAge": $("#motherAge").val(),
        "motherWeight": $("#motherWeight").val(),
        "motherHeight": $("#motherHeight").val(),
        "deliveryTimes": $("#deliveryTimes").val(),
        "deliveryMode": $("#deliveryMode").val()
    };
    return json;
}