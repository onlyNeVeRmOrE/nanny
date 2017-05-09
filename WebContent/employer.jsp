<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

<head>
<meta charset="utf-8">
<title>用户中心</title>
<link rel="stylesheet"
	href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
<script
	src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/core-js/2.4.1/core.js"></script>
<link href="css/tab.css" type="text/css" rel="stylesheet" />
<link href="css/uploadphoto.css" type="text/css" rel="stylesheet" />
<link href="css/uploadphoto2.css" type="text/css" rel="stylesheet" />
<link href="css/addskill.css" type="text/css" rel="stylesheet" />
<link href="css/add2.css" type="text/css" rel="stylesheet" />
<script src="js/jquery.js"></script>
<script src="js/imgUp.js"></script>
<script src="js/ajaxUtils.js"></script>
<script src="js/basic.js"></script>
<script src="js/nanny.js"></script>
<script src="js/employer.js"></script>
<script src="js/showdiv.js"></script>
<script src="js/identEmployer.js"></script>
<script src="other/jquery/jquery-3.1.1/jquery-3.1.1.min.js"></script>
<link rel="stylesheet"
	href="http://www.jq22.com/jquery/font-awesome.4.6.0.css" />
<link rel="stylesheet"
	href="other/validation/vendor/bootstrap/css/bootstrap.css">
<link rel="stylesheet"
	href="other/validation/dist/css/formValidation.css">
<script type="text/javascript"
	src="other/validation/vendor/bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript"
	src="other/validation/dist/js/formValidation.js"></script>
<script type="text/javascript"
	src="other/validation/dist/js/framework/bootstrap.js"></script>
<script type="text/javascript"
	src="other/validation/dist/js/language/zh_CN.js"></script>
<link rel="stylesheet" type="text/css"
	href="other/jquery-nav20150805/css/default.css">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Roboto:300,700">
<link rel="stylesheet" href="other/jquery-nav/css/style.min.css">
<script src="other/jquery-nav/js/production/materialMenu.min.js"></script>
</head>

