<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<script src="./dist/jquery/jquery-3.1.1/jquery-3.1.1.min.js"></script>
<script>
	function test(){
		$.ajax({
			type:"GET",
			url:"image.action",
			dataType:'json',
			success:function(data){
				var result = eval(data);
				alert(result[0].user_id);
			},
			error:function(){
				alert("请求失败");
			}
		})
	}
</script>
<title>图片读取测试</title>
</head>
<body>
	<input type="submit" onclick="test()">
	<img href="/imgResources/1.jgp"></img>
</body>
</html>