function yzc() {
	var yzc = {};
	yzc.skillName = "月子餐";
	yzc.skillDescribe = $("#yzcDescribe").val();
	$.ajax({
		type : "POST",
		url : "addDescription.action",
		contentType : "application/x-www-form-urlencoded",
		dataType : "json",
		data : {
			"labelInfo" : JSON.stringify(yzc)
		},
		success : function(jsonResult) {
			document.getElementById("yzc").className = "label label-success";
			$("#yzcsubmit").hide();
			$('input,select,textarea', $('form[name="yzcform"]')).prop(
					'disabled', true);
			CloseDiv('yzcDiv', 'fade');
		},
		error : function(jsonResult) {
			alert("错误");
		}
	});
}

function skhl() {
	var skhl = {};
	skhl.skillName = "伤口护理";
	skhl.skillDescribe = $("#skhlDescribe").val();
	 $.ajax({
		type : "POST",
		url : "addDescription.action",
		contentType : "application/x-www-form-urlencoded",
		dataType : "json",
		data : {
			"labelInfo" : JSON.stringify(skhl)
		},
		success : function(jsonResult) {
			document.getElementById("skhl").className = "label label-success";
			$("#skhlsubmit").hide();
			$('input,select,textarea', $('form[name="skhlform"]')).prop(
					'disabled', true);
			CloseDiv('skhlDiv', 'fade');
		},
		error : function(jsonResult) {
			alert("失败");
		}
	})
};

function shzl() {
	var shzl = {};
	shzl.skillName = "生活照料";
	shzl.skillDescribe = $("#shzlDescribe").val();
	$.ajax({
		type : "POST",
		url : "addDescription.action",
		contentType : "application/x-www-form-urlencoded",
		dataType : "json",
		data : {
			"labelInfo" : JSON.stringify(shzl)
		},
		success : function(jsonResult) {
			document.getElementById("shzl").className = "label label-success";
			$("#shzlsubmit").hide();
			$('input,select,textarea', $('form[name="shzlform"]')).prop(
					'disabled', true);
			CloseDiv('shzlDiv', 'fade');
		},
		error : function(jsonResult) {
			alert("失败");
		}
	})
};

function rfhl() {
	var rfhl = {};
	rfhl.skillName = "乳房护理";
	rfhl.skillDescribe = $("#rfhlDescribe").val();
	$.ajax({
		type : "POST",
		url : "addDescription.action",
		contentType : "application/x-www-form-urlencoded",
		dataType : "json",
		data : {
			"labelInfo" : JSON.stringify(rfhl)
		},
		success : function(jsonResult) {
			document.getElementById("rfhl").className = "label label-success";
			$("#rfhlsubmit").hide();
			$('input,select,textarea', $('form[name="rfhlform"]')).prop(
					'disabled', true);
			CloseDiv('rfhlDiv', 'fade');
		},
		error : function(jsonResult) {
			alert("失败");
		}
	})
};

function jnpx() {
	var jnpx = {};
	jnpx.skillName = "技能培训";
	jnpx.skillDescribe = $("#jnpxDescribe").val();
	$.ajax({
		type : "POST",
		url : "addDescription.action",
		contentType : "application/x-www-form-urlencoded",
		dataType : "json",
		data : {
			"labelInfo" : JSON.stringify(jnpx)
		},
		success : function(jsonResult) {
			document.getElementById("jnpx").className = "label label-success";
			$("#jnpxsubmit").hide();
			$('input,select,textarea', $('form[name="jnpxform"]')).prop(
					'disabled', true);
			CloseDiv('jnpxDiv', 'fade');
		},
		error : function(jsonResult) {
			alert("失败");
		}
	})
};

function jtgxxt() {
	var jtgxxt = {};
	jtgxxt.skillName = "家庭关系协调";
	jtgxxt.skillDescribe = $("#jtgxxtDescribe").val();
	$
			.ajax({
				type : "POST",
				url : "addDescription.action",
				contentType : "application/x-www-form-urlencoded",
				dataType : "json",
				data : {
					"labelInfo" : JSON.stringify(jtgxxt)
				},
				success : function(jsonResult) {
					document.getElementById("jtgxxt").className = "label label-success";
					$("#jtgxxtsubmit").hide();
					$('input,select,textarea', $('form[name="jtgxxtform"]'))
							.prop('disabled', true);
					CloseDiv('jtgxxtDiv', 'fade');
				},
				error : function(jsonResult) {
					alert("失败");
				}
			})
};

