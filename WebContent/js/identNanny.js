$(document)
		.ready(
				function() {
					alert(1);
					$.ajax({
						url : "getIdentityInfo.action",
						dataType : 'json',
						type:"GET",
						success : function(result) {
							var data = eval(result);
							succFunction(data);
						},
						error : function(result) {
							alert("error");
						}
					});

					function succFunction(data) {
						var json = eval(data);
						var json=eval(data);
						if (json[0].identity == "nanny") {
							document.getElementById('workCondition').value=json[1].experience;
							document.getElementById('nannyEducation').value=json[1].education;
							document.getElementById('nannySalary').value=json[1].salary;
							document.getElementById('nannyRestTime').value=json[1].vacation;
							document.getElementById('nation').value=json[1].nation;
							document.getElementById('faith').value=json[1].faith;
							document.getElementById('maritalStatus').value=json[1].marry_status;
							document.getElementById('isChildLocal').value=json[1].child_is_local;
							document.getElementById('isParentLocal').value=json[1].parent_is_local;
							document.getElementById('introduce').value=json[1].introduction;
							document.getElementById('remark').value=json[1].remark;
							$("#nannysubmit").hide();
							$('input,select,textarea',
									$('form[name="nannyform"]')).prop(
									'disabled', true);
						} else {
							// 去认证，点认证，进入认证页面
							window.location.href = "identNanny.jsp";
						}
					}

				});