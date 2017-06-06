$(document).ready(function(){
	
	var privence = "";
	var the_city = "";
	var the_area= "";
	var isHome = "";
	var education = "";
	var time = "";
	var salary = "";
	var label = new Array();
	var i = 0 ;
			
	$("#select1 dd").click(function () {
		$(this).addClass("selected").siblings().removeClass("selected");
		if ($(this).hasClass("select-all")) {
			$("#selectA").remove();
			isHome = "";
		} else {
			var copyThisA = $(this).clone();
			if ($("#selectA").length > 0) {
				$("#selectA a").html($(this).text());
				isHome = $(this).text();
			} else {
				$(".select-result dl").append(copyThisA.attr("id", "selectA"));
				isHome = copyThisA.text();
				
			}
		}
	});
	
	$("#select2 dd").click(function () {
		$(this).addClass("selected").siblings().removeClass("selected");
		if ($(this).hasClass("select-all")) {
			$("#selectB").remove();
			education = "";
		} else {
			var copyThisB = $(this).clone();
			if ($("#selectB").length > 0) {
				$("#selectB a").html($(this).text());
				education = $(this).text();
			} else {
				$(".select-result dl").append(copyThisB.attr("id", "selectB"));
				education = copyThisB.text();
			}
		}
	});
	
	$("#select3 dd").click(function () {
		$(this).addClass("selected").siblings().removeClass("selected");
		if ($(this).hasClass("select-all")) {
			$("#selectC").remove();
			time = "";
		} else {
			var copyThisC = $(this).clone();
			if ($("#selectC").length > 0) {
				$("#selectC a").html($(this).text());
				time = $(this).text();
			} else {
				$(".select-result dl").append(copyThisC.attr("id", "selectC"));
				time = copyThisC.text();
			}
		}
	});
	
	$("#select4 dd").click(function () {
		$(this).addClass("selected").siblings().removeClass("selected");
		if ($(this).hasClass("select-all")) {
			$("#selectD").remove();
			salary = "";
		} else {
			var copyThisD = $(this).clone();
			if ($("#selectD").length > 0) {
				$("#selectD a").html($(this).text());
				salary = $(this).text();
			} else {
				$(".select-result dl").append(copyThisD.attr("id", "selectD"));
				salary = copyThisD.text();
			}
		}
	});
	
	$("#select-label dd").click(function (e) {
		if(!$(this).hasClass("selected")){
		$(this).addClass("selected").siblings(".select-all").removeClass("selected");
		if ($(this).hasClass("select-all")) {
			$(".select-label-result dd").remove();
			$(".select-label-result dl").append('<dd class="select-label-no">暂时没有选择过滤条件</dd>');
			$(this).siblings().removeClass("selected");
			label = new Array();
		} else {
			var copyThisL = $(this).clone();
			var Label_id = $(e.target).attr('id');
			var new_name = Label_id + "_new" ;	
			$(".select-label-result dl").append(copyThisL.attr("id", new_name));
			label[i] = Label_id;
			i ++;
            toMatching(Label_id,new_name);

		}}
	});
	
	function toMatching(Id,Id_new){
		$("#"+Id_new).on("click",function(){
			$("#"+Id_new).remove();
			if(Id == "a_1"){
			$("#Label-1").removeClass("selected");
			label.remove("a_1");
			i -- ;
			toGetLength();
			}
			if(Id == "a_2"){
			$("#Label-2").removeClass("selected");
			label.remove("a_2");
			i -- ;
			toGetLength();
			}
			if(Id == "a_3"){
			$("#Label-3").removeClass("selected");
			label.remove("a_3");
			i -- ;
			toGetLength();
			}
			if(Id == "a_4"){
			$("#Label-4").removeClass("selected");
			label.remove("a_4");
			i -- ;
			toGetLength();
			}
			if(Id == "a_5"){
			$("#Label-5").removeClass("selected");
			label.remove("a_5");
			i -- ;
			toGetLength();
			}
			if(Id == "a_6"){
			$("#Label-6").removeClass("selected");
			label.remove("a_6");
			i -- ;
			toGetLength();
			}
			if(Id == "a_7"){
			$("#Label-7").removeClass("selected");
			label.remove("a_7");
			i -- ;
			toGetLength();
			}
//			if(Id == "a_8"){
//			$("#Label-8").removeClass("selected");
//			label.remove("a_8");
//			i -- ;
//			toGetLength();
//			}
			if(Id == "a_9"){
			$("#Label-9").removeClass("selected");
			label.remove("a_9");
			i -- ;
			toGetLength();
			}
			if(Id == "a_10"){
			$("#Label-10").removeClass("selected");
			label.remove("a_10");
			i -- ;
			toGetLength();
			}
			if(Id == "a_11"){
			$("#Label-11").removeClass("selected");
			label.remove("a_11");
			i -- ;
			toGetLength();
			}
		});
	};
	
	function toGetLength(){
		if($(".select-label-result dd").length < 2){
			$("#select-label .select-all").addClass("selected");
			$(".select-label-no").show();
		}
	}
	
	$("#test").on("click",function(){$("#Label-1").removeClass("selected")})
	
	
	$("#selectA").live("click", function () {		
		$(this).remove();
		$("#select1 .select-all").addClass("selected").siblings().removeClass("selected");
		isHome = "";
	});
	
	$("#selectB").live("click", function () {
		$(this).remove();
		$("#select2 .select-all").addClass("selected").siblings().removeClass("selected");
		eduction ="";
	});
	
	$("#selectC").live("click", function () {
		$(this).remove();
		$("#select3 .select-all").addClass("selected").siblings().removeClass("selected");
		time = "";
	});
	
	$("#selectD").live("click", function () {
		$(this).remove();
		$("#select4 .select-all").addClass("selected").siblings().removeClass("selected");
		salary = "";
	});
	
	$("#the-select-label").live("click", function () {
		$(this).remove();
		$("#select-label .select-all").addClass("selected").siblings().removeClass("selected");
	});
	
	$(".select-up dd").live("click", function () {
		if ($(".select-result dd").length > 1) {
			$(".select-no").hide();
		} else {
			$(".select-no").show();
		}
	});
	
	$(".select-down dd").live("click", function () {
		if ($(".select-label-result dd").length > 1) {
			$(".select-label-no").hide();
		} else {
			$(".select-label-no").show();
		}
	});
	
	$("#get").on("click",function getInformation(){
		
		 var p = $('input[name=cho_Province]' , form1);
		 var c = $('input[name=cho_City]' , form1);
		 var a = $('input[name=cho_Area]' , form1);
		 the_privence = p.val();
		 the_city     = c.val();
		 the_area     = a.val();
		 var json = {};
		 json.province = the_privence;
		 json.city = the_city;
		 json.area = the_area;
		 json.isHome = isHome;
		 json.education = education;
		 json.time = time;
		 json.salary = salary;
		 json.label = label;
		 $.ajax({
			 type:'POST',
			 url:'nannySearch.action',
			 contentType: "application/x-www-form-urlencoded",
			 data:{
				"parameter": JSON.stringify(json)
			 },
			 success:function(data){	
				 var i = 0;
				 var json = eval(data);
				 var number = json.length;
				 for(;i<number;i++)
			     {					 
					 str = JSON.stringify(json[i]);
					 setCookie(i , str , 1);
				 }
				 location.reload();
				 
			 },
			 error:function(data){
				 alert("查询失败");
			 }
		 });
	});
	
	function setCookie(key, value, t) {
	    var oDate = new Date();
	    oDate.setDate( oDate.getDate() + t );
	    document.cookie = key + '=' + value + ';expires=' + oDate.toGMTString();
	}
	
	Array.prototype.indexOf = function(val) {
		for (var i = 0; i < this.length; i++) {
		if (this[i] == val) return i;
		}
		return -1;
	};
	
	Array.prototype.remove = function(val) {
		var index = this.indexOf(val);
		if (index > -1) {
		this.splice(index, 1);
		}
	};
});