function xlst() {
	var xlst = {};
	xlst.skillName = "心理疏通";
	xlst.skillDescribe = $("#xlstDescribe").val();
	$.ajax({
		type : "POST",
		url : "addDescription.action",
		contentType : "application/x-www-form-urlencoded",
		dataType : "json",
		data : {
			"labelInfo" : JSON.stringify(xlst)
		},
		success : function(jsonResult) {
			document.getElementById("xlst").className = "label label-success";
			$("#xlstsubmit").hide();
			$('input,select,textarea', $('form[name="xlstform"]')).prop(
					'disabled', true);
			CloseDiv('xlstDiv', 'fade');
		},
		error : function(jsonResult) {
			alert("失败");
		}
	})
};

function jbgc() {
	var jbgc = {};
	jbgc.skillName = "疾病观察";
	jbgc.skillDescribe = $("#jbgcDescribe").val();
	$.ajax({
		type : "POST",
		url : "addDescription.action",
		contentType : "application/x-www-form-urlencoded",
		dataType : "json",
		data : {
			"labelInfo" : JSON.stringify(jbgc)
		},
		success : function(jsonResult) {
			document.getElementById("jbgc").className = "label label-success";
			$("#jbgcsubmit").hide();
			$('input,select,textarea', $('form[name="jbgcform"]')).prop(
					'disabled', true);
			CloseDiv('jbgcDiv', 'fade');
		},
		error : function(jsonResult) {
			alert("失败");
		}
	})
};

function shzl2() {
	var shzl2 = {};
	shzl2.skillName = "生活照料2";
	shzl2.skillDescribe = $("#shzl2Describe").val();
	$.ajax({
		type : "POST",
		url : "addDescription.action",
		contentType : "application/x-www-form-urlencoded",
		dataType : "json",
		data : {
			"labelInfo" : JSON.stringify(shzl2)
		},
		success : function(jsonResult) {
			document.getElementById("shzl2").className = "label label-success";
			$("#shzl2submit").hide();
			$('input,select,textarea', $('form[name="shzl2form"]')).prop(
					'disabled', true);
			CloseDiv('shzl2Div', 'fade');
		},
		error : function(jsonResult) {
			alert("失败");
		}
	})
};

function yejl() {
	var yejl = {};
	yejl.skillName = "婴儿记录";
	yejl.skillDescribe = $("#yejlDescribe").val();
	$.ajax({
		type : "POST",
		url : "addDescription.action",
		contentType : "application/x-www-form-urlencoded",
		dataType : "json",
		data : {
			"labelInfo" : JSON.stringify(yejl)
		},
		success : function(jsonResult) {
			document.getElementById("yejl").className = "label label-success";
			$("#yejlsubmit").hide();
			$('input,select,textarea', $('form[name="yejlform"]')).prop(
					'disabled', true);
			CloseDiv('yejlDiv', 'fade');
		},
		error : function(jsonResult) {
			alert("失败");
		}
	})
};

function zqcj() {
	var zqcj = {};
	zqcj.skillName = "早期促进";
	zqcj.skillDescribe = $("#zqcjDescribe").val();
	$.ajax({
		type : "POST",
		url : "addDescription.action",
		contentType : "application/x-www-form-urlencoded",
		dataType : "json",
		data : {
			"labelInfo" : JSON.stringify(zqcj)
		},
		success : function(jsonResult) {
			document.getElementById("zqcj").className = "label label-success";
			$("#zqcjsubmit").hide();
			$('input,select,textarea', $('form[name="zqcjform"]')).prop(
					'disabled', true);
			CloseDiv('zqcjDiv', 'fade');
		},
		error : function(jsonResult) {
			alert("失败");
		}
	})
};

function yec() {
	var yec = {};
	yec.skillName = "婴儿操";
	yec.skillDescribe = $("#yecDescribe").val();
	$.ajax({
		type : "POST",
		url : "addDescription.action",
		contentType : "application/x-www-form-urlencoded",
		dataType : "json",
		data : {
			"labelInfo" : JSON.stringify(yec)
		},
		success : function(jsonResult) {
			document.getElementById("yec").className = "label label-success";
			$("#yecsubmit").hide();
			$('input,select,textarea', $('form[name="yecform"]')).prop(
					'disabled', true);
			CloseDiv('yecDiv', 'fade');
		},
		error : function(jsonResult) {
			alert("失败");
		}
	})
};