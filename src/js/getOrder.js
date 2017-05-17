$(document).ready(function() {
	$.ajax({
		url : "getNannyOrder.action",
		dataType : 'json',
		type : "GET",
		success : function(result) {
			var data = eval(result);
			succFunction(data);
		},
		error : function(result) {
			alert("请求失败");
		}
	});
		
		
	function succFunction(data) {
		var divTop = document.createElement("div");
		var divNext = document.createElement("div");
		var divImg = document.createElement("div");
		var img = document.createElement('img');
		var divP = document.createElement("div");
		var replyTimeB = document.createElement("b");
		var workTimeB = document.createElement("b");
		var salaryB = document.createElement("b");
		var workPlaceB = document.createElement("b");
		var replyTimeH = document.createElement("h3");
		var workTimeH = document.createElement("h3");
		var salaryH = document.createElement("h3");
		var workPlaceH = document.createElement("h3");
		var divBtn = document.createElement("div");
		var divInformation = document.createElement("div");
		var btnInformation = document.createElement("BUTTON");
		var informationValue = document.createTextNode("雇主信息");
		var information = document.createElement("div");
		var nameH = document.createElement("h6");
		var phoneH = document.createElement("h6");
		var mailH = document.createElement("h6");
		var placeH = document.createElement("h6");
		var birthdayH = document.createElement("h6");
		var nameB = document.createElement("b");
		var phoneB = document.createElement("b");
		var mailB = document.createElement("b");
		var placeB = document.createElement("b");
		var birthdayB = document.createElement("b");

		var divContact = document.createElement("div");
		var btnContact = document.createElement("BUTTON");
		var contactValue = document.createTextNode("联系雇主");
		var divConfirm = document.createElement("div");
		var btnConfirm = document.createElement("BUTTON");
		var confirmValue = document.createTextNode("确认预约");
		var br1 = document.createElement("br");
		var br2 = document.createElement("br");
		var br3 = document.createElement("br");

		divTop.className = "panel panel-default";
		divNext.className = "panel-body";
		img.src = 'img/u90.png';
		img.className = "img-rounded col-sm-2";
		divP.className = "col-sm-4";
		information.className = "col-sm-4";
		replyTimeH.innerHTML = '最晚答复时间：';
		workTimeH.innerHTML = '工作时间:';
		salaryH.innerHTML = '可支付工资:';
		workPlaceH.innerHTML = '工作地点:';
		nameH.innerHTML = '姓名：';
		phoneH.innerHTML = '手机号:';
		mailH.innerHTML = '邮箱号:';
		placeH.innerHTML = '居住地址:';
		birthdayH.innerHTML = '婴儿出生日期:';
		divBtn.className = "col-sm-1";
		btnInformation.className = "btn btn-default";
		btnContact.className = "btn btn-default";
		btnConfirm.className = "btn btn-default";
		divTop.setAttribute("id", "top");
		replyTimeH.setAttribute("id", "replyTime");
		workTimeH.setAttribute("id", "workTime");
		salaryH.setAttribute("id", "salary");
		workPlaceH.setAttribute("id", "workPlace");
		nameH.setAttribute("id", "name");
		phoneH.setAttribute("id", "phone");
		mailH.setAttribute("id", "mail");
		placeH.setAttribute("id", "place");
		birthdayH.setAttribute("id", "birthday");
		btnInformation.setAttribute("id", "information");
		btnContact.setAttribute("id", "contact");
		btnConfirm.setAttribute("id", "confirm");

		divTop.appendChild(divNext);
		divNext.appendChild(divImg);
		divNext.appendChild(divP);
		divNext.appendChild(information);
		divNext.appendChild(divBtn);

		divImg.appendChild(img);
		divP.appendChild(replyTimeB);
		replyTimeB.appendChild(replyTimeH);
		divP.appendChild(workTimeB);
		workTimeB.appendChild(workTimeH);
		divP.appendChild(salaryB);
		salaryB.appendChild(salaryH);
		divP.appendChild(workPlaceB);
		workPlaceB.appendChild(workPlaceH);

		information.appendChild(nameB);
		information.appendChild(phoneB);
		information.appendChild(mailB);
		information.appendChild(placeB);
		information.appendChild(birthdayB);

		nameB.appendChild(nameH);
		phoneB.appendChild(phoneH);
		mailB.appendChild(mailH);
		placeB.appendChild(placeH);
		birthdayB.appendChild(birthdayH);

		divBtn.appendChild(divInformation);
		divBtn.appendChild(br1);
		divBtn.appendChild(divContact);
		divBtn.appendChild(br2);

		divBtn.appendChild(divConfirm);
		divInformation.appendChild(btnInformation);
		divContact.appendChild(btnContact);
		divConfirm.appendChild(btnConfirm);
		btnInformation.appendChild(informationValue);
		btnContact.appendChild(contactValue);
		btnConfirm.appendChild(confirmValue);

		var pending = document.getElementById("pending");
		pending.appendChild(divTop);

		function addEvent(element, e, fn) {
			if (element.addEventListener) {
				element.addEventListener(e, fn, false);
			} else {
				element.attachEvent("on" + e, fn);
			}
		}

		var element = document.getElementById("confirm");
		addEvent(element, "click", confirmOrder);

		function confirmOrder() {
			var msg = "您真的确定要预约吗？请确认！";
			if (confirm(msg) == true) {
				$("#top").remove();
			}
		}
		
		var json = eval(data);	
		var replyTime = json[0][0].theLastTime;
		var workStartTime = json[0][0].startTime;
		var workendTime = json[0][0].endTime;
		var lowSalary = json[0][0].lowSalary;
		var highSalary = json[0][0].highSalary;
		var workPlace = json[0][0].address;
		document.getElementById("replyTime").innerHTML = "最晚答复时间：" + replyTime;
		document.getElementById("workTime").innerHTML = "工作时间:" + workStartTime + "至" + workendTime;
		document.getElementById("salary").innerHTML = "可支付工资:" + lowSalary + "元至" + highSalary + "元";
		document.getElementById("workPlace").innerHTML = "工作地点:" + workPlace;
		
		var name = json[0][1].name;
		var phone = json[0][1].phoneNumber;
		var mail = json[0][1].mail;
		var place = json[0][1].address;
		var birthday = json[0][2].baby_birth;
		document.getElementById("name").innerHTML = "姓名：" + name;
		document.getElementById("phone").innerHTML = "手机号:" + "18401606025";
		document.getElementById("mail").innerHTML = "邮箱号:" + "qjz@qk.com";
		document.getElementById("place").innerHTML = "居住地点:" + place;
		document.getElementById("birthday").innerHTML = "婴儿出生日期:" + birthday;
	}
});