<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
    <meta charset="utf-8">
    <title>用户中心</title>
    <link rel="stylesheet" href="dist/css/bootstrap.min.css">
    <script src="dist/jquery/jquery-3.1.1/jquery-3.1.1.min.js"></script>
    <script type="text/javascript" src="dist/js/bootstrap.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/core-js/2.4.1/core.js"></script>
    <link rel="stylesheet" href="./dist/sweetalert2.min.css">
	<script src="./dist/sweetalert2.js"></script>
    <link href="css/tab.css" type="text/css" rel="stylesheet" />
    <link href="css/uploadphoto.css" type="text/css" rel="stylesheet" />
    <link href="css/uploadphoto2.css" type="text/css" rel="stylesheet" />
    <link href="css/addskill.css" type="text/css" rel="stylesheet" />
    <link href="css/add2.css" type="text/css" rel="stylesheet" />
    <script src="js/jquery.js"></script>
    <script src="js/imgUp.js"></script>
    <script src="js/check.js"></script>
    <script src="js/ajaxUtils.js"></script>
    <script src="js/basic.js"></script>
    <script src="js/showdiv.js"></script>

    <script src="dist/jquery/jquery-3.1.1/jquery-3.1.1.min.js"></script>
    <script src="dist/js/jquery.tags.min.js"></script>
</head>

