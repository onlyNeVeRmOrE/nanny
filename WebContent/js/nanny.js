function nanny() {
    	var flag = submitNannyForm();
    	if (flag) {
    		var json = [];
    		var nanny = {};
    		nanny.identity = "nanny";
    		var city = document.getElementsByName("city");
    		for (k in city) {
    			if (city[k].checked)
    				nanny.city = city[k].value;
    		}
    		
    		var live = document.getElementsByName("isLive");
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
    		$.ajax({
    			type : "POST",
    			url : "nannyAuth.action",
    			contentType : "application/x-www-form-urlencoded",
    			dataType : "json",
    			data : {
    				"nannyData" : JSON.stringify(nanny)
    			},
    			success : function(jsonResult) {
    				alert("成功");
    				$('input,select,textarea', $('form[name="nannyform"]')).prop(
    						'disabled', true);
    				$("#nannysubmit").hide();
    			},
    			error : function(jsonResult) {
    				alert("失败");
    			}
    		})
    	} else {
    		return false;
    	}
    }

    function submitNannyForm() {
    	var result = true;
    	var workCondition = document.getElementById('workCondition');
    	var nannyEducation = document.getElementById('nannyEducation');
    	var nannySalary = document.getElementById('nannySalary');
    	var nannyRestTime = document.getElementById('nannyRestTime');
    	var nation = document.getElementById('nation');
    	var faith = document.getElementById('faith');
    	var maritalStatus = document.getElementById('maritalStatus');
    	var isChildLocal = document.getElementById('isChildLocal');
    	var isParentLocal = document.getElementById('isParentLocal');
    	var introduce = document.getElementById('introduce');
    	var remark = document.getElementById('remark');
    	
    	var val=$('input[type=radio][name="city"]:checked').val();
    	
    	var msg = "";
    	    	
    	if (workCondition.value == "") {
    		msg = "工作情况不能为空";
    		result = false;
    	}
    	if (nannyEducation.value == "") {
    		msg = msg + "\n学历不能为空";
    		result = false;
    	}
    	if (nannySalary.value == "") {
    		msg = msg + "\n期望工资不能为空";
    		result = false;
    	}
    	if (nannyRestTime.value == "") {
    		msg = msg + "\n期望休息天数不能为空";
    		result = false;
    	}
    	if (nation.value == "") {
    		msg = msg + "\n民族不能为空";
    		result = false;
    	}
    	if (faith.value == "") {
    		msg = msg + "\n信仰不能为空";
    		result = false;
    	}
    	if (maritalStatus.value == "") {
    		msg = msg + "\n婚姻状况不能为空";
    		result = false;
    	}
    	if (isChildLocal.value == "") {
    		msg = msg + "\n孩子是否在本地不能为空";
    		result = false;
    	}
    	if (isParentLocal.value == "") {
    		msg = msg + "\n父母是否在本地不能为空";
    		result = false;
    	}
    	if (introduce.value == "") {
    		msg = msg + "\n自我介绍不能为空";
    		result = false;
    	}
    	if (remark.value == "") {
    		msg = msg + "\n备注不能为空";
    		result = false;
    	}

    	if (msg != "") {
    		alert(msg);
    	}
    	return result;
    }
