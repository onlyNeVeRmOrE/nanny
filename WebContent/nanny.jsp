<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

<head>
    <meta charset="utf-8">
    <title>用户中心</title>
    <link rel="stylesheet" href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
    <script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/core-js/2.4.1/core.js"></script>
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
    <script src="other/jquery/jquery-3.1.1/jquery-3.1.1.min.js"></script>
    <link rel="stylesheet" href="http://www.jq22.com/jquery/font-awesome.4.6.0.css" />
    <link rel="stylesheet" href="other/validation/vendor/bootstrap/css/bootstrap.css">
    <link rel="stylesheet" href="other/validation/dist/css/formValidation.css">    
    <script type="text/javascript" src="other/validation/vendor/bootstrap/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="other/validation/dist/js/formValidation.js"></script>
    <script type="text/javascript" src="other/validation/dist/js/framework/bootstrap.js"></script>
    <script type="text/javascript" src="other/validation/dist/js/language/zh_CN.js"></script>
    <link rel="stylesheet" type="text/css" href="other/jquery-nav20150805/css/default.css">
	<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:300,700">
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
	    <li class="mm-menu__item">
	      <a class="mm-menu__link" href="basic.jsp">
	        <span class="mm-menu__link-text"><i class="md md-home"></i> 基本信息</span>
	      </a>
	    </li>
	    <li class="mm-menu__item">
	      <a class="mm-menu__link" href="#">
	        <span class="mm-menu__link-text"><i class="md md-person"></i> 选填信息</span>
	      </a>
	    </li>
	    <li class="mm-menu__item">
	      <a class="mm-menu__link" href="#">
	        <span class="mm-menu__link-text"><i class="md md-inbox"></i> 修改密码</span>
	      </a>
	    </li>
	    <li class="mm-menu__item">
	      <a class="mm-menu__link" href="nanny.jsp">
	        <span class="mm-menu__link-text"><i class="md md-favorite"></i> 月嫂认证</span>
	      </a>
	    </li>
	    <li class="mm-menu__item">
	      <a class="mm-menu__link" href="employer.jsp">
	        <span class="mm-menu__link-text"><i class="md md-settings"></i> 雇主认证</span>
	      </a>
	    </li>
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
                    <form action="" method="post" id="nannyform" name="nannyform" role="form" class="form-horizontal" target="nanny_iframe">
                        <fieldset>
                            <div id="targetCity" class="form-group">
                                <label class="col-sm-2 control-label">
                                    <p style='font-size:19px;font-weight:bold;'>目标工作城市：</p>
                                </label>
                                <div class="col-sm-2">
                                    <div class="checkbox">
                                        <label>
                                            <input type="checkbox" name="city[]" value="beijing"> 北京
                                        </label>
                                    </div>

                                    <div class="checkbox">
                                        <label>
                                        <input type="checkbox" name="city[]" value="shanghai"> 上海  
                                        </label>
                                    </div>

                                    <div class="checkbox">
                                        <label>
                                        <input type="checkbox" name="city[]" value="guangzhou"> 广州
                                        </label>
                                    </div>

                                    <div class="checkbox">
                                        <label>
                                        <input type="checkbox" name="city[]" value="shenzhen"> 深圳
                                        </label>
                                    </div>

                                    <div class="checkbox">
                                        <label>
                                        <input type="checkbox" name="city[]" value="qita"> 其他
                                        </label>
                                    </div>
                                </div>
                            </div>

                            <div id="isLive" class="form-group">
                                <label class="col-sm-2 control-label">
                                    <p style='font-size:19px;font-weight:bold;'>是否住家：</p>
                                </label>

                                <div class="col-sm-2">
                                    <div class="radio">
                                        <label>  
                                            <input type="radio" name="islive" value="yes" required data-fv-notempty-message="请选择是否住家，不能为空" /> 是		                              
                                        </label>
                                    </div>

                                    <div class="radio">
                                        <label>           
                                            <input type="radio" name="islive" value="no" /> 否         	                               
                                        </label>
                                    </div>
                                </div>
                            </div>


                            <div class="row">
                                <div id="workCondition" class="form-group col-sm-4">
                                    <label class="col-sm-6 control-label">
                                        <p style='font-size:19px;font-weight:bold;'>工作情况</p>
                                    </label>
                                    <div class="col-sm-6">
                                        <select class="form-control" name="workCondition">
	                                        <option value="">请选择</option>
	                                        <option value="none">从未干过</option>
	                                        <option value="oneYear">1年以内</option>
	                                        <option value="twothreeYear">2-3年</option>
	                                        <option value="threefiveYear">3-5年</option>
	                                        <option value="fiveYear">5年以上</option>
	                                    </select>
                                    </div>
                                </div>

                                <div id="nannyEducation" class="form-group col-sm-4">
                                    <label class="col-sm-6 control-label">          
                                        <p style='font-size:19px;font-weight:bold;'>学历</p>     
                                    </label>
                                    <div class="col-sm-6">
                                        <select class="form-control" name="nannyEducation">
	                                        <option value="">请选择</option>
	                                        <option value="juniorMiddle">初中</option>
	                                        <option value="technicalSecondary">中专</option>
	                                        <option value="specialty">专科</option>
	                                        <option value="undergraduate">本科</option>
	                                        <option value="undergraduateAbove">本科以上</option>  
	                                    </select>
                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <div id="nannySalary" class="form-group col-sm-4">
                                    <label class="col-sm-6 control-label">
                                         <p style='font-size:19px;font-weight:bold;'>期望工资</p>
                                    </label>
                                    <div class="col-sm-6">
                                        <input type="text" class="form-control" name="nannySalary" placeholder="单位:元/月" />
                                    </div>
                                </div>

                                <div id="nannyRestTime" class="form-group col-sm-4">
                                    <label class="col-sm-6 control-label">
                                        <p style='font-size:19px;font-weight:bold;'>期望休息天数</p>
                                    </label>
                                    <div class="col-sm-6">
                                        <input type="text" class="form-control" name="nannyRestTime" placeholder="单位:天/月" />
                                    </div>
                                </div>

                                <div id="nation" class="form-group col-sm-4">
                                    <label class="col-sm-4 control-label">
                                        <p style='font-size:19px;font-weight:bold;'>民族</p>
                                    </label>
                                    <div class="col-sm-6">
                                        <input type="text" class="form-control" name="nation" placeholder="如：汉族" />
                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <div id="faith" class="form-group col-sm-4">
                                    <label class="col-sm-6 control-label">
                                        <p style='font-size:19px;font-weight:bold;'>信仰</p>
                                    </label>
                                    <div class="col-sm-6">
                                        <select class="form-control" name="faith">
	                                        <option value="">请选择</option>
	                                            <option value="none">无</option>
	                                            <option value="buddhism">佛教</option>
	                                            <option value="christianity">基督教</option>
	                                            <option value="islamism">伊斯兰教</option>
	                                            <option value="otherFaith">其他</option>
	                                    </select>
                                    </div>
                                </div>

                                <div id="maritalStatus" class="form-group col-sm-4">
                                    <label class="col-sm-6 control-label">         
                                        <p style='font-size:19px;font-weight:bold;'>婚姻状况</p>                                             
                                    </label>
                                    <div class="col-sm-6">
                                        <select class="form-control" name="maritalStatus">
	                                        <option value="">请选择</option>          
	                                        <option value="unmarried">未婚</option>               
	                                        <option value="married">已婚</option> 
	                                    </select>
                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <div id="isChildLocal" class="form-group col-sm-4">
                                    <label class="col-sm-6 control-label">
                                        <p style='font-size:19px;font-weight:bold;'>孩子是否在本地</p>
                                    </label>
                                    <div class="col-sm-6">
                                        <select class="form-control" name="isChildLocal">
	                                        <option value="">请选择</option> 
	                                        <option value="childLocalYes">是</option>
	                                        <option value="childLocalNo">否</option> 
	                                    </select>
                                    </div>
                                </div>

                                <div id="isParentLocal" class="form-group col-sm-4">
                                    <label class="col-sm-6 control-label">          
                                        <p style='font-size:19px;font-weight:bold;'>父母是否在本地</p>                                       
                                    </label>
                                    <div class="col-sm-6">
                                        <select class="form-control" name="isParentLocal">
	                                        <option value="">请选择</option> 
	                                        <option value="childLocalYes">是</option>
	                                        <option value="childLocalNo">否</option> 
	                                    </select>

                                    </div>
                                </div>
                            </div>

                            <div id="introduce" class="form-group col-sm-10">
                                <label class="col-sm-1 control-label">                       
                                     <p style='font-size:19px;font-weight:bold;'>简介</p>
                                </label>
                                <textarea class="form-control" name="introduce" style="width:842px;height:150px;" placeholder="请填写自我介绍，200字以内"></textarea>
                            </div>

                            <div id="remark" class="form-group col-sm-10">
                                <label class="col-sm-1 control-label">                    
                                    <p style='font-size:19px;font-weight:bold;'>备注</p>
                                </label>
                                <textarea class="form-control" name="remark" style="width:842px;height:100px;" placeholder="请填写备注，200字以内"></textarea>
                            </div>
                        </fieldset>

                        <div class="form-group col-sm-10 col-sm-offset-2">
                            <div class="col-sm-10 col-sm-offset-2">      
                                <input type="submit" id="nannysubmit" class="btn btn-default" value="提 交" onclick="nanny();">
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
                icon: {
                    valid: 'glyphicon glyphicon-ok',
                    invalid: 'glyphicon glyphicon-remove',
                    validating: 'glyphicon glyphicon-refresh'
                },
                fields: {
                    workCondition: {
                        validators: {
                            notEmpty: {
                                message: '请选择工作情况，不能为空'
                            }
                        }
                    },
                    nannyEducation: {
                        validators: {
                            notEmpty: {
                                message: '请选择学历，不能为空'
                            }
                        }
                    },
                    nannySalary: {
                        validators: {
                            notEmpty: {
                                message: '请填写期望工资，不能为空'
                            },
                            regexp: {
                                regexp: /^([0-9])+(\.[0-9]+)?$/,
                                message: '期望工资必须为非负数'
                            }
                        }
                    },
                    nannyRestTime: {
                        validators: {
                            notEmpty: {
                                message: '请填写期望休息天数，不能为空'
                            },
                            regexp: {
                                regexp: /^(?:\d|[12]\d|31)$/,
                                message: '期望休息天数必须为0-31的整数'
                            }
                        }
                    },
                    nation: {
                        validators: {
                            notEmpty: {
                                message: '请填写民族，不能为空'
                            },
                            stringLength: {
                                min: 1,
                                max: 8,
                                message: '超过输入长度'
                            },
                            regexp: {
                                regexp: /^[\u4E00-\u9FA5]+$/,
                                message: '民族填写错误'
                            }
                        }
                    },
                    faith: {
                        validators: {
                            notEmpty: {
                                message: '请选择信仰，不能为空'
                            }
                        }
                    },
                    maritalStatus: {
                        validators: {
                            notEmpty: {
                                message: '请选择婚姻状况，不能为空'
                            }
                        }
                    },
                    isChildLocal: {
                        validators: {
                            notEmpty: {
                                message: '请选择孩子是否在本地，不能为空'
                            }
                        }
                    },
                    isParentLocal: {
                        validators: {
                            notEmpty: {
                                message: '请选择父母是否在本地，不能为空'
                            }
                        }
                    },
                    introduce: {
                        validators: {
                            notEmpty: {
                                message: '请填写自我介绍，不能为空'
                            },
                            stringLength: {
                                min: 1,
                                max: 200,
                                message: '超过输入长度'
                            }
                        }
                    },
                    remark: {
                        validators: {
                            notEmpty: {
                                message: '请填写备注，不能为空'
                            },
                            stringLength: {
                                min: 1,
                                max: 200,
                                message: '超过输入长度'
                            }
                        }
                    },
                    'city[]': {
                        validators: {
                            notEmpty: {
                                message: '请选择至少一个城市，不能空'
                            }
                        }
                    }

                }
            });
        });
    </script>

<iframe id="id_iframe" name="nanny_iframe" style="display:none;"></iframe>
</body>
</html>