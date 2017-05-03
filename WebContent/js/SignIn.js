$(document)
		.ready(
				function() {

					var pw;
					var username;
					$("#signIn")
							.on(
									"click",
									function() {
										swal.setDefaults({
											confirmButtonText : '下一步 &rarr;',
											showCancelButton : true,
											animation : false,
											progressSteps : [ '1', '2', '3' ]
										})

										var steps = [
												{
													title : '输入您的邮箱',
													text : '格式:xx@xx.com',
													input : 'email',
													preConfirm : function(email) { // 功能执行前确认操作，支持function
														return new Promise(
																function(
																		resolve,
																		reject) {
																	setTimeout(
																			function() { // 添加一个时间函数，在俩秒后执行，这里可以用作异步操作数据
																							// 可添加ajax操作
																				$
																						.ajax({
																							type : "POST",
																							dataType : "json",
																							url : "exist.action?email="
																									+ email,
																							success : function(
																									data) {
																								var result = eval(data);
																								if (result.emailIsExist === 'true')
																									reject('用户已存在') // 提示信息
																								else {
																									username = email;
																									resolve() // 方法出口
																								}
																							},
																							error : function() {
																								alert("请求失败");
																							}
																						});
																			},
																			2000)
																})
													}

												},
												{
													title : '输入您的密码',
													text : '最多10位',
													input : 'password',
													inputAttributes : {
														'maxlength' : 10,
														'autocapitalize' : 'off',
														'autocorrect' : 'off'
													},

													preConfirm : function(
															password) { // 功能执行前确认操作，支持function
														return new Promise(
																function(
																		resolve,
																		reject) {
																	if (password === '') { // 用来提示用户名已注册
																							// 这里的意思是：如果输入的值等于'taken@example.com',数据已存在，提示信息
																		reject('输入不能为空') // 提示信息
																	} else {
																		pw = password;
																		resolve(); // 方法出口
																	}

																})
													}

												},
												{
													title : '重复输入您的密码',
													text : '最多10位',
													input : 'password',
													inputAttributes : {
														'maxlength' : 10,
														'autocapitalize' : 'off',
														'autocorrect' : 'off'
													},

													preConfirm : function(
															password) { // 功能执行前确认操作，支持function
														return new Promise(
																function(
																		resolve,
																		reject) {
																	if (password == pw) {// 这里些ajax传输信息
																				$
																						.ajax({
																							url : "register.action?username="
																									+ username
																									+ "&password="
																									+ pw,
																							type : "POST",
																							success : function() {
																								AfterSignIn(
																										username,
																										pw);
																							},
																							error:function(){
																								alert("请求失败");
																							}
																						}),
																				resolve()
																	} else {
																		reject('两次输入不一样')
																	}
																})
													}

												} ]

										swal.queue(steps).then(
												function(result) {

													swal.resetDefaults()
													swal('Good job!', '您注册成功!',
															'success')
												}, function() {

													swal.resetDefaults()
												})
									})
				});

function AfterSignIn(user_email, user_pw) {
	alert(1);
	$.ajax({
		type : "POST",
		url : "login.action?username=" + user_email + "&password=" + user_pw,// 目标url
		dataType : "json",
		success : function(jsonResult) {
			var flog = eval(jsonResult);
			if (flog.authResult === 'true') {
				DisplayAndHiddenBtn("signIn", "h");
				DisplayAndHiddenBtn("login", "h");
				DisplayAndHiddenBtn("userEmail", "d");
				DisplayAndHiddenBtn("logout", "d");
				$("#userEmail").text(user_email);

			} else {

				swal('登入失败!', '请重新登入!', 'error')
			}
		},

		error : function() {
			alert("请求失败");
		}
	});
}

function DisplayAndHiddenBtn(btnId, type) {// 这里的button意味着<a></a>
	var currentBtn = document.getElementById(btnId);
	if (type == "d") {
		currentBtn.style.display = "block";// style中的display属性 显示
	} else if (type == "h") {
		currentBtn.style.display = "none";// 不显示
	}
}
