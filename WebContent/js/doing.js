$(document).ready(function() {
	$.ajax({
		url : "getTaskInfo.action",
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
		var $tiles = $('#tiles'),
        $handler = $('li', $tiles),
        $main = $('#main'),
        $window = $(window),
        $document = $(document),
        options = {
          autoResize: true, 
          container: $main, 
          offset: 20,
          itemWidth:280 
        };
		
		var json = eval(data);
		var html = '';
		if (json[0][0].identity == "nanny") {
			html += '<div class="panel-body">';
			html += '<div>';
			html += '<img src="img/u90.png" class="img-rounded col-sm-2">';
			html += '</div>';
			html += '<div class="col-sm-6">';
			html += '<b><h2 id="workTime">工作时间:</h2></b>';
			html += '<b><h2 id="salary">可支付工资:</h2></b>';
			html += '<b><h2 id="workPlace">工作地点:</h2></b>';
			html += '</div>';
			html += '<div class="col-sm-4">';
			html += '<br>';
			html += '<div>';
			html += '<input type="button"  class="btn btn-default" value="联系雇主">';
			html += '</div>';
			html += '<br>';
			html += '<div>';
			html += '<input type="button"  class="btn btn-default" value="进入任务空间" onclick="enternanny()"';
			html += '</div>';
			html += '</div>';
			html += '</div>';
			html += '</div>';
			html += '</div>';
			$tiles.append(html);
		}
		if (json[0][0].identity == "employer") {
			html += '<div class="panel-body">';
			html += '<div>';
			html += '<img src="img/u90.png" class="img-rounded col-sm-2">';
			html += '</div>';
			html += '<div class="col-sm-6">';
			html += '<b><h2 id="workTime">工作时间:</h2></b>';
			html += '<b><h2 id="salary">可支付工资:</h2></b>';
			html += '<b><h2 id="workPlace">工作地点:</h2></b>';
			html += '</div>';
			html += '<div class="col-sm-4">';
			html += '<br>';
			html += '<div>';
			html += '<input type="button"  class="btn btn-default" value="联系月嫂">';
			html += '</div>';
			html += '<br>';
			html += '<div>';
			html += '<input type="button"  class="btn btn-default" value="进入任务空间" onclick="enteremployer()"';
			html += '</div>';
			html += '</div>';
			html += '</div>';
			html += '</div>';
			html += '</div>';
			$tiles.append(html);
		}
		var workStartTime = json[1][0].startTime;
		var workendTime = json[1][0].endTime;
		var lowSalary = json[1][0].lowSalary;
		var highSalary = json[1][0].highSalary;
		var workPlace = json[1][1].address;
		document.getElementById("workTime").innerHTML = "工作时间:" + workStartTime + "至" + workendTime;
		document.getElementById("salary").innerHTML = "可支付工资:" + lowSalary + "元至" + highSalary + "元";
		document.getElementById("workPlace").innerHTML = "工作地点:" + workPlace;
	}	
});

function enternanny () {
	window.location='nannyTask.jsp';
}
function enteremployer () {
	window.location='employerTask.jsp';
}