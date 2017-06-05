$(document).ready(function() {
	$.ajax({
		url : "getIdentityAndUserInfo.action",
		dataType : 'json',
		type : "GET",
		success : function(result) {
			alert("成功");
			var data = eval(result);
			succFunction(data);
		},
		error : function(result) {
			alert("请求失败");
		}
	});
				
	function succFunction(data) {
		var $tiles = $('#ordertiles'), $handler = $('li', $tiles), $main = $('#ordermain'), $window = $(window), $document = $(document), options = {
			autoResize : true,
			container : $main,
			offset : 20,
			itemWidth : 280
		};
		
		var json = eval(data);

		var html = '';
		if (json[0][0].identity == "nanny") {
			html += '<div id="order" class="panel-body">';
			html += '<div><img src="img/u90.png" class="img-rounded col-sm-2"></div>';
			html += '<div class="col-sm-6">';
			html += '<b><h3 id="workTime">工作时间:</h3></b>';
			html += '<b><h3 id="salary">可支付工资:</h3></b>';
			html += '<b><h3 id="workPlace">工作地点:</h3></b>';
			html += '</div>';
			html += '<div class="col-sm-4">';
			html += '<br>';
			html += '<div>';
			html += '<input type="button" class="btn btn-default" value="雇主信息" onmouseover="showEmployer();" onmouseout="hideEmployer();">';
			html += '</div>';
			html += '<br>';
			html += '<div><input type="button" class="btn btn-default" value="联系雇主" ></div>';
			html += '<br>';
			html += '<div><input type="button" class="btn btn-default" value="确认预约" onclick="nannyOrder();"</div>';
			html += '</div>';
			html += '</div>';
			html += '</div>';
			html += '</div>';
			$tiles.append(html);
			var workStartTime = json[1][0].startTime;
			var workendTime = json[1][0].endTime;
			var lowSalary = json[1][0].lowSalary;
			var highSalary = json[1][0].highSalary;
			var workPlace = json[1][0].address;				
			document.getElementById("workTime").innerHTML = "工作时间:"
				+ workStartTime + "至" + workendTime;
			document.getElementById("salary").innerHTML = "可支付工资:"
				+ lowSalary + "元至" + highSalary + "元";
			document.getElementById("workPlace").innerHTML = "工作地点:"
				+ workPlace;
		
							
			var name = json[1][1].name;
			var phone = json[1][1].phoneNumber;
			var mail = json[1][1].mail;
			var place = json[1][1].address;
			var birthday = json[1][2].baby_birth;
			document.getElementById("employerName").innerHTML = "姓名：" + name;
			document.getElementById("employerPhone").innerHTML = "手机号:" + phone;
			document.getElementById("employerMail").innerHTML = "邮箱号:" + mail;
			document.getElementById("employerPlace").innerHTML = "居住地点:" + place;
			document.getElementById("birthday").innerHTML = "婴儿出生日期:" + birthday;		
		}
		if (json[0][0].identity == "employer") {
			html += '<div id="order" class="panel-body">';
			html += '<div><img src="img/u90.png" class="img-rounded col-sm-2"></div>';
			html += '<div class="col-sm-6">';
			html += '<b><h3 id="workTime">工作时间:</h3></b>';
			html += '<b><h3 id="salary">可支付工资:</h3></b>';
			html += '<b><h3 id="workPlace">工作地点:</h3></b>';
			html += '</div>';
			html += '<div class="col-sm-4">';
			html += '<br>';
			html += '<div>';
			html += '<input type="button" class="btn btn-default" value="月嫂信息" onmouseover="showNanny();" onmouseout="hideNanny();">';
			html += '</div>';
			html += '<br>';
			html += '<div><input type="button" class="btn btn-default" value="联系月嫂" ></div>';
			html += '<br>';
			html += '<div><input type="button" class="btn btn-default" value="确认预约" onclick="employerOrder();"</div>';
			html += '</div>';
			html += '</div>';
			html += '</div>';
			html += '</div>';
			$tiles.append(html);
			var workStartTime = json[1][0].startTime;
			var workendTime = json[1][0].endTime;
			var lowSalary = json[1][0].lowSalary;
			var highSalary = json[1][0].highSalary;
			var workPlace = json[1][0].address;				
			document.getElementById("workTime").innerHTML = "工作时间:"
				+ workStartTime + "至" + workendTime;
			document.getElementById("salary").innerHTML = "可支付工资:"
				+ lowSalary + "元至" + highSalary + "元";
			document.getElementById("workPlace").innerHTML = "工作地点:"
				+ workPlace;
			
			var name = json[1][1].name;
			var phone = json[1][1].phoneNumber;
			var mail = json[1][1].mail;
			var place = json[1][1].address;
			var skill = json[1][2].skill;
			document.getElementById("nannyName").innerHTML = "姓名：" + name;
			document.getElementById("nannyPhone").innerHTML = "手机号:" + phone;
			document.getElementById("nannyMail").innerHTML = "邮箱号:" + mail;
			document.getElementById("nannyPlace").innerHTML = "居住地点:" + place;
			document.getElementById("skill").innerHTML = "技能标签:" + skill;		
		}
	}
});

function show(obj, id) {
	var objDiv = $("#" + id + "");
	$(objDiv).css("display", "block");
	$(objDiv).css("left", event.clientX);
	$(objDiv).css("top", event.clientY + 10);
}

function hide(obj, id) {
	var objDiv = $("#" + id + "");
	$(objDiv).css("display", "none");
};

function showEmployer() {		
	show(this,'employerDiv');
}

function hideEmployer() {
	hide(this,'employerDiv');
}

function showNanny() {		
	show(this,'nannyDiv');
}

function hideNanny() {
	hide(this,'nannyDiv');
}

function nannyOrder() {
	$.ajax({
		type : "POST",
		url : "",
		contentType : "application/x-www-form-urlencoded",
		dataType : "json",
		data : {"nannyStatus":Pended},
		success : function(jsonResult) {
			alert("成功");
			var msg = "您真的确定要预约吗？请确认！";
			if (confirm(msg) == true) {
				$("#order").remove();
			}
		},
		error : function(jsonResult) {
			alert("失败");
		}
	})
}

function employerOrder() {
	$.ajax({
		type : "POST",
		url : "",
		contentType : "application/x-www-form-urlencoded",
		dataType : "json",
		data : {"employerStatus":Pended},
		success : function(jsonResult) {
			alert("成功");
			var msg = "您真的确定要预约吗？请确认！";
			if (confirm(msg) == true) {
				$("#order").remove();
			}
		},
		error : function(jsonResult) {
			alert("失败");
		}
	})
}