<body>
	<div id="wrapper" class="wrapper"></div>
	<button id="mm-menu-toggle" class="mm-menu-toggle">Toggle Menu</button>
	<nav id="mm-menu" class="mm-menu">
	<div class="mm-menu__header">
		<h2 class="mm-menu__title">用户中心</h2>
	</div>
	<ul class="mm-menu__items">
		<li class="mm-menu__item"><a class="mm-menu__link"
			href="basic.jsp"> <span class="mm-menu__link-text"><i
					class="md md-home"></i> 基本信息</span>
		</a></li>
		<li class="mm-menu__item"><a class="mm-menu__link" href="#">
				<span class="mm-menu__link-text"><i class="md md-person"></i>
					选填信息</span>
		</a></li>
		<li class="mm-menu__item"><a class="mm-menu__link" href="#">
				<span class="mm-menu__link-text"><i class="md md-inbox"></i>
					修改密码</span>
		</a></li>
		<li class="mm-menu__item"><a class="mm-menu__link"
			href="nanny.jsp"> <span class="mm-menu__link-text"><i
					class="md md-favorite"></i> 月嫂认证</span>
		</a></li>
		<li class="mm-menu__item"><a class="mm-menu__link"
			href="employer.jsp"> <span class="mm-menu__link-text"><i
					class="md md-settings"></i> 雇主认证</span>
		</a></li>
	</ul>
	</nav>

	<script>
		  var menu = new Menu;
		</script>

	<div class="container">
		<div class="row">
			<section>
			<div class="page-header">
				<h1>雇主认证</h1>
			</div>

			<div>
				<form action="" method="post" id="employerform" name="employerform"
					class="form-horizontal" target="employer_iframe">
					<fieldset>
						<legend>月嫂要求</legend>

						<div class="form-group">
							<label class="col-sm-2 control-label">
								<p style='font-size: 19px; font-weight: bold;'>需要工作住址</p>
							</label>
							<div class="col-sm-5">
								<input type="text" class="form-control" id="workPlace"
									name="workPlace" placeholder="如：xx省xx市xx县xx路">
							</div>
						</div>

						<div class="form-group">
							<label class="col-sm-2 control-label">
								<p style='font-size: 19px; font-weight: bold;'>是否住家：</p>
							</label>

							<div class="col-sm-2">
								<div class="radio">
									<label> <input type="radio" id="isNeedLive1"
										name="isNeedLive" value="是" required
										data-fv-notempty-message="请选择是否住家"> 是
									</label>
								</div>

								<div class="radio">
									<label> <input type="radio" id="isNeedLive2"
										name="isNeedLive" value="否"> 否
									</label>
								</div>
							</div>
						</div>

						<div class="row">
							<div class="form-group col-sm-4">
								<label class="col-sm-6 control-label">
									<p style='font-size: 19px; font-weight: bold;'>经验需要</p>
								</label>
								<div class="col-sm-6">
									<select class="form-control" id="experience" name="experience">
										<option value="">请选择</option>
										<option value="1年以上">1年以上</option>
										<option value="2年以上">2年以上</option>
										<option value="5年以上">5年以上</option>
									</select>
								</div>
							</div>
							

							<div class="form-group col-sm-4">
								<label class="col-sm-6 control-label">
									<p style='font-size: 19px; font-weight: bold;'>学历</p>
								</label>
								<div class="col-sm-6">
									<select class="form-control" id="employerEducation"
										name="employerEducation">
										<option value="">请选择</option>
										<option value="初中">初中</option>
										<option value="中专">中专</option>
										<option value="专科">专科</option>
										<option value="本科">本科</option>
										<option value="本科以上">本科以上</option>
									</select>
								</div>
							</div>
						</div>

						<div class="row">
							<div class="form-group col-sm-4">
								<label class="col-sm-6 control-label">
									<p style='font-size: 19px; font-weight: bold;'>可支付工资</p>
								</label>
								<div class="col-sm-6">
									<input type="text" class="form-control" id="employerSalary"
										name="employerSalary" placeholder="单位:元/月">
								</div>
							</div>

							<div class="form-group col-sm-4">
								<label class="col-sm-6 control-label">
									<p style='font-size: 19px; font-weight: bold;'>月嫂可休息天数</p>
								</label>
								<div class="col-sm-6">
									<input type="text" class="form-control" id="employerRestTime"
										name="employerRestTime" placeholder="单位:天/月">
								</div>
							</div>
						</div>
					</fieldset>

					<fieldset>
						<legend>母婴情况</legend>
						<div class="form-group">
							<label class="col-sm-2 control-label">
								<p style='font-size: 19px; font-weight: bold;'>婴儿出生日期</p>
							</label>
							<div class="col-sm-8">
								<div class="row no-gutter">
									<div class="col-sm-2">
										<input type="text" class="form-control" id="babyyear"
											name="year" placeholder="年">
									</div>

									<div class="col-sm-2">
										<input type="text" class="form-control" id="babymonth"
											name="month" placeholder="月">
									</div>

									<div class="col-sm-2">
										<input type="text" class="form-control" id="babydate"
											name="date" placeholder="日">
									</div>
								</div>
								<input type="hidden" name="babyBirthday">
							</div>
						</div>

						<div class="form-group col-sm-4">
							<label class="col-sm-6 control-label">
								<p style='font-size: 19px; font-weight: bold;'>婴儿出生体重</p>
							</label>
							<div class="col-sm-6">
								<input type="text" class="form-control" id="babyBirthWeight"
									name="babyBirthWeight" placeholder="单位:千克">
							</div>
						</div>

						<div class="form-group col-sm-4">
							<label class="col-sm-6 control-label">
								<p style='font-size: 19px; font-weight: bold;'>母亲年龄</p>
							</label>
							<div class="col-sm-6">
								<input type="text" class="form-control" id="motherAge"
									name="motherAge" placeholder="单位:岁">
							</div>
						</div>

						<div class="form-group col-sm-4">
							<label class="col-sm-6 control-label">
								<p style='font-size: 19px; font-weight: bold;'>母亲体重</p>
							</label>
							<div class="col-sm-6">
								<input type="text" class="form-control" id="motherWeight"
									name="motherWeight" placeholder="单位:千克">
							</div>
						</div>

						<div class="form-group col-sm-4">
							<label class="col-sm-6 control-label">
								<p style='font-size: 19px; font-weight: bold;'>母亲身高</p>
							</label>
							<div class="col-sm-6">
								<input type="text" class="form-control" id="motherHeight"
									name="motherHeight" placeholder="单位:厘米">
							</div>
						</div>

						<div class="form-group col-sm-4">
							<label class="col-sm-6 control-label">
								<p style='font-size: 19px; font-weight: bold;'>分娩次数</p>
							</label>
							<div class="col-sm-6">
								<input type="text" class="form-control" id="deliveryTimes"
									name="deliveryTimes" placeholder="单位:次">
							</div>
						</div>

						<div class="form-group col-sm-4">
							<label class="col-sm-6 control-label">
								<p style='font-size: 19px; font-weight: bold;'>分娩方式</p>
							</label>
							<div class="col-sm-6">
								<select class="form-control" id="deliveryMode"
									name="deliveryMode">
									<option value="">请选择</option>
									<option value="顺产">顺产</option>
									<option value="剖腹产">剖腹产</option>
								</select>
							</div>
						</div>
					</fieldset>

					<fieldset>
						<legend>母婴健康报告</legend>
						<div class="form-group">
							<label class="col-sm-2 control-label">
								<p style='font-size: 19px; font-weight: bold;'>母婴健康报告
									&nbsp&nbsp&nbsp&nbsp(本站承诺保密)</p>
							</label>
							<div class="col-sm-4">
								<input type="file" class="form-control" id="healthReprotFile"
									name="healthReprotFile" /> <span class="help-block">请上传pdf文件且大小不能超过10M</span>
							</div>
						</div>
					</fieldset>

					<div class="form-group">
						<div class="col-sm-10 col-sm-offset-2">
							<input type="submit" id="employersubmit" class="btn btn-default"
								value="提 交" onclick="employer();">
						</div>
					</div>
				</form>
			</div>
			</section>
		</div>
	</div>

	<script type="text/javascript">
            $(document).ready(function() {
                $('#employerform').formValidation({
                    icon: {
                        valid: 'glyphicon glyphicon-ok',
                        invalid: 'glyphicon glyphicon-remove',
                        validating: 'glyphicon glyphicon-refresh'
                    },
                    fields: {
                        babyBirthday: {
                            excluded: false,
                            validators: {
                                notEmpty: {
                                    message: '请填写每一个空格',
                                    transformer: function($field, validatorName) {
                                        var y = $('#employerform').find('[name="year"]').val(),
                                            m = $('#employerform').find('[name="month"]').val(),
                                            d = $('#employerform').find('[name="date"]').val();
                                        return (y === '' || m === '' || d === '') ? '' : [y, m, d].join('.');
                                    }
                                },
                                date: {
                                    format: 'YYYY.MM.DD',
                                    separator: '.',
                                    transformer: function($field, validatorName) {
                                        var y = $('#employerform').find('[name="year"]').val(),
                                            m = $('#employerform').find('[name="month"]').val(),
                                            d = $('#employerform').find('[name="date"]').val();
                                        return [y, m, d].join('.');
                                    },
                                    message: '请输入正确的婴儿出生日期'
                                }
                            }
                        },
                        workPlace: {
                            validators: {
                                notEmpty: {
                                    message: '请填写需要工作住址，不能为空'
                                },
                                stringLength: {
                                    min: 1,
                                    max: 30,
                                    message: '超出长度限制'
                                },
                                regexp: {
                                    regexp: /^[\u4e00-\u9fa5_a-zA-Z0-9]+$/,
                                    message: '请输入正确的工作住址'
                                }
                            }
                        },
                        experience: {
                            validators: {
                                notEmpty: {
                                    message: '请选择经验需要，不能为空'
                                }
                            }
                        },
                        employerEducation: {
                            validators: {
                                notEmpty: {
                                    message: '请选择学历，不能为空'
                                }
                            }
                        },
                        employerSalary: {
                            validators: {
                                notEmpty: {
                                    message: '请填写可支付工资，不能为空'
                                },
                                regexp: {
                                    regexp: /^([0-9])+(\.[0-9]+)?$/,
                                    message: '可支付工资必须为非负数'
                                }
                            }
                        },
                        employerRestTime: {
                            validators: {
                                notEmpty: {
                                    message: '请填写月嫂可休息天数，不能为空'
                                },
                                regexp: {
                                    regexp: /^(?:\d|[12]\d|31)$/,
                                    message: '期望休息天数必须为0-31的整数'
                                }
                            }
                        },
                        babyBirthWeight: {
                            validators: {
                                notEmpty: {
                                    message: '请填写婴儿体重，不能为空'
                                },
                                regexp: {
                                    regexp: /^([0-9])+(\.[0-9]+)?$/,
                                    message: '婴儿出生体重必须为非负数'
                                }
                            }
                        },
                        motherAge: {
                            validators: {
                                notEmpty: {
                                    message: '请填写母亲年龄，不能为空'
                                },
                                regexp: {
                                    regexp: /^[1-9]*[1-9][0-9]*$/,
                                    message: '母亲年龄必须为正整数'
                                }
                            }
                        },
                        motherWeight: {
                            validators: {
                                notEmpty: {
                                    message: '请填写母亲体重，不能为空'
                                },
                                regexp: {
                                    regexp: /^([0-9])+(\.[0-9]+)?$/,
                                    message: '母亲体重必须为非负数'
                                }
                            }
                        },
                        motherHeight: {
                            validators: {
                                notEmpty: {
                                    message: '请填写母亲身高，不能为空'
                                },
                                regexp: {
                                    regexp: /^([0-9])+(\.[0-9]+)?$/,
                                    message: '母亲身高必须为非负数'
                                }
                            }
                        },
                        deliveryTimes: {
                            validators: {
                                notEmpty: {
                                    message: '请填写分娩次数，不能为空'
                                },
                                regexp: {
                                    regexp: /^(([1-9]\d*)|\d)$/,
                                    message: '分娩次数必须为整数'
                                }
                            }
                        },
                        deliveryMode: {
                            validators: {
                                notEmpty: {
                                    message: '请选择分娩方式，不能为空'
                                }
                            }
                        },
                        healthReprotFile: {
                            validators: {
                                file: {
                                    extension: 'pdf',
                                    type: 'application/pdf',
                                    maxSize: 10 * 1024 * 1024,
                                    message: '请上传pdf文件且不能超过10M.'
                                }
                            }
                        }
                    }
                }).on('keyup', 'input[name="year"], input[name="month"], input[name="date"]', 'success.form.fv', function(e) {
                    $('#employerform').formValidation('revalidateField', 'babyBirthday');
                    e.preventDefault();
                    $('#employerform').data('formValidation').disableSubmitButtons(true);
                });
            });

        </script>

	<iframe id="id_iframe" name="employer_iframe" style="display: none;"></iframe>
</body>
</html>