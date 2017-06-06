var now_cli;
$(document).ready(function() {
	alert(1);
	$.ajax({
		url : "getNannyAndTaskInfo.action",
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
	var name = json[2][0].name;
	var phone = json[2][0].phoneNumber;
	var mail = json[0][1].mail;
	var residence = json[2][0].address;
	var startTime = json[0][0].startTime;
	var endTime = json[0][0].endTime;
	document.getElementById("name").innerHTML = "姓名：" + name;
	document.getElementById("phone").innerHTML = "手机号:" + phone;
	document.getElementById("mail").innerHTML = "邮箱号:" + mail;
	document.getElementById("residence").innerHTML = "居住地:" + residence;
	document.getElementById("workTime").innerHTML = "工作时间:" + startTime + "至" + endTime;
	var $tiles = $('#nannytiles'), $handler = $('li', $tiles), $main = $('#nannymain'), $window = $(window), $document = $(document), options = {
		autoResize : true, 
		container : $main, 
		offset : 20,
		itemWidth : 280
	};
	var html = '';
	for (var i = 0, l = json[0].length; i < l; i++) {
		if (json[0][i].skillName == "月子餐") {
			html += '<span class="label label-primary">月子餐</span>';
			html += '&nbsp;&nbsp;';
		}
		if (json[0][i].skillName == "伤口护理") {
			html += '<span class="label label-primary">伤口护理</span>';
			html += '&nbsp;&nbsp;';
		}
		if (json[0][i].skillName == "生活照料") {
			html += '<span class="label label-primary">生活照料</span>';
			html += '&nbsp;&nbsp;';
		}
		if (json[0][i].skillName == "乳房护理") {
			html += '<span class="label label-primary">乳房护理</span>';
			html += '&nbsp;&nbsp;';
		}
		if (json[0][i].skillName == "技能培训") {
			html += '<span class="label label-primary">技能培训</span>';
			html += '&nbsp;&nbsp;';
		}
		if (json[0][i].skillName == "家庭关系协调") {
			html += '<span class="label label-primary">家庭关系协调</span>';
			html += '&nbsp;&nbsp;';
		}
		if (json[0][i].skillName == "心理疏通") {
			html += '<span class="label label-primary">心理疏通</span>';
			html += '&nbsp;&nbsp;';
		}
		if (json[0][i].skillName == "疾病观察") {
			html += '<span class="label label-primary">疾病观察</span>';
			html += '&nbsp;&nbsp;';
		}
		if (json[0][i].skillName == "生活照料2") {
			html += '<span class="label label-primary">生活照料2</span>';
			html += '&nbsp;&nbsp;';
		}
		if (json[0][i].skillName == "育儿记录") {
			html += '<span class="label label-primary">育儿记录</span>';
			html += '&nbsp;&nbsp;';
		}
		if (json[0][i].skillName == "早期促进") {
			html += '<span class="label label-primary">早期促进</span>';
			html += '&nbsp;&nbsp;';
		}
		if (json[0][i].skillName == "婴儿操") {
			html += '<span class="label label-primary">婴儿操</span>';
			html += '&nbsp;&nbsp;';
		}
	}
	$tiles.append(html);
	
	
	
	
	var $tiles = $('#todaytiles'), $handler = $('li', $tiles), $main = $('#todaymain'), $window = $(window), $document = $(document), options = {
		autoResize : true, 
		container : $main,
		offset : 20, 
		itemWidth : 280
	};
	var html = '';
	
	var json = eval(data);
	
	for (var  n= 0, m = json[3].length; n < m; n++) {
		html += '<div id="startwo'+n+'" class="col-sm-12">';
		html += '<div class="col-sm-4" style="float: left; display: inline;">';
		html += '<h3>'+json[3][n].time+'</h3>';
		html += '</div>';
		html += "<div style='float: left; display: inline;'>";
		html += '<h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</h3>';
		html += '</div>';
		html += '<div class="col-sm-2" style="float: left; display: inline;">';
		html += '<h3>'+json[3][n].taskDetails+'</h3>';
		html += '</div>';
		html += "<div style='float: left; display: inline;'>";
		html += '<h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</h3>';
		html += '</div>';
		html += '<br>';
		html += '<div class="col-sm-2" style="float: left; display: inline;">';
		html += '<div id="starttwo'+n+'" class="block clearfix">';		
		html += '<div class="star_score"></div>';
		html += '<p style="float:left;">您的评分：<span class="fenshu"></span> 分</p>';
		html += '<div class="attitude"></div>';
		html += '</div>';
		html += '</div>';
		html += "<div style='float: left; display: inline;'>";
		html += '<h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</h3>';
		html += '</div>';
		html += '<div class="col-sm-2" style="float: left; display: inline;">';
		html += '<input type="button" class="btn btn-primary" value="确认完成" onclick="check'+n+'();">';
		html += '</div>';
		html += '<hr size="10" width=100%>';
		html += '</div>';					
	}
	$tiles.append(html);
	
	function scoreFun(object,opts){
		var defaults={
			fen_d:16,  // 每个a的宽度
			ScoreGrade:10,  // a的个数
			types:["很不满意",
			       "差得太离谱，与卖家描述的严重不符，非常不满",
			       "不满意",
			       "部分有破损，与卖家描述的不符，不满意",
			       "一般",
			       "质量一般",
			       "没有卖家描述的那么好",
			       "满意",
			       "质量不错，与卖家描述的基本一致，还是挺满意的",
			       "非常满意",
			       "非常差",
			       "差",
			       "一般",
			       "好",
			       "非常好"],
			       nameScore:"fenshu",
			       parent:"star_score",
			       attitude:"attitude"};
			options=$.extend({},defaults,opts);
		var countScore=object.find("."+options.nameScore);  // 找到名为“fenshu”的类
		var startParent=object.find("."+options.parent);    // 找到名为“star_score”的类
		var atti=object.find("."+options.attitude);    // 找到名为“attitude”的类
		
		var fen_cli;
		var atu;
		var fen_d=options.fen_d;     // 每个a的宽度
		var len=options.ScoreGrade;  // 把a的个数赋值给len
		startParent.width(fen_d*len); //包含a的div盒子的宽度
		var preA=(5/len);
		for(var i=0;i<len;i++){
			var newSpan=$("<a href='javascript:void(0)'></a>");     // 不整体刷新页面的情况下，可以使用void(0)
			newSpan.css({"left":0,"width":fen_d*(i+1),"z-index":len-i});  // 设置a的宽度、层级
			newSpan.appendTo(startParent)
		}                                    //  把a放到类名为“star_score”的div里
	    startParent.find("a").each(function(index,element){
		  	$(this).click(function(){        // 点击事件
		  	now_cli=index;                   // 当前a的索引值
		  	show(index,$(this))             //  调用show方法
		});
		$(this).mouseenter(function(){    /* mouseenter事件(与 mouseover 事件不同，只有在鼠标指针穿过被选元素时，
		  	                                 才会触发 mouseenter 事件。如果鼠标指针穿过任何子元素，同样会触发 mouseover 事件。) */
		  	show(index,$(this))
		});
		$(this).mouseleave(function(){    // mouseleave事件 
		  	if(now_cli>=0){
		  		var scor=preA*(parseInt(now_cli)+1);         // 评分
		  		startParent.find("a").removeClass("clibg");  // 清除a的“clibg”类
		  		startParent.find("a").eq(now_cli).addClass("clibg"); // eq()选择器，选取索引值为“now_cli”的a，给它加上“clibg”类
		  		var ww=fen_d*(parseInt(now_cli)+1);                  // 当前a的宽度
		  		startParent.find("a").eq(now_cli).css({"width":ww,"left":"0"});  // 给索引值为“now_cli”的a加上宽度“ww”和left值
		  		if(countScore){
		  			countScore.text(scor)
		  		} 
		  	}else{
		  		startParent.find("a").removeClass("clibg");
		  		if(countScore){
		  			countScore.text("")
			  		}
			  	}
			  })
			});
	 
			function show(num,obj){
			  	var n=parseInt(num)+1;
			  	var lefta=num*fen_d;
			  	var ww=fen_d*n;
			  	var scor=preA*n;                        // 评分
		  	(len>5)?atu=options.types[parseInt(num)]:atu=options.types[parseInt(num)+10];       // 用户态度
		  	object.find("a").removeClass("clibg");  // 清除所有a的“clibg”类
		  	obj.addClass("clibg");                  // 给当前a添加“clibg”类
		  	obj.css({"width":ww,"left":"0"});       // 给当前a添加宽度“ww”和left值
		  	countScore.text(scor);                  // 显示评分
		  	atti.text(atu);                        // 显示用户态度
		}
	};
				
	scoreFun($("#starttwo0"), {
		fen_d : 22,
		ScoreGrade : 5
	});
	scoreFun($("#starttwo1"), {
		fen_d : 22,
		ScoreGrade : 5
	});
	scoreFun($("#starttwo2"), {
		fen_d : 22,
		ScoreGrade : 5
	});
	scoreFun($("#starttwo3"), {
		fen_d : 22,
		ScoreGrade : 5
	});
	scoreFun($("#starttwo4"), {
		fen_d : 22,
		ScoreGrade : 5
	});
	scoreFun($("#starttwo5"), {
		fen_d : 22,
		ScoreGrade : 5
	});
	$(".show_number li p").each(function(index, element) {
		var num = $(this).attr("tip");
		var www = num * 2 * 16;
		$(this).css("width", www);
		$(this).parent(".atar_Show").siblings("span")
				.text(num + "分");
	});
		
	
	
	
	
	var $tiles = $('#tasktiles1'), $handler = $('li', $tiles), $main = $('#taskmain1'), $window = $(window), $document = $(document), options = {
		autoResize : true,
		container : $main,
		offset : 20,
		itemWidth : 280
	};
	var html = '';
	
	var json = eval(data);
	var sum = 0;
	for (var i = 0, l = json[3].length; i < l; i++) {
		html += '<div class="col-sm-12">';
		html += '<div class="col-sm-4" style="float: left; display: inline;">';
		html += '<h3>'+json[3][i].time+'</h3>';
		html += '</div>';
		html += "<div style='float: left; display: inline;'>";
		html += '<h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</h3>';
		html += '</div>';
		html += '<div class="col-sm-3" style="float: left; display: inline;">';
		html += '<h3>'+json[3][i].taskDetails+'</h3>';
		html += '</div>';
		html += "<div style='float: left; display: inline;'>";
		html += '<h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</h3>';
		html += '</div>';
		html += '<div class="col-sm-3" style="float: left; display: inline;">';
		html += '<ul class="show_number clearfix">';
		html += '<li><div class="atar_Show"><p tip='+json[3][i].star+'></p>';
		html += '</div><span></span></li></ul>';
		html += '</div>';
		html += "<div style='float: left; display: inline;'>";
		html += '<h2>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</h2>';
		html += '</div>';						
		html += '<hr size="10" width=100%>';
		html += '</div>';		
		sum += parseInt(json[3][i].star);
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
	
			
	var $tiles = $('#tasktiles2'), $handler = $('li', $tiles), $main = $('#taskmain2'), $window = $(window), $document = $(document), options = {
		autoResize : true,
		container : $main,
		offset : 20,
		itemWidth : 280
	};
	var html = '';			
	var json = eval(data);
	var sum = 0;
	for (var i = 0, l = json[3].length; i < l; i++) {
		html += '<div class="col-sm-12">';
		html += '<div class="col-sm-4" style="float: left; display: inline;">';
		html += '<h3>'+json[3][i].time+'</h3>';
		html += '</div>';
		html += "<div style='float: left; display: inline;'>";
		html += '<h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</h3>';
		html += '</div>';
		html += '<div class="col-sm-3" style="float: left; display: inline;">';
		html += '<h3>'+json[3][i].work+'</h3>';
		html += '</div>';
		html += "<div style='float: left; display: inline;'>";
		html += '<h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</h3>';
		html += '</div>';
		html += '<div class="col-sm-3" style="float: left; display: inline;">';
		html += '<ul class="show_number clearfix">';
		html += '<li><div class="atar_Show"><p tip='+json[3][i].star+'></p>';
		html += '</div><span></span></li></ul>';
		html += '</div>';
		html += "<div style='float: left; display: inline;'>";
		html += '<h2>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</h2>';
		html += '</div>';						
		html += '<hr size="10" width=100%>';
		html += '</div>';		
		sum += parseInt(json[3][i].star);
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
	
	var $tiles = $('#tasktiles3'), $handler = $('li', $tiles), $main = $('#taskmain3'), $window = $(window), $document = $(document), options = {
		autoResize : true,
		container : $main,
		offset : 20,
		itemWidth : 280
	};
	var html = '';			
	var json = eval(data);
	var sum = 0;
	for (var i = 0, l = json[3].length; i < l; i++) {
		html += '<div class="col-sm-12">';
		html += '<div class="col-sm-4" style="float: left; display: inline;">';
		html += '<h3>'+json[3][i].time+'</h3>';
		html += '</div>';
		html += "<div style='float: left; display: inline;'>";
		html += '<h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</h3>';
		html += '</div>';
		html += '<div class="col-sm-3" style="float: left; display: inline;">';
		html += '<h3>'+json[3][i].work+'</h3>';
		html += '</div>';
		html += "<div style='float: left; display: inline;'>";
		html += '<h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</h3>';
		html += '</div>';
		html += '<div class="col-sm-3" style="float: left; display: inline;">';
		html += '<ul class="show_number clearfix">';
		html += '<li><div class="atar_Show"><p tip='+json[3][i].star+'></p>';
		html += '</div><span></span></li></ul>';
		html += '</div>';
		html += "<div style='float: left; display: inline;'>";
		html += '<h2>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</h2>';
		html += '</div>';						
		html += '<hr size="10" width=100%>';
		html += '</div>';		
		sum += parseInt(json[3][i].star);
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
	
    $(".show_number li p").each(function(index, element) {
        var num=$(this).attr("tip");
        var www=num*2*16;//
        $(this).css("width",www);
        $(this).parent(".atar_Show").siblings("span").text(num+"分");
    });
}
});

function check0() {		
	alert(now_cli);
	var json = [];
	var task0 = {};
	task0.time = json[3][0].time;
	task0.work = json[3][0].taskDetails;
	task0.star = now_cli;
	
	json.push(task0);
	$.ajax({
		type : "POST",
		url : "",
		contentType : "application/x-www-form-urlencoded",
		dataType : "json",
		data : {
			"task0Data":JSON.stringify(task0)
		},
		success : function(jsonResult) {
			var msg = "您真的确定要完成吗？请确认！";
			if (confirm(msg) == true) {
				$("#startwo0").remove(); 
			}
		},
		error : function(jsonResult) {
			alert("失败");
		}
	})
}
function check1() {	
	alert(now_cli);
	var json = [];
	var task1 = {};
	task1.time = json[3][1].time;
	task1.work = json[3][1].taskDetails;
	task1.star = now_cli;
	
	json.push(task1);
	$.ajax({
		type : "POST",
		url : "",
		contentType : "application/x-www-form-urlencoded",
		dataType : "json",
		data : {
			"task1Data":JSON.stringify(task1)
		},
		success : function(jsonResult) {
			var msg = "您真的确定要完成吗？请确认！";
			if (confirm(msg) == true) {
				$("#startwo1").remove(); 
			}
		},
		error : function(jsonResult) {
			alert("失败");
		}
	})
}
function check2() {				
	var json = [];
	var task2 = {};
	task2.time = json[3][2].time;
	task2.work = json[3][2].taskDetails;
	task2.star = now_cli;
	
	json.push(task2);
	$.ajax({
		type : "POST",
		url : "",
		contentType : "application/x-www-form-urlencoded",
		dataType : "json",
		data : {
			"task2Data":JSON.stringify(task2)
		},
		success : function(jsonResult) {
			var msg = "您真的确定要完成吗？请确认！";
			if (confirm(msg) == true) {
				$("#startwo2").remove(); 
			}
		},
		error : function(jsonResult) {
			alert("失败");
		}
	})
}
function check3() {				
	var json = [];
	var task3 = {};
	task3.time = json[3][3].time;
	task3.work = json[3][3].taskDetails;
	task3.star = now_cli;
	
	json.push(task3);
	$.ajax({
		type : "POST",
		url : "",
		contentType : "application/x-www-form-urlencoded",
		dataType : "json",
		data : {
			"task3Data":JSON.stringify(task3)
		},
		success : function(jsonResult) {
			var msg = "您真的确定要完成吗？请确认！";
			if (confirm(msg) == true) {
				$("#startwo3").remove(); 
			}
		},
		error : function(jsonResult) {
			alert("失败");
		}
	})
}
function check4() {				
	var json = [];
	var task4 = {};
	task4.time = json[3][4].time;
	task4.work = json[3][4].taskDetails;
	task4.star = now_cli;
	
	json.push(task4);
	$.ajax({
		type : "POST",
		url : "",
		contentType : "application/x-www-form-urlencoded",
		dataType : "json",
		data : {
			"task4Data":JSON.stringify(task4)
		},
		success : function(jsonResult) {
			var msg = "您真的确定要完成吗？请确认！";
			if (confirm(msg) == true) {
				$("#startwo4").remove(); 
			}
		},
		error : function(jsonResult) {
			alert("失败");
		}
	})
}
function check5() {				
	var json = [];
	var task5 = {};
	task1.time = json[3][5].time;
	task1.work = json[3][5].taskDetails;
	task1.star = now_cli;
	
	json.push(task5);
	$.ajax({
		type : "POST",
		url : "",
		contentType : "application/x-www-form-urlencoded",
		dataType : "json",
		data : {
			"task5Data":JSON.stringify(task5)
		},
		success : function(jsonResult) {
			var msg = "您真的确定要完成吗？请确认！";
			if (confirm(msg) == true) {
				$("#startwo5").remove(); 
			}
		},
		error : function(jsonResult) {
			alert("失败");
		}
	})
}

