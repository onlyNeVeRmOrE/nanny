$(document).ready(function() {
	$.ajax({
		url : "getNannyIdentityLabel.action",
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
		if (json[0][0].identity == "nanny") {
			for (var i = 0, l = json[2].length; i < l; i++) {
				if (json[2][i].skillName == "月子餐") {
					document.getElementById("yzc").className = "label label-success";
					document.getElementById("yzcDescribe").value = json[2][i].skillDescribe;
				}
				if (json[2][i].skillName == "伤口护理") {
					document.getElementById("skhl").className = "label label-success";
					document.getElementById("skhlDescribe").value = json[2][i].skillDescribe;
				}
				if (json[2][i].skillName == "生活照料") {
					document.getElementById("shzl").className = "label label-success";
					document.getElementById("shzlDescribe").value = json[2][i].skillDescribe;
				}
				if (json[2][i].skillName == "乳房护理") {
					document.getElementById("rfhl").className = "label label-success";
					document.getElementById("rfhlDescribe").value = json[2][i].skillDescribe;
				}
				if (json[2][i].skillName == "技能培训") {
					document.getElementById("jnpx").className = "label label-success";
					document.getElementById("jnpxDescribe").value = json[2][i].skillDescribe;
				}
				if (json[2][i].skillName == "家庭关系协调") {
					document.getElementById("jtgxxt").className = "label label-success";
					document.getElementById("jtgxxtDescribe").value = json[2][i].skillDescribe;
				}
				if (json[2][i].skillName == "心理疏通") {
					document.getElementById("xlst").className = "label label-success";
					document.getElementById("xlstDescribe").value = json[2][i].skillDescribe;
				}
				if (json[2][i].skillName == "疾病观察") {
					document.getElementById("jbgc").className = "label label-success";
					document.getElementById("jbgcDescribe").value = json[2][i].skillDescribe;
				}
				if (json[2][i].skillName == "生活照料2") {
					document.getElementById("shzl2").className = "label label-success";
					document.getElementById("shzl2Describe").value = json[2][i].skillDescribe;
				}
				if (json[2][i].skillName == "育儿记录") {
					document.getElementById("yejl").className = "label label-success";
					document.getElementById("yejlDescribe").value = json[2][i].skillDescribe;
				}
				if (json[2][i].skillName == "早期促进") {
					document.getElementById("zqcj").className = "label label-success";
					document.getElementById("zqcjDescribe").value = json[2][i].skillDescribe;
				}
				if (json[2][i].skillName == "婴儿操") {
					document.getElementById("yec").className = "label label-success";
					document.getElementById("yecDescribe").value = json[2][i].skillDescribe;
				}
			}
			document.getElementById('targetCity').value = json[1][0].target_city;
			document.getElementById('isLive').value = json[1][0].is_home;
			document.getElementById('workCondition').value = json[1][0].experience;
			document.getElementById('nannyEducation').value = json[1][0].education;
			document.getElementById('nannySalary').value = json[1][0].salary;
			document.getElementById('nannyRestTime').value = json[1][0].vacation;
			document.getElementById('nation').value = json[1][0].nation;
			document.getElementById('faith').value = json[1][0].faith;
			document.getElementById('maritalStatus').value = json[1][0].marry_status;
			document.getElementById('isChildLocal').value = json[1][0].child_is_local;
			document.getElementById('isParentLocal').value = json[1][0].parent_is_local;
			document.getElementById('introduce').value = json[1][0].introduction;
			document.getElementById('remark').value = json[1][0].remark;
			$('input,select,textarea',$('form[name="nannyform"]')).prop('disabled', true);
			$('input,select,textarea',$('form[name="yzcform"]')).prop('disabled', true);
			$('input,select,textarea',$('form[name="skhlform"]')).prop('disabled', true);
			$('input,select,textarea',$('form[name="shzlform"]')).prop('disabled', true);
			$('input,select,textarea',$('form[name="rfhlform"]')).prop('disabled', true);
			$('input,select,textarea',$('form[name="jnpxform"]')).prop('disabled', true);
			$('input,select,textarea',$('form[name="jtgxxtform"]')).prop('disabled', true);
			$('input,select,textarea',$('form[name="xlstform"]')).prop('disabled', true);
			$('input,select,textarea',$('form[name="jbgcform"]')).prop('disabled', true);
			$('input,select,textarea',$('form[name="shzl2form"]')).prop('disabled', true);
			$('input,select,textarea',$('form[name="yejlform"]')).prop('disabled', true);
			$('input,select,textarea',$('form[name="zqcjform"]')).prop('disabled', true);
			$('input,select,textarea',$('form[name="yecform"]')).prop('disabled', true);
		} else {
			// 去认证，点认证，进入认证页面
			window.location.href = "identNanny.jsp";
		}
	}

});