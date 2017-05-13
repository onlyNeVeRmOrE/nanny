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
<link href="css/addskill.css" type="text/css" rel="stylesheet" />

<script src="js/jquery.js"></script>
<script src="js/ajaxUtils.js"></script>
<script src="js/basic.js"></script>
<script src="js/nanny.js"></script>
<script src="js/employer.js"></script>
<script src="js/showdiv.js"></script>
<script src="js/identNanny.js"></script>
<script src="other/DJMask/js/jquery-DJMask.2.1.1.js"></script>
<script src="other/DJMask/js/jquery.js"></script>
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
			href="getNanny.jsp"> <span class="mm-menu__link-text"><i
					class="md md-favorite"></i> 月嫂认证</span>
		</a></li>
		<li class="mm-menu__item"><a class="mm-menu__link"
			href="getEmployer.jsp"> <span class="mm-menu__link-text"><i
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
				<h1>月嫂认证</h1>
			</div>

			<div>
				<form action="" method="post" id="nannyform" name="nannyform"
					role="form" class="form-horizontal" target="nanny_iframe">
					<fieldset>
						<div class="row">
							<div class="form-group col-sm-4">
								<label class="col-sm-6 control-label">
									<p style='font-size: 19px; font-weight: bold;'>目标城市</p>
								</label>
								<div class="col-sm-6">
									<select class="form-control" id="targetCity" name="targetCity">
										<option value="">请选择</option>
										<option value="北京">北京</option>
										<option value="上海">上海</option>
										<option value="广州">广州</option>
										<option value="深圳">深圳</option>
										<option value="天津">天津</option>
										<option value="其他">其他</option>
									</select>
								</div>
							</div>

							<div class="form-group col-sm-4">
								<label class="col-sm-6 control-label">
									<p style='font-size: 19px; font-weight: bold;'>是否住家</p>
								</label>
								<div class="col-sm-6">
									<select class="form-control" id="isLive" name="isLive">
										<option value="">请选择</option>
										<option value="是">是</option>
										<option value="否">否</option>
									</select>
								</div>
							</div>
							
							<input type="submit" id="nannys" class="btn btn-default"
						value="提 交" onclick="qwq();">
						</div>
						
						<script>
						function qwq( ){
							var data = [{"identity":"nanny"},{"targetCity":"其他","is_home":"否","experience":"1年以内","education":"中专","salary":"1","vacation":"2","nation":"汉族","faith":"佛教","marry_status":"未婚","child_is_local":"是","parent_is_local":"否","introduction":"此开卷第一回也。作者自云：曾历过一番梦幻之后，故将真事隐去，而借通灵说此《石头记》一书也，故曰“甄士隐”云云。但书中所记何事何人?自己又云：“今风尘碌碌，一事无成，忽念及当日所有之女子：一一细考较去，觉其行止见识皆出我之上。我堂堂须眉诚不若彼裙钗，我实愧则有馀，悔又无益，大无可如何之日也。","remark":"此开卷第一回也。作者自云：曾历过一番梦幻之后，故将真事隐去，而借通灵说此《石头记》一书也，故曰“甄士隐”云云。但书中所记何事何人?自己又云：“今风尘碌碌，一事无成，忽念及当日所有之女子：一一细考较去，觉其行止见识皆出我之上。我堂堂须眉诚不若彼裙钗，我实愧则有馀，悔又无益，大无可如何之日也。"}];
							var json = eval(data);
							if (json[0].identity == "nanny") {
								document.getElementById('targetCity').value=json[1].targetCity;
								document.getElementById('isLive').value=json[1].is_home;
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
								$('input,select,textarea',
										$('form[name="nannyform"]')).prop(
										'disabled', true);
							}
						}
						</script>

						<div class="row">
							<div class="form-group col-sm-4">
								<label class="col-sm-6 control-label">
									<p style='font-size: 19px; font-weight: bold;'>工作情况</p>
								</label>
								<div class="col-sm-6">
									<select class="form-control" id="workCondition"
										name="workCondition">
										<option value="">请选择</option>
										<option value="从未干过">从未干过</option>
										<option value="1年以内">1年以内</option>
										<option value="2-3年">2-3年</option>
										<option value="3-5年">3-5年</option>
										<option value="5年以上">5年以上</option>
									</select>
								</div>
							</div>

							<div class="form-group col-sm-4">
								<label class="col-sm-6 control-label">
									<p style='font-size: 19px; font-weight: bold;'>学历</p>
								</label>
								<div class="col-sm-6">
									<select class="form-control" id="nannyEducation"
										name="nannyEducation">
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
									<p style='font-size: 19px; font-weight: bold;'>期望工资</p>
								</label>
								<div class="col-sm-6">
									<input id="nannySalary" type="text" class="form-control"
										name="nannySalary" placeholder="单位:元/月">
								</div>
							</div>


							<div class="form-group col-sm-4">
								<label class="col-sm-6 control-label">
									<p style='font-size: 19px; font-weight: bold;'>期望休息天数</p>
								</label>
								<div class="col-sm-6">
									<input id="nannyRestTime" type="text" class="form-control"
										name="nannyRestTime" placeholder="单位:天/月">
								</div>
							</div>

							<div class="form-group col-sm-4">
								<label class="col-sm-4 control-label">
									<p style='font-size: 19px; font-weight: bold;'>民族</p>
								</label>
								<div class="col-sm-6">
									<input id="nation" type="text" class="form-control"
										name="nation" placeholder="如：汉族">
								</div>
							</div>
						</div>

						<div class="row">
							<div class="form-group col-sm-4">
								<label class="col-sm-6 control-label">
									<p style='font-size: 19px; font-weight: bold;'>信仰</p>
								</label>
								<div class="col-sm-6">
									<select class="form-control" id="faith" name="faith">
										<option value="">请选择</option>
										<option value="无">无</option>
										<option value="佛教">佛教</option>
										<option value="基督教">基督教</option>
										<option value="伊斯兰教">伊斯兰教</option>
										<option value="其他">其他</option>
									</select>
								</div>
							</div>

							<div class="form-group col-sm-4">
								<label class="col-sm-6 control-label">
									<p style='font-size: 19px; font-weight: bold;'>婚姻状况</p>
								</label>
								<div class="col-sm-6">
									<select class="form-control" id="maritalStatus"
										name="maritalStatus">
										<option value="">请选择</option>
										<option value="未婚">未婚</option>
										<option value="已婚">已婚</option>
									</select>
								</div>
							</div>
						</div>

						<div class="row">
							<div class="form-group col-sm-4">
								<label class="col-sm-6 control-label">
									<p style='font-size: 19px; font-weight: bold;'>孩子是否在本地</p>
								</label>
								<div class="col-sm-6">
									<select class="form-control" id="isChildLocal"
										name="isChildLocal">
										<option value="">请选择</option>
										<option value="是">是</option>
										<option value="否">否</option>
									</select>
								</div>
							</div>

							<div class="form-group col-sm-4">
								<label class="col-sm-6 control-label">
									<p style='font-size: 19px; font-weight: bold;'>父母是否在本地</p>
								</label>
								<div class="col-sm-6">
									<select class="form-control" id="isParentLocal"
										name="isParentLocal">
										<option value="">请选择</option>
										<option value="是">是</option>
										<option value="否">否</option>
									</select>
								</div>
							</div>
						</div>

						<div class="form-group col-sm-10">
							<label class="col-sm-1 control-label">
								<p style='font-size: 19px; font-weight: bold;'>简介</p>
							</label>
							<textarea class="form-control" id="introduce" name="introduce"
								style="width: 842px; height: 150px;"
								placeholder="请填写自我介绍，200字以内"></textarea>
						</div>

						<div class="form-group col-sm-10">
							<label class="col-sm-1 control-label">
								<p style='font-size: 19px; font-weight: bold;'>备注</p>
							</label>
							<textarea class="form-control" id="remark" name="remark"
								style="width: 842px; height: 100px;" placeholder="请填写备注，200字以内"></textarea>
						</div>
				
					</fieldset>

				</form>
			</div>
			</section>
		</div>
	</div>

	<iframe id="id_iframe" name="nanny_iframe" style="display: none;"></iframe>
</body>
</html>