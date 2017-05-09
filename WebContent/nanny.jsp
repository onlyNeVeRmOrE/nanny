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
				<h1>月嫂认证</h1>
			</div>

			<div>
				<form action="" method="post" id="nannyform" name="nannyform"
					role="form" class="form-horizontal" target="nanny_iframe">
					<fieldset>
						<div class="form-group">
							<label class="col-sm-2 control-label">
								<p style='font-size: 19px; font-weight: bold;'>目标城市：</p>
							</label>

							<div class="col-sm-2">
								<div class="radio">
									<label> <input id="city1" type="radio" name="city"
										value="北京" required data-fv-notempty-message="请选择城市，不能为空">
										北京
									</label>
								</div>

								<div class="radio">
									<label> <input id="city2" type="radio" name="city"
										value="上海"> 上海
									</label>
								</div>

								<div class="radio">
									<label> <input id="city3" type="radio" name="city"
										value="广州"> 广州
									</label>
								</div>

								<div class="radio">
									<label> <input id="city4" type="radio" name="city"
										value="深圳"> 深圳
									</label>
								</div>

								<div class="radio">
									<label> <input id="city5" type="radio" name="city"
										value="天津"> 天津
									</label>
								</div>

								<div class="radio">
									<label> <input id="city6" type="radio" name="city"
										value="其他"> 其他
									</label>
								</div>
							</div>
						</div>

						<div class="form-group">
							<label class="col-sm-2 control-label">
								<p style='font-size: 19px; font-weight: bold;'>是否住家：</p>
							</label>

							<div class="col-sm-2">
								<div class="radio">
									<label> <input id="isLive1" type="radio" name="isLive"
										value="是" required data-fv-notempty-message="请选择是否住家，不能为空">
										是
									</label>
								</div>

								<div class="radio">
									<label> <input id="isLive2" type="radio" name="isLive"
										value="否" /> 否
									</label>
								</div>
							</div>
						</div>

						<div class="form-group">
							<label class="col-sm-2 control-label">
								<p style='font-size: 19px; font-weight: bold;'>技能标签：</p>
							</label>

							<div>
								<span id="yzc" class="label label-default" onclick="add();">月子餐1</span>
								<span id="skhl" class="label label-default" onclick="">伤口护理</span>
								<span id="shzl" class="label label-default"
									onclick="ShowDiv('MyDiv','fade')">生活照料</span> <span id="rfhl"
									class="label label-default" onclick="ShowDiv('MyDiv','fade')">乳房护理</span>
								<span id="jnpx" class="label label-default" onclick="">技能培训</span>
								<span id="jtgxxt" class="label label-default" onclick="">家庭关系协调</span>
								<span id="xlst" class="label label-default" onclick="">心理疏通</span>
								<br> <span id="jbzl" class="label label-default" onclick="">疾病观察</span>
								<span id="shzl2" class="label label-default" onclick="">生活照料</span>
								<span id="yejl" class="label label-default" onclick="">育儿记录</span>
								<span id="zqcj" class="label label-default" onclick="">早期促进</span>
								<span id="yec" class="label label-default" onclick="">婴儿操</span>
							</div>

							<script>
							function add() {
								document.getElementById("yzc").className="label label-success";
						    };
							</script>

							<div id="MyDiv" class="white_content">
								<div style="text-align: right; cursor: default; height: 20px;">
									<span style="font-size: 16px;"
										onclick="CloseDiv('MyDiv','fade')">关闭</span>
								</div>
								<h1>
									<b>添加技能标签</b>
								</h1>
								<div class="addskill">
									<div id="MyDiv" class="white_content">
										<div style="text-align: right; cursor: default; height: 20px;">
											<span style="font-size: 16px;"
												onclick="CloseDiv('MyDiv','fade')">关闭</span>
										</div>
									</div>

									<div id="skillDescribe" class="form-group col-sm-12">
										<label for="skillDescribe" class="control-label">
											<p style='font-size: 16px; font-weight: bold;'>技能描述:</p>
										</label>
										<textarea class="form-control" id="skillDescribe"
											style="width: 400px; height: 100px;"></textarea>
										<br>
									</div>

									<div id="skillCertificate" class="form-group col-sm-12"
										style='font-size: 16px; font-weight: bold;'>
										<label for="skillCertificate">技能凭证</label> <input type="file"
											id="inputfile"> <br>
									</div>

									<button type="button"
										class="btn btn-default btn-lg col-sm-offset-1 ">提交</button>
								</div>
							</div>



							<div class="col-sm-offset-2">
								<br> <input type="button" id="viewSkill1"
									class="btn btn btn-info" value="产妇方面技能说明"
									onclick='DJMask.open({
									　　width:"1000px",
									　　height:"505px",
									　　title:"技能说明",
									　　content:"<p>月嫂基本技能：<br>1.月子餐<br>月子餐的营养搭配非常重要，既要促进伤口愈合，为母乳提供足够的营养。<br>而且产妇饮食有诸多禁忌，如不能吃回奶食物，不能摄入过多糖分，要少食多餐等。<br>2.伤口护理<br>产妇的会阴部护理、剖腹产护理、恶露排净观察等，也是月嫂必备技能之一。如果产后没有恢复好，对产妇以后的健康非常不利。<br>3.生活照料<br>因为民间有很多“捂月子”、“吃鸡蛋”、“不碰水”等不好的月子传统，让产妇的月子做得非常不卫生、不健康。严重的甚至会危及生命。“捂月子”活活热死的新闻，时见报端。<br>所以月嫂一定要摒弃这些观念，让产妇的月子坐得科学、舒心。照顾好产妇的个人卫生、房间温湿度调控、空气流通等。<br>4.乳房护理<br>专业月嫂不一定都有催乳师证，但一定会有乳房护理技能。<br>预防乳头皲裂、预防乳汁淤积、乳房按摩等，防治乳腺炎的发生。<br>5.技能培训<br>月嫂并不是只做好分内团工作就可以的，如果一旦下户，家庭就手忙脚乱，这也不能算好月嫂。<br>月嫂要把照料宝宝的方法、注意事项，手把手教给家人，让他们能顺利过渡，自己也能照顾好宝宝。<br><br>月嫂升级技能:<br>1.家庭关系协调<br>部分月嫂处事能力很强，能够巧妙化解家庭成员之间的矛盾。说服老人摒弃错误的坐月子理念，如捂月子、给宝宝垫枕头等。<br>有月嫂在，还能作为产妇和家中老人的缓冲。家中老人照顾产妇时，难免会有疏漏。月嫂协调得好，可以避免产妇受委屈，也避免让老人觉得自己吃力不讨好。<br>2.心理疏通<br>由于产妇生理和心里原因，有可能诱发产后抑郁的情况。一般月嫂会多跟产妇沟通，避免产妇陷入自我纠结中。<br>而经过培训的月嫂，能做到抑郁症观察。小部分月嫂甚至考了心理咨询师证件，让产妇心理状况恢复。</p>"
								　　});'>
								<input type="button" id="viewSkill2" class="btn btn btn-info"
									value="婴儿方面技能说明"
									onclick='DJMask.open({
									　　width:"1000px",
									　　height:"370px",
									　　title:"技能说明",
									　　content:"<p>月嫂基本技能:<br>1.疾病观察<br>月嫂需判定宝宝是否患有尿布疹、鹅口疮、新生儿黄疸等，并对某些新生儿疾病有预防措施。<br>月嫂经验足够，会从宝宝的便便、体重增长等方面，判断宝宝的身体状况。<br>2.生活照料<br>照料宝宝的日常起居，包括喂奶、喂水、换尿布、洗澡、抚触；日光浴、空气浴、洗浴；婴儿房温湿度调节、通风、清理；宝宝奶瓶、衣物等清洗。<br>这些是月嫂最基本、必须掌握的技能，也是占用月嫂时间最多的工作内容。<br>3.育儿记录<br>宝宝每日喂奶记录、宝宝大小便情况记录、宝宝体重测量记录等。<br>月嫂帮宝妈做育儿日记，不仅仅能让宝妈见证宝宝一天天长大，还能从中看出宝宝的身体状况。<br><br>月嫂升级技能:<br>1.早期促进<br>部分月嫂不仅仅是跟宝宝互动交流，而是对宝宝进行感知、语言动作训练，情感与社会行为培养，开发大脑并给予宝宝美妙的情感抚慰。<br>2.婴儿操<br>有些月嫂可以指导产妇为宝宝做婴儿操，锻炼宝宝的四肢协调能力，能让宝宝训练完成抬头、抓握等动作，让宝宝发育更健康。</p>"
								　　});'>
							</div>
						</div>


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
			</div>
			</fieldset>

			<div class="form-group col-sm-10 col-sm-offset-2">
				<div class="col-sm-10 col-sm-offset-2">
					<input type="submit" id="nannysubmit" class="btn btn-default"
						value="提 交" onclick="nanny();">
				</div>
			</div>
			</form>
		</div>
		</section>
	</div>
	</div>

	<script type="text/javascript">
		$(document).ready(function() {
			$('#nannyform').formValidation({
				icon : {
					valid : 'glyphicon glyphicon-ok',
					invalid : 'glyphicon glyphicon-remove',
					validating : 'glyphicon glyphicon-refresh'
				},
				fields : {
					workCondition : {
						validators : {
							notEmpty : {
								message : '请选择工作情况，不能为空'
							}
						}
					},
					nannyEducation : {
						validators : {
							notEmpty : {
								message : '请选择学历，不能为空'
							}
						}
					},
					nannySalary : {
						validators : {
							notEmpty : {
								message : '请填写期望工资，不能为空'
							},
							regexp : {
								regexp : /^([0-9])+(\.[0-9]+)?$/,
								message : '期望工资必须为非负数'
							}
						}
					},
					nannyRestTime : {
						validators : {
							notEmpty : {
								message : '请填写期望休息天数，不能为空'
							},
							regexp : {
								regexp : /^(?:\d|[12]\d|31)$/,
								message : '期望休息天数必须为0-31的整数'
							}
						}
					},
					nation : {
						validators : {
							notEmpty : {
								message : '请填写民族，不能为空'
							},
							stringLength : {
								min : 1,
								max : 8,
								message : '超过输入长度'
							},
							regexp : {
								regexp : /^[\u4E00-\u9FA5]+$/,
								message : '民族填写错误'
							}
						}
					},
					faith : {
						validators : {
							notEmpty : {
								message : '请选择信仰，不能为空'
							}
						}
					},
					maritalStatus : {
						validators : {
							notEmpty : {
								message : '请选择婚姻状况，不能为空'
							}
						}
					},
					isChildLocal : {
						validators : {
							notEmpty : {
								message : '请选择孩子是否在本地，不能为空'
							}
						}
					},
					isParentLocal : {
						validators : {
							notEmpty : {
								message : '请选择父母是否在本地，不能为空'
							}
						}
					},
					introduce : {
						validators : {
							notEmpty : {
								message : '请填写自我介绍，不能为空'
							},
							stringLength : {
								min : 1,
								max : 200,
								message : '超过输入长度'
							}
						}
					},
					remark : {
						validators : {
							notEmpty : {
								message : '请填写备注，不能为空'
							},
							stringLength : {
								min : 1,
								max : 200,
								message : '超过输入长度'
							}
						}
					},
					'city' : {
						validators : {
							notEmpty : {
								message : '请选择至少一个城市，不能空'
							}
						}
					}

				}
			});
		});
	</script>

	<iframe id="id_iframe" name="nanny_iframe" style="display: none;"></iframe>
</body>
</html>