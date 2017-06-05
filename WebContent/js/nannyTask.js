$(document).ready(function() {
	$.ajax({
		url : "getEmployerAndTaskInfo.action",
		dataType : 'json',
		type:"GET",
		success : function(result) {
			var data = eval(result);
			succFunction(data);
		},
		error : function(result) {
			alert("请求失败");
		}
	});
	
	function succFunction(data) {
		var json = eval(data);	
		var name = json[1][0].name;
		var phone = json[1][0].phone;
		var mail = json[1][0].mail;
		var year = json[1][0].year;
		var month = json[1][0].month;
		var day = json[1][0].day;
		var workPlace = json[1][0].work_address;
		var startTime = json[1][0].startTime;
		var endTime = json[1][0].endTime;
		document.getElementById("name").innerHTML = "雇主姓名：" + name;
		document.getElementById("phone").innerHTML = "手机号:" + phone;
		document.getElementById("mail").innerHTML = "邮箱号:" + mail;
		document.getElementById("babyBirthday").innerHTML = "婴儿出生日期:" + year + "/" + month +"/" + day;
		document.getElementById("workPlace").innerHTML = "工作地点:" + workPlace;
		document.getElementById("workTime").innerHTML = "工作时间:" + startTime + "至" + endTime;
		
		var $tiles = $('#todaytiles'), $handler = $('li', $tiles), $main = $('#todaymain'), $window = $(window), $document = $(document), options = {
			autoResize : true,
			container : $main, 
			offset : 20,
			itemWidth : 280
		};
		var html = '';
		
		var json = eval(data);
		
		for (var  n= 0, m = json[0].length; n < m; n++) {
			alert(json[0][n].taskDetails);
			html += '<div id="startwo'+n+'" class="col-sm-12">';
			html += '<div class="col-sm-4" style="float: left; display: inline;">';
			html += '<h3>'+json[0][n].time+'</h3>';
			html += '</div>';
			html += "<div style='float: left; display: inline;'>";
			html += '<h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</h3>';
			html += '</div>';
			html += '<div class="col-sm-3" style="float: left; display: inline;">';
			html += '<h3>'+json[0][n].taskDetails+'</h3>';
			html += '</div>';
			html += "<div style='float: left; display: inline;'>";
			html += '<h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</h3>';
			html += '</div>';
			html += '<br>';
			html += "<div style='float: left; display: inline;'>";
			html += '<h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</h3>';
			html += '</div>';
			html += '<div class="col-sm-3" style="float: left; display: inline;">';
			html += '<input type="submit" id="check" class="btn  btn-primary " value="完成" onclick="check'+n+'();">';
			html += '</div>';
			html += '<hr size="10" width=100%>';
			html += '</div>';					
		}
		$tiles.append(html);
		
		
		
		var $tiles = $('#tomorrowtiles'), $handler = $('li', $tiles), $main = $('#tomorrowmain'), $window = $(window), $document = $(document), options = {
			autoResize : true, 
			container : $main, 
			offset : 20,
			itemWidth : 280
		};
		var html = '';
		
		var json = eval(data);
		
		for (var  n= 0, m = json[0].length; n < m; n++) {
			html += '<div id="startwo'+n+'" class="col-sm-12">';
			html += '<div class="col-sm-4" style="float: left; display: inline;">';
			html += '<h3>'+json[0][n].time+'</h3>';
			html += '</div>';
			html += "<div style='float: left; display: inline;'>";
			html += '<h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</h3>';
			html += '</div>';
			html += '<div class="col-sm-3" style="float: left; display: inline;">';
			html += '<h3>'+json[0][n].taskDetails+'</h3>';
			html += '</div>';
			html += "<div style='float: left; display: inline;'>";
			html += '<h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</h3>';
			html += '</div>';
			html += '<br>';
			html += '<hr size="10" width=100%>';
			html += '</div>';
		}
		$tiles.append(html);
		
		
		var $tiles = $('#evaluate1tiles'), $handler = $('li', $tiles), $main = $('#evaluate1main'), $window = $(window), $document = $(document), options = {
			autoResize : true,
			container : $main, 
			offset : 20,
			itemWidth : 280
		};
		var html = '';
		
		var json = eval(data);
		var sum = 0;
		for (var i = 0, l = json[0].length; i < l; i++) {
			html += '<div class="col-sm-12">';
			html += '<div class="col-sm-4" style="float: left; display: inline;">';
			html += '<h3>'+json[0][i].time+'</h3>';
			html += '</div>';
			html += "<div style='float: left; display: inline;'>";
			html += '<h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</h3>';
			html += '</div>';
			html += '<div class="col-sm-3" style="float: left; display: inline;">';
			html += '<h3>'+json[0][i].taskDetails+'</h3>';
			html += '</div>';
			html += "<div style='float: left; display: inline;'>";
			html += '<h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</h3>';
			html += '</div>';
			html += '<div class="col-sm-3" style="float: left; display: inline;">';
			html += '<ul class="show_number clearfix">';
			html += '<li><div class="atar_Show"><p tip='+json[0][i].star+'></p>';
			html += '</div><span></span></li></ul>';
			html += '</div>';
			html += "<div style='float: left; display: inline;'>";
			html += '<h2>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</h2>';
			html += '</div>';			
			html += '<hr size="10" width=100%>';
			html += '</div>';
			sum += parseInt(json[0][i].star);
			var avg=sum/l;	
		}
		html += '<div class="col-sm-5 col-sm-offset-1" style="float: left; display: inline;">';
		html += '<h1><b>本日的综合评分为：</b></h1>';
		html += '</div>';
		html += '<div class="col-sm-4" style="float: left; display: inline;">';
		html += '<ul class="show_number clearfix">';
		html += '<li><div class="atar_Show"><p tip='+avg+'></p>';
		html += '</div><span></span></li></ul>';
		html += '</div>';
		$tiles.append(html);
		
		
		var $tiles = $('#evaluate2tiles'), $handler = $('li', $tiles), $main = $('#evaluate2main'), $window = $(window), $document = $(document), options = {
			autoResize : true,
			container : $main, 
			offset : 20,
			itemWidth : 280
		};
		var html = '';
		var json = eval(data);
		var sum = 0;
		for (var i = 0, l = json[0].length; i < l; i++) {
			html += '<div class="col-sm-12">';
			html += '<div class="col-sm-4" style="float: left; display: inline;">';
			html += '<h3>'+json[0][i].time+'</h3>';
			html += '</div>';
			html += "<div style='float: left; display: inline;'>";
			html += '<h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</h3>';
			html += '</div>';
			html += '<div class="col-sm-3" style="float: left; display: inline;">';
			html += '<h3>'+json[0][i].taskDetails+'</h3>';
			html += '</div>';
			html += "<div style='float: left; display: inline;'>";
			html += '<h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</h3>';
			html += '</div>';
			html += '<div class="col-sm-3" style="float: left; display: inline;">';
			html += '<ul class="show_number clearfix">';
			html += '<li><div class="atar_Show"><p tip='+json[0][i].star+'></p>';
			html += '</div><span></span></li></ul>';
			html += '</div>';
			html += "<div style='float: left; display: inline;'>";
			html += '<h2>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</h2>';
			html += '</div>';			
			html += '<hr size="10" width=100%>';
			html += '</div>';
			sum += parseInt(json[0][i].star);
			var avg=sum/l;	
		}
		html += '<div class="col-sm-5 col-sm-offset-1" style="float: left; display: inline;">';
		html += '<h1><b>本日的综合评分为：</b></h1>';
		html += '</div>';
		html += '<div class="col-sm-4" style="float: left; display: inline;">';
		html += '<ul class="show_number clearfix">';
		html += '<li><div class="atar_Show"><p tip='+avg+'></p>';
		html += '</div><span></span></li></ul>';
		html += '</div>';
		$tiles.append(html);
		
		var $tiles = $('#evaluate3tiles'), $handler = $('li', $tiles), $main = $('#evaluate3main'), $window = $(window), $document = $(document), options = {
			autoResize : true,
			container : $main, 
			offset : 20,
			itemWidth : 280
		};
		var html = '';
		var json = eval(data);
		var sum = 0;
		for (var i = 0, l = json[0].length; i < l; i++) {
			html += '<div class="col-sm-12">';
			html += '<div class="col-sm-4" style="float: left; display: inline;">';
			html += '<h3>'+json[0][i].time+'</h3>';
			html += '</div>';
			html += "<div style='float: left; display: inline;'>";
			html += '<h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</h3>';
			html += '</div>';
			html += '<div class="col-sm-3" style="float: left; display: inline;">';
			html += '<h3>'+json[0][i].taskDetails+'</h3>';
			html += '</div>';
			html += "<div style='float: left; display: inline;'>";
			html += '<h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</h3>';
			html += '</div>';
			html += '<div class="col-sm-3" style="float: left; display: inline;">';
			html += '<ul class="show_number clearfix">';
			html += '<li><div class="atar_Show"><p tip='+json[0][i].star+'></p>';
			html += '</div><span></span></li></ul>';
			html += '</div>';
			html += "<div style='float: left; display: inline;'>";
			html += '<h2>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</h2>';
			html += '</div>';			
			html += '<hr size="10" width=100%>';
			html += '</div>';
			sum += parseInt(json[0][i].star);
			var avg=sum/l;	
		}
		html += '<div class="col-sm-5 col-sm-offset-1" style="float: left; display: inline;">';
		html += '<h1><b>本日的综合评分为：</b></h1>';
		html += '</div>';
		html += '<div class="col-sm-4" style="float: left; display: inline;">';
		html += '<ul class="show_number clearfix">';
		html += '<li><div class="atar_Show"><p tip='+avg+'></p>';
		html += '</div><span></span></li></ul>';
		html += '</div>';
		$tiles.append(html);
	    
		
		scoreFun($("#startone"))
	    scoreFun($("#starttwo"),{
           fen_d:22,
           ScoreGrade:5
        });
	    $(".show_number li p").each(function(index, element) {
	        var num=$(this).attr("tip");
	        var www=num*2*16;//
	        $(this).css("width",www);
	        $(this).parent(".atar_Show").siblings("span").text(num+"分");
	    });
	}
});

function check0() {
	$("#startwo0").remove(); 
}
function check1() {
	$("#startwo1").remove(); 
}
function check2() {
	$("#startwo2").remove(); 
}
function check3() {
	$("#startwo3").remove(); 
}
function check4() {
	$("#startwo4").remove(); 
}
function check5() {
	$("#startwo5").remove(); 
}