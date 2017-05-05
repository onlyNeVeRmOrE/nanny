function nanny() {
	    $.ajax( {
	        type: "POST",
	        url: url + "",
	        contentType: "application/json",
	        dataType: "json",
	        data: JSON.stringify(GetJsonData()),
	        success: function (jsonResult) {
	            $('input,select,textarea',$('form[name="nannyform"]')).prop('disabled',true);
	        },
	        error: function (jsonResult) {
	            alert("失败");
	        }
	    })
	
	}

function GetJsonData() {
    var json = {
        "targetCity": $("#targetCity").val(),
        "isLive": $("#isLive").val(),
        "workCondition": $("#workCondition").val(),
        "nannyEducation": $("#nannyEducation").val(),
        "nannySalary": $("#nannySalary").val(),
        "nannyRestTime": $("#nannyRestTime").val(),
        "nation": $("#nation").val(),
        "faith": $("#faith").val(),
        "maritalStatus": $("#maritalStatus").val(),
        "isChildLocal": $("#isChildLocal").val(),
        "isParentLocal": $("#isParentLocal").val(),
        "introduce": $("#introduce").val(),
        "remark": $("#remark").val()
    };
    return json;
}