<body>
    <ul id="myTab" class="nav nav-stacked col-sm-1">
        <li class="active">
            <a href="#basic" data-toggle="tab">基本信息</a>
        </li>

        <li>
            <a href="#optional" data-toggle="tab">选填信息</a>
        </li>

        <li>
            <a href="#modify" data-toggle="tab">修改密码</a>
        </li>

        <li>
            <a href="#mynew" data-toggle="tab">身份信息</a>
        </li>

        <li>
            <a href="#mynew2" data-toggle="tab">身份信2</a>
        </li>
    </ul>

    <div id="myTabContent" class="tab-content col-sm-11">
        <div class="tab-pane fade in active" id="basic">
            <form name="form1" role="form" class="col-sm-7">
                <hr><br><br><br>
                <div class="form-group">
                    <label for="username" class="col-sm-2">
                        <p style='font-size:19px;font-weight:bold;'>真实姓名</p>
                    </label>
                    <div>
                        <input type="text" required="required" name="username" id="username" value="" class="form-control" style="width:65%" placeholder="请输入真实姓名,2-4位的中文姓名或者2-16位的英文姓名" onclick="checkvalue(1,this);" onkeyup="checkvalue(1,this);" onchange="checkname()" title="请输入真实姓名,不能为空" maxlength="16">
                        <label id="tip1" class="col-sm-offset-2" style="color:#1E90FF"></label>
                    </div>
                </div>

                <div class="form-group">
                    <label class="idinfo col-sm-2">
                        <p style='font-size:19px;font-weight:bold;'>身份证号</p>
                    </label>
                    <div>
                        <input type="text" required="required" name="IDnumber" id="IDnumber" value="" class="form-control" style="width:65%" placeholder="请输入18位身份证号" onclick="checkvalue(2,this);" onkeyup="checkvalue(2,this);" onchange="checkid()" title="请输入身份证号，不能为空" maxlength="18">
                        <label id="tip2" class="col-sm-offset-2" style="color:#1E90FF"></label>
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-sm-2">
                        <p style='font-size:19px;font-weight:bold;'>称呼</p>
                    </label>
                    <select id="sex" name="sex" required="required" class="form-control" style="width:65%" onclick="checkvalue(3,this);" onkeyup="checkvalue(3,this);" title="请选择称呼,不能为空。">
                        <option value="">请选择</option>
                        <option value="male">先生</option>
                        <option value="female">女士</option>    
                    </select>
                    <label id="tip3" class="col-sm-offset-2" style="color:#1E90FF"></label>
                </div>

                <div class="form-group">
                    <label class="col-sm-2">
                        <p style='font-size:19px;font-weight:bold;'>所在城市</p>
                    </label>
                    <div>
                        <input type="text" required="required" name="city" id="city" value="" class="form-control" style="width:65%" placeholder="请输入所在城市" onclick="checkvalue(4,this);" onkeyup="checkvalue(4,this);" onchange="checkcity()" title="请输入所在城市，不能为空" maxlength="30">
                        <label id="tip4" class="col-sm-offset-2" style="color:#1E90FF"></label>
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-sm-2">
                        <p style='font-size:19px;font-weight:bold;'>居住地</p>
                    </label>
                    <div>
                        <input type="text" required="required" name="residence" id="residence" value="" class="form-control" style="width:65%" placeholder="请输入居住地，如xx省xx市xx县xx乡xx村" onclick="checkvalue(5,this);" onkeyup="checkvalue(5,this);" onchange="checkresidence()" title="请输入居住地，不能为空" maxlength="30">
                        <label id="tip5" class="col-sm-offset-2" style="color:#1E90FF"></label>
                    </div>
                </div>

                <div class="col-sm-10 col-sm-offset-2">
                    <input type="reset" class="btn btn-default" value="重 置">
                    <input type="submit" class="btn btn-default" value="提 交" onlick="check_submit()">

                </div>
            </form>

            <div class="row">
                <div class="col-sm-4">
                    <hr><br><br><br>
                    <div class="img-box full">
                        <section id="photo" class="img-section">
                            <p class="up-p" style='font-size:18px;font-weight:bold;'>上传头像：
                                <span class="up-span" style='font-size:18px;font-weight:bold;'>只需上传1张即可</span>
                            </p>
                            <div class="z_photo upimg-div clear">
                                <section class="z_file fl">
                                    <img src="img/uploadPhoto.png" class="add-img">
                                    <input type="file" name="file" id="file" class="file" value="" accept="image/jpg,image/jpeg,image/png,image/bmp" multiple>
                                </section>
                            </div>
                        </section>
                    </div>

                    <aside class="mask works-mask">
                        <div class="mask-content">
                            <p class="del-p">您确定要删除该图片吗？</p>
                            <p class="check-p">
                                <span class="del-com wsdel-ok">确定</span>
                                <span class="wsdel-no">取消</span>
                            </p>
                        </div>
                    </aside>
                </div>
            </div>
        </div>
        <div class="tab-pane fade" id="optional">
            <p>选填内容</p>
        </div>
        <div class="tab-pane fade" id="modify">
            <p>修改密码</p>
        </div>
        <div class="tab-pane fade" id="identity">
            <button type="button" id="employerbtn" class="btn btn-default">我是雇主</button>
            <button type="button" id="nannybtn" class="btn btn-default">我是月嫂</button>
        </div>

        <div class="tab-pane fade" id="mynew">
            <form name="form2" role="form" class="col-sm-12 ">
                <hr><br><br><br>
                <div id="hopeCity" class="form-group">
                    <label>
                        <p value="" style='font-size:19px;font-weight:bold;'>目标工作城市：</p>
                    </label>

                    <label class="checkbox-inline">
                        <input type="checkbox" value="beijing" name="checkbox[]" id="beijing">北京 
                    </label>

                    <label class="checkbox-inline">
                        <input type="checkbox" value="shanghai" name="checkbox[]" id="shanghai">上海 
                    </label>

                    <label class="checkbox-inline">
                        <input type="checkbox" value="guangzhou" name="checkbox[]" id="guangzhou">广州 
                    </label>

                    <label class="checkbox-inline">
                        <input type="checkbox" value="shenzhen" name="checkbox[]" id="shenzhen">深圳 
                    </label>

                    <label class="checkbox-inline">
                        <input type="checkbox" value="chongqing" name="checkbox[]" id="chongqing">重庆 
                    </label>

                    <label class="checkbox-inline">
                        <input type="checkbox" value="tianjin" name="checkbox[]" id="tianjin">天津 
                    </label>

                    <label class="checkbox-inline">
                        <input type="checkbox" value="otherCity" name="checkbox[]" id="otherCity">其他 
                    </label>
                </div>

                <div id="isLive" class="form-group">
                    <label>
                        <p style='font-size:19px;font-weight:bold;'>是否住家：</p>
                    </label>

                    <label class="radio-inline">
                        <input type="radio" name="optionsRadios" id="radioLiveYes" value="liveYes" checked>是
                    </label>

                    <label class="radio-inline">
                        <input type="radio" name="optionsRadios" id="radioLiveNo" value="liveNo">否
                    </label>
                </div>

                <div id="skill" class="form-group">
                    <label>
                        <p style='font-size:19px;font-weight:bold;'>技能标签：</p>
                    </label>
                    <span class="label label-default">心理辅导</span>
                    <span class="label label-default">专业看护</span>
                    <span class="label label-default">做饭好吃</span>
                </div>

                <div id="addSkill" class="col-sm-offset-1">
                    <br>
                    <input type="button" name="addSkillbtn" class="btn btn-info btn-lg" value="添加技能标签" onclick="ShowDiv('MyDiv','fade')" />
                </div>


                <div id="MyDiv" class="white_content">
                    <div style="text-align:right; cursor:default; height:20px;">
                        <span style="font-size:16px;" onclick="CloseDiv('MyDiv','fade')">关闭</span>
                    </div>
                    <h1><b>添加技能标签</b></h1>
                    <hr><br>
                    <div class="form3">
                        <div id="addskilltab" class="form-group col-sm-12">
                            <p style='font-size:16px;font-weight:bold;'>添加技能标签:</p>
                            <button type="button" id="yzc" class="btn btn-default btn-xs">月子餐</button>
                            <button type="button" id="skhl" class="btn btn-default btn-xs">伤口护理</button>
                            <button type="button" id="shzl" class="btn btn-default btn-xs">生活照料</button>
                            <button type="button" id="rfhl" class="btn btn-default btn-xs">乳房护理</button>
                            <button type="button" id="jnpx" class="btn btn-default btn-xs">技能培训</button>
                            <button type="button" id="xlst" class="btn btn-default btn-xs">心理疏通</button>
                            <button type="button" id="jtgxxt" class="btn btn-default btn-xs">家庭关系协调</button>
                            <button type="button" id="jbgc" class="btn btn-default btn-xs">疾病观察</button>
                            <button type="button" id="yejl" class="btn btn-default btn-xs">育儿记录</button>
                            <button type="button" id="zqcj" class="btn btn-default btn-xs">早期促进</button>
                            <button type="button" id="yec" class="btn btn-default btn-xs">婴儿操</button>
                            <div id="addSkill2" class="col-sm-offset-1">
                                <button type="button" id="viewskill" class="btn btn-default btn-xs" onclick="ShowDiv('MyDiv2','fade')">查看技能说明</button>
                            </div>
                        </div>

                        <div id="MyDiv2" class="white_content">
                            <div style="text-align:right; cursor:default; height:20px;">
                                <span style="font-size:16px;" onclick="CloseDiv('MyDiv2','fade')">关闭</span>
                            </div>
                        </div>

                        <div id="skillDescribe" class="form-group col-sm-12">
                            <label for="skillDescribe" class="control-label">
                                <p style='font-size:16px;font-weight:bold;'>技能描述:</p>
                            </label>
                            <textarea class="form-control" id="skillDescribe" style="width:400px;height:100px;"></textarea>
                            <br>
                        </div>

                        <div id="skillCertificate" class="form-group col-sm-12" style='font-size:16px; font-weight:bold;'>
                            <label for="skillCertificate">技能凭证</label>
                            <input type="file" id="inputfile">
                            <br>
                        </div>

                        <button type="button" class="btn btn-default btn-lg col-sm-offset-1 ">提交</button>

                    </div>
                </div>

                <div class="row">
                    <div id="workCondition" class="form-group col-sm-2">
                        <br>
                        <label>
                            <p style='font-size:19px;font-weight:bold;'>工作情况：</p>
                        </label>
                        <select name="workCondition" required="required" class="form-control" style="width:100%" onclick="checkvalue(6,this);" onkeyup="checkvalue(6,this);" title="请选择工作情况,不能为空。">
                            <option value="">请选择</option> 
                            <option value="neverDone">从未干过</option>
                            <option value="oneYear">1年以内</option> 
                            <option value="twothreeYear">2-3年</option>    
                            <option value="threefiveYear">3-5年</option>  
                            <option value="fiveYear">5年以上</option>   
                        </select>
                        <label id="tip6" style="color:#1E90FF"></label>
                    </div>

                    <div id="education" class="form-group col-sm-2">
                        <br>
                        <label>
                            <p style='font-size:19px;font-weight:bold;'>学历：</p>
                        </label>
                        <select name="education" required="required" class="form-control" style="width:100%" onclick="checkvalue(7,this);" onkeyup="checkvalue(7,this);" title="请选择学历,不能为空。">
                            <option value="">请选择</option>
                            <option value="juniorMiddle">初中</option>
                            <option value="technicalSecondary">中专</option>
                            <option value="specialty">专科</option>
                            <option value="undergraduate">本科</option>
                            <option value="undergraduateAbove">本科以上</option>    
                        </select>
                        <label id="tip7" style="color:#1E90FF"></label>
                    </div>
                </div>

                <div class="row">
                    <div class="form-group col-sm-2">
                        <label class="control-label">
                            <p style='font-size:19px;font-weight:bold;'>期望工资:</p>
                        </label>
                        <input type="text" required="required" name="hopeMoney" id="hopeMoney" value="" class="form-control" style="width:100%" placeholder="单位：元" onclick="checkvalue(8,this);" onkeyup="checkvalue(8,this);" onchange="checkhopeMoney()" title="请输入期望工资，正整数，单位（元）" maxlength="6">
                        <label id="tip8" style="color:#1E90FF"></label>
                    </div>

                    <div class="form-group col-sm-2">
                        <label class="control-label">
                            <p style='font-size:19px;font-weight:bold;'>期望每月休息天数:</p>
                        </label>
                        <input type="text" required="required" name="hopeTime" id="hopeTime" value="" class="form-control" style="width:100%" placeholder="单位：天" onclick="checkvalue(9,this);" onkeyup="checkvalue(9,this);" onchange="checkhopeTime()" title="请输入期望每月休息天数，正整数，不能超过7天，单位（天）" maxlength="2">
                        <label id="tip9" style="color:#1E90FF"></label>
                    </div>

                    <div class="form-group col-sm-2">
                        <label class="control-label">
                            <p style='font-size:19px;font-weight:bold;'>民族:</p>
                        </label>
                        <input type="text" required="required" name="nation" id="nation" value="" class="form-control" style="width:100%" placeholder="汉族或其他少数民族" onclick="checkvalue(10,this);" onkeyup="checkvalue(10,this);" title="请输入民族，不能为空" maxlength="6">
                        <label id="tip10" style="color:#1E90FF"></label>
                    </div>
                </div>

                <div class="row">
                    <div class="form-group col-sm-2">
                        <label for="faith" class="control-label">
                            <p style='font-size:19px;font-weight:bold;'>信仰:</p>
                        </label>
                        <select name="faith" id="faith" required="required" class="form-control" style="width:100%" onclick="checkvalue(11,this);" onkeyup="checkvalue(11,this);" title="请选择信仰,不能为空。">
                            <option value="">请选择</option>
                            <option value="none">无</option>
                            <option value="buddhism">佛教</option>
                            <option value="christianity">基督教</option>
                            <option value="islamism">伊斯兰教</option>
                            <option value="otherFaith">其他</option>
                        </select>
                        <label id="tip11" style="color:#1E90FF"></label>
                    </div>

                    <div class="form-group col-sm-2">
                        <label for="maritalStatus" class="control-label">              
                            <p style='font-size:19px;font-weight:bold;'>婚姻状况:</p></label>
                        <select name="maritalStatus" id="maritalStatus" required="required" class="form-control" style="width:100%" onclick="checkvalue(12,this);" onkeyup="checkvalue(12,this);" title="请选择婚姻状况,不能为空。">             
                            <option value="">请选择</option>          
                            <option value="unmarried">未婚</option>               
                            <option value="married">已婚</option>                       
                        </select>
                        <label id="tip12" style="color:#1E90FF"></label>
                    </div>

                    <div class="form-group col-sm-2">
                        <label for="isChildLocal" class="control-label">
                            <p style='font-size:19px;font-weight:bold;'>孩子是否在本地:</p>
                        </label>
                        <select name="isChildLocal" id="isChildLocal" required="required" class="form-control" style="width:100%" onclick="checkvalue(13,this);" onkeyup="checkvalue(13,this);" title="请选择孩子是否在本地,不能为空。">
                            <option value="">请选择</option> 
                            <option value="childLocalYes">是</option>
                            <option value="childLocalNo">否</option> 
                        </select>
                        <label id="tip13" style="color:#1E90FF"></label>
                    </div>

                    <div class="form-group col-sm-2">
                        <label for="isParentLocal" class="control-label">             
                            <p style='font-size:19px;font-weight:bold;'>父母是否在本地:</p>
                        </label>
                        <select name="isParentLocal" id="isParentLocal" required="required" class="form-control" style="width:100%" onclick="checkvalue(14,this);" onkeyup="checkvalue(14,this);" title="请选择父母是否在本地,不能为空。">             
                            <option value="">请选择</option>           
                            <option value="parentLocalYes">是</option>       
                            <option value="parentLocalNo">否</option> 
                        </select>
                        <label id="tip14" style="color:#1E90FF"></label>
                    </div>
                </div>

                <div class="form-group">
                    <label for="introduce" class="control-label">                       
                        <p style='font-size:19px;font-weight:bold;'>自我介绍:</p>
                    </label>
                    <br>
                    <textarea class="form-control" required="required" name="introduce" id="introduce" style="width:750px;height:150px;" placeholder="请输入自我介绍,200字以内" onclick="checkvalue(15,this);" onkeyup="checkvalue(15,this);" title="请填写自我介绍,不能为空。" maxlength="200"></textarea>
                    <label id="tip15" style="color:#1E90FF"></label>
                </div>

                <div class="form-group">
                    <label for="remark" class="control-label">                    
                        <p style='font-size:19px;font-weight:bold;'>备注:</p>
                    </label>
                    <br>
                    <textarea class="form-control" name="remark" id="remark" style="width:750px;height:100px;" placeholder="请输入备注，200字以内" maxlength="200"></textarea>
                </div>
                <div>
                    <input type="reset" class="btn btn-default" value="重 置">
                    <input type="submit" class="btn btn-default" value="提 交" onclick="checkbox()">
                </div>
            </form>
        </div>

        <div class="tab-pane fade" id="mynew2">
            <form name="form3" role="form" class="col-sm-11">
                <hr><br><br><br>
                <div class="form-group">
                    <label for="workPlace">
                        <p style='font-size:19px;font-weight:bold;'>工作住址</p>
                    </label>
                    <div>
                        <input type="text" required="required" name="workPlace" id="workPlace" value="" class="form-control" style="width:35%" placeholder="xx小区" onclick="checkvalue(16,this);" onkeyup="checkvalue(16,this);" onchange="checkworkPlace()" title="请输入工作住址,不能为空" maxlength="20">
                        <label id="tip16" class="col-sm-offset-2" style="color:#1E90FF"></label>
                    </div>
                </div>

                <div id="isNeedLive" class="form-group">
                    <label>
                        <p style='font-size:19px;font-weight:bold;'>是否需要住家：</p>
                    </label>

                    <label class="radio-inline">
                        <input type="radio" name="optionsRadios" id="radioNeedLiveYes" value="NeedLiveYes" checked>是
                    </label>

                    <label class="radio-inline">
                        <input type="radio" name="optionsRadios" id="radioNeedLiveNo" value="NeedLiveNo">否
                    </label>
                </div>

                <div id="skill2" class="form-group">
                    <label>
                        <p style='font-size:19px;font-weight:bold;'>需要技能：</p>
                    </label>
                    <span class="label label-default">心理辅导</span>
                    <span class="label label-default">专业看护</span>
                    <span class="label label-default">做饭好吃</span>
                </div>

                <div id="addSkill2" class="col-sm-offset-1">
                    <br>
                    <input type="button" name="addSkillbtn" class="btn btn-info btn-lg" value="添加技能标签" onclick="ShowDiv('MyDiv','fade')" />
                </div>


                <div id="MyDiv" class="white_content">
                    <div style="text-align:right; cursor:default; height:20px;">
                        <span style="font-size:16px;" onclick="CloseDiv('MyDiv','fade')">关闭</span>
                    </div>
                    <h1><b>添加技能标签</b></h1>
                    <hr><br>
                    <div class="form3">
                        <div id="addskilltab" class="form-group col-sm-12">
                            <p style='font-size:16px;font-weight:bold;'>添加技能标签:</p>
                            <button type="button" id="yzc" class="btn btn-default btn-xs">月子餐</button>
                            <button type="button" id="skhl" class="btn btn-default btn-xs">伤口护理</button>
                            <button type="button" id="shzl" class="btn btn-default btn-xs">生活照料</button>
                            <button type="button" id="rfhl" class="btn btn-default btn-xs">乳房护理</button>
                            <button type="button" id="jnpx" class="btn btn-default btn-xs">技能培训</button>
                            <button type="button" id="xlst" class="btn btn-default btn-xs">心理疏通</button>
                            <button type="button" id="jtgxxt" class="btn btn-default btn-xs">家庭关系协调</button>
                            <button type="button" id="jbgc" class="btn btn-default btn-xs">疾病观察</button>
                            <button type="button" id="yejl" class="btn btn-default btn-xs">育儿记录</button>
                            <button type="button" id="zqcj" class="btn btn-default btn-xs">早期促进</button>
                            <button type="button" id="yec" class="btn btn-default btn-xs">婴儿操</button>
                            <div id="addSkill2" class="col-sm-offset-1">
                                <button type="button" id="viewskill" class="btn btn-default btn-xs" onclick="ShowDiv('MyDiv2','fade')">查看技能说明</button>
                            </div>
                        </div>

                        <div id="MyDiv2" class="white_content">
                            <div style="text-align:right; cursor:default; height:20px;">
                                <span style="font-size:16px;" onclick="CloseDiv('MyDiv2','fade')">关闭</span>
                            </div>
                        </div>

                        <div id="skillDescribe" class="form-group col-sm-12">
                            <label for="skillDescribe" class="control-label">
                                <p style='font-size:16px;font-weight:bold;'>技能描述:</p>
                            </label>
                            <textarea class="form-control" id="skillDescribe" style="width:400px;height:100px;"></textarea>
                            <br>
                        </div>

                        <div id="skillCertificate" class="form-group col-sm-12" style='font-size:16px; font-weight:bold;'>
                            <label for="skillCertificate">技能凭证</label>
                            <input type="file" id="inputfile">
                            <br>
                        </div>

                        <button type="button" class="btn btn-default btn-lg col-sm-offset-1 ">提交</button>

                    </div>
                </div>

                <div class="row">
                    <div id="experience" class="form-group col-sm-2">
                        <br>
                        <label>
                            <p style='font-size:19px;font-weight:bold;'>经验需要：</p>
                        </label>
                        <select name="experience" required="required" class="form-control" style="width:100%" onclick="checkvalue(17,this);" onkeyup="checkvalue(17,this);" title="请选择经验需要,不能为空。">
                            <option value="">请选择</option> 
                            <option value="oneYear">1年以上</option> 
                            <option value="twoYear">2年以上</option>    
                            <option value="fiveYear">5年以上</option>   
                        </select>
                        <label id="tip17" style="color:#1E90FF"></label>
                    </div>

                    <div id="education2" class="form-group col-sm-2">
                        <br>
                        <label>
                            <p style='font-size:19px;font-weight:bold;'>学历：</p>
                        </label>
                        <select name="education2" required="required" class="form-control" style="width:100%" onclick="checkvalue(18,this);" onkeyup="checkvalue(18,this);" title="请选择学历,不能为空。">
                            <option value="">请选择</option>
                            <option value="juniorMiddle">初中</option>
                            <option value="technicalSecondary">中专</option>
                            <option value="specialty">专科</option>
                            <option value="undergraduate">本科</option>
                            <option value="undergraduateAbove">本科以上</option>    
                        </select>
                        <label id="tip18" style="color:#1E90FF"></label>
                    </div>
                </div>

                <div class="row">
                    <div class="form-group col-sm-2">
                        <label class="control-label">
                            <p style='font-size:19px;font-weight:bold;'>可支付工资:</p>
                        </label>
                        <input type="text" required="required" name="payMoney" id="payMoney" value="" class="form-control" style="width:100%" placeholder="单位：元" onclick="checkvalue(19,this);" onkeyup="checkvalue(19,this);" onchange="checkpayMoney()" title="请输入可支付工资，正整数，单位（元）" maxlength="6">
                        <label id="tip19" style="color:#1E90FF"></label>
                    </div>

                    <div class="form-group col-sm-2">
                        <label class="control-label">
                            <p style='font-size:19px;font-weight:bold;'>月嫂可休息天数:</p>
                        </label>
                        <input type="text" required="required" name="restTime" id="restTime" value="" class="form-control" style="width:100%" placeholder="单位：天" onclick="checkvalue(20,this);" onkeyup="checkvalue(20,this);" onchange="checkrestTime()" title="请输入期望每月休息天数，正整数，不能超过7天，单位（天）" maxlength="2">
                        <label id="tip20" style="color:#1E90FF"></label>
                    </div>

                </div>

                <div class="row">
                    <div class="form-group col-sm-2">
                        <label class="control-label">
                            <p style='font-size:19px;font-weight:bold;'>婴儿出生日期:</p>
                        </label>
                        <input type="date" value="2017-01-01" />
                    </div>

                    <div class="form-group col-sm-2">
                        <label class="control-label">
                            <p style='font-size:19px;font-weight:bold;'>婴儿出生体重:</p>
                        </label>
                        <input type="text" required="required" name="birthWeight" id="birthWeight" value="" class="form-control" style="width:100%" placeholder="单位：千克,kg" onclick="checkvalue(21,this);" onkeyup="checkvalue(21,this);" onchange="checkbirthWeight()" title="请输入婴儿出生体重，单位（千克,kg）" maxlength="6">
                        <label id="tip21" style="color:#1E90FF"></label>
                    </div>

                    <div id="babyHealthReport" style='font-size:19px; font-weight:bold;'>
                        <label for="babyHealthReport">婴儿健康报告(本网站承诺保密)</label>
                        <input type="file" id="inputfile">
                    </div>
                </div>

                <div class="row">
                    <div class="form-group col-sm-2">
                        <label class="control-label">
                            <p style='font-size:19px;font-weight:bold;'>母亲年龄:</p>
                        </label>
                        <input type="text" required="required" name="motherAge" id="motherAge" value="" class="form-control" style="width:100%" placeholder="单位：岁" onclick="checkvalue(22,this);" onkeyup="checkvalue(22,this);" onchange="checkmotherAge()" title="请输入母亲年龄，单位（岁）" maxlength="6">
                        <label id="tip22" style="color:#1E90FF"></label>
                    </div>

                    <div class="form-group col-sm-2">
                        <label class="control-label">
                            <p style='font-size:19px;font-weight:bold;'>母亲体重:</p>
                        </label>
                        <input type="text" required="required" name="motherWeight" id="motherWeight" value="" class="form-control" style="width:100%" placeholder="单位：千克,kg" onclick="checkvalue(23,this);" onkeyup="checkvalue(23,this);" onchange="checkmotherWeight()" title="请输入母亲体重，单位（千克,kg）" maxlength="6">
                        <label id="tip23" style="color:#1E90FF"></label>
                    </div>

                    <div class="form-group col-sm-2">
                        <label class="control-label">
                            <p style='font-size:19px;font-weight:bold;'>母亲身高:</p>
                        </label>
                        <input type="text" required="required" name="motherHeight" id="motherHeight" value="" class="form-control" style="width:100%" placeholder="单位：厘米,cm" onclick="checkvalue(24,this);" onkeyup="checkvalue(24,this);" onchange="checkmotherHeight()" title="请输入母亲体重，单位（厘米,cm）" maxlength="6">
                        <label id="tip24" style="color:#1E90FF"></label>
                    </div>
                </div>

                <div class="row">
                    <div class="form-group col-sm-2">
                        <label class="control-label">
                            <p style='font-size:19px;font-weight:bold;'>分娩次数:</p>
                        </label>
                        <input type="text" required="required" name="childbirth" id="childbirth" value="" class="form-control" style="width:100%" placeholder="" onclick="checkvalue(25,this);" onkeyup="checkvalue(25,this);" onchange="checkchildbirth()" title="请输入分娩次数" maxlength="6">
                        <label id="tip25" style="color:#1E90FF"></label>
                    </div>

                    <div id="deliveryMode" class="form-group col-sm-2">
                        <label>
                            <p style='font-size:19px;font-weight:bold;'>分娩方式：</p>
                        </label>
                        <select name="deliveryMode" required="required" class="form-control" style="width:100%" onclick="checkvalue(26,this);" onkeyup="checkvalue(26,this);" title="请选择分娩方式,不能为空。">
                            <option value="">请选择</option> 
                            <option value="naturalLabour">顺产</option> 
                            <option value="caesarean">剖腹产</option>     
                        </select>
                        <label id="tip26" style="color:#1E90FF"></label>
                    </div>

                    <div id="motherHealthReport" style='font-size:19px; font-weight:bold;'>
                        <label for="motherHealthReport">母亲健康报告(本网站承诺保密)</label>
                        <input type="file" id="inputfile">
                    </div>
                </div>

                <input type="reset" class="btn btn-default" value="重 置">
                <input type="submit" class="btn btn-default" value="提 交">
            </form>
        </div>
    </div>

    <script>
        $("#yzc").click(function() {
            $("#yzc").toggleClass("btn btn-success btn-lg");
        });
        $("#skhl").click(function() {
            $("#skhl").toggleClass("btn btn-success btn-lg");
        });
        $("#shzl").click(function() {
            $("#shzl").toggleClass("btn btn-success btn-lg");
        });
        $("#rfhl").click(function() {
            $("#rfhl").toggleClass("btn btn-success btn-lg");
        });
        $("#jnpx").click(function() {
            $("#jnpx").toggleClass("btn btn-success btn-lg");
        });
        $("#xlst").click(function() {
            $("#xlst").toggleClass("btn btn-success btn-lg");
        });
        $("#jtgxxt").click(function() {
            $("#jtgxxt").toggleClass("btn btn-success btn-lg");
        });
        $("#jbgc").click(function() {
            $("#jbgc").toggleClass("btn btn-success btn-lg");
        });
        $("#yejl").click(function() {
            $("#yejl").toggleClass("btn btn-success btn-lg");
        });
        $("#zqcj").click(function() {
            $("#zqcj").toggleClass("btn btn-success btn-lg");
        });
        $("#yec").click(function() {
            $("#yec").toggleClass("btn btn-success btn-lg");
        });

    </script>
</body>

</html>
