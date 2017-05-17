function togetinf(the_id){
	$.ajax({
		type : "POST",
		dataType : "json",
		url : "getNannyInfo.action",
		contentType : "application/x-www-form-urlencoded",
		async:false,
		data:{
			"user_id":the_id
		},
		success : function(data) {
			var html = '';
			var i = 0;
			var result = eval(data);
			$("#idcard").text(result[2][0].id_card);
			$("#marriage").text(result[1][0].marry_status);
			$("#city").text(result[2][0].city);
			$("#area").text(result[2][0].address);
			$("#phone").text(result[2][0].phoneNumber);
			$("#child").text(result[1][0].child_is_local);
			$("#parent").text(result[1][0].parent_is_local);
			$("#nation").text(result[1][0].nation);
			$("#belief").text(result[1][0].faith);
			$("#education").text(result[1][0].education);
			$("#target").text(result[1][0].target_city);
			$("#now").text();
			$("#workinformation").text(result.workinformation);
			$("#salary").text(result[1][0].salary);
			$("#time").text(result[1][0].vacation);
			$("#isHome").text(result[1][0].is_home);
			$("#worktime").text();
			$("#name").text(result[2][0].name);
			$("#userID").text(result[2][0].user_id);
			$("#imageId").attr("src",result[2][0].pic_url);
			

            for(;;i++){
            	if(result[0][i]!=undefined){
            		 html += '<li>'; 
					 html += '<div class="solutit">'; 
					 html += '<img src="images/abouticon3.png">'; 
					 html += '<h4>'+result[0][i].skillName+'</h4>'; 
					 html += '<p>技能标签</p>'; 
					 html += '<a class="aaa" href="javascript:void(0)">了解详情</a>'; 
					 html += '</div>'; 
					 html += '<div class="solutit2">'; 
					 html += '<h4>详细描述</h4>'; 
					 html += '<span></span>';
					 html += '<p>'+result[0][i].skillDescribe+'</p>';
					 html += '<a class="aaa" href="javascript:void(0)">下载附件</a>';
					 html += '</div>';
					 html += '</li>';
					 
            	}else{
            		break;
            	}
            }
            $("#thelabel").append(html);
            $('#solutions li').click(function(){
            	$('#solutions .solutit2').stop().animate({
                    height:'0'

                },600);
                $(this).find('.solutit2').stop().animate({
                    height:'300'

                },600);
            });
		},
		error : function() {
			alert("请求失败");
		}
	});
}









				
				