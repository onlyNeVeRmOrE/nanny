<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>date</title>

<script src="./dist/jquery/jquery-3.1.1/jquery-3.1.1.min.js"></script>
<script type="text/javascript" src="js/Calendar.js"></script>

</head>

<body>
    <div> 
        <span>预计最晚答复时间 <input name="control_date3" type="text" id="control_date3" size="10" maxlength="10" onClick="new Calendar().show(this);" readonly="readonly" /></span>
    </div>
	<div>            
		<span>开始时间 <input name="control_date" type="text" id="control_date" size="10" maxlength="10" onClick="new Calendar().show(this);" readonly="readonly" /></span>


		<span>结束时间 <input name="control_date2" type="text" id="control_date2" size="10" maxlength="10" onClick="new Calendar().show(this);" readonly="readonly" /></span>
		
	</div>
	<div>
	    <span>可支付工资最小 <input name="money" type="text" id="money" size="10" maxlength="10" /></span>


		<span>可支付工资最大 <input name="money2" type="text" id="money2" size="10" maxlength="10" /></span>
	</div>
    <button id="to">提交</button>
    

<script>
$(function(){
	
	$("#to").on("click",function(){
		var id = ${param.uid};
		var cy = ${param.city};
		var currentEmail = "<%=session.getAttribute("sessionName")%>";
		var o = document.getElementsByTagName("input");
		$.ajax({
			type : "POST",
			dataType : "json",
			contentType:'application/x-www-form-urlencoded',
			url : "addOrder.action",
			data:{'user_id' : id ,
				  'city' : cy ,
				  'currentEmail' : currentEmail,
				  'finally' : o[0].value,
				  'start':o[1].value,
				  'end':o[2].value,
				  'small':o[3].value,
				  'most':o[4].value,
			     },
			success : function(data) {
				var flog = eval(data);
				if(flog.success == "true"){
					alert("预约成功,点击关闭当前页面");
					window.close();
				}else
					alert("预约失败");
			},
			error:function(){
				
			}
		})
		
	})
});
</script>   

</body>
</html>