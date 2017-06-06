$(document).ready(function(){
	$("#uploadImg").on('click', function() {
		alert(1);
		$.ajaxFileUpload({
			url : 'imgUpload.action', 
			secureuri:false,  
			async:false,
            fileElementId:'previewImg',
            dataType:'text',
			success : function(data) {
				if(data.success)
					alert("success");
				alert("success");
			},
			error : function(data, status, e) {
				alert(2);
			}
		});

	});
	return false;
})