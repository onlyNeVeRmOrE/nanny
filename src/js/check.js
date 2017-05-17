function checkbox() {
    var checks = document.getElementsByName("checkbox[]");
    n = 0;
    for (i = 0; i < checks.length; i++) {
        if (checks[i].checked)
            n++;
    }
    if (n == 0) {
        swal(
            '请选择目标工作城市',
            '至少一个城市',
            'error'
        )
    }
}

function checkvalue(n, obj) {
    var oTip = document.getElementById("tip" + n);
    if (obj.value == "") {
        oTip.innerHTML = obj.title;
    } else {
        oTip.innerHTML = "";
    }
};

function $(name) {
    return document.getElementById(name);
};

function checkname() {
    var namereg = /^(([\u4e00-\u9fa5]{2,4})|([a-z A-Z]{2,16}))$/;
    if (!namereg.test($("username").value)) {
        swal(
            '真实姓名输入错误',
            '请输入2-4位的中文名或者2-16位的英文名',
            'error'
        )
    }
};

function $(IDnumber) {
    return document.getElementById(IDnumber);
};

function checkid() {
    var idreg = /^[1-9]{1}[0-9]{14}$|^[1-9]{1}[0-9]{16}([0-9]|[xX])$/;
    if (!idreg.test($("IDnumber").value)) {
        swal(
            '身份证号输入错误',
            '请输入18位有效的身份证号',
            'error'
        )
    }
};

function $(city) {
    return document.getElementById(city);
};

function checkcity() {
    var cityreg = /^([\u4e00-\u9fa5]{2,30})$/;
    if (!cityreg.test($("city").value)) {
        swal(
            '所在城市输入错误',
            '请输入正确的城市名',
            'error'
        )
    }
};


function $(residence) {
    return document.getElementById(residence);
};

function checkresidence() {
    var residencereg = /^([\u4e00-\u9fa5]{2,30})$/;
    if (!residencereg.test($("residence").value)) {
        swal(
            '居住地输入错误',
            '请输入正确的居住地：xx省xx市xx县xx乡xx村',
            'error'
        )
    }
};

function $(hopeMoney) {
    return document.getElementById(hopeMoney);
};

function checkhopeMoney() {
    var hopeMoneyreg = /^[1-9]*[1-9][0-9]*$/;
    if (!hopeMoneyreg.test($("hopeMoney").value)) {
        swal(
            '期望工资输入错误',
            '请输入正确的工资数，非负整数即可',
            'error'
        )
    }
};

function $(hopeTime) {
    return document.getElementById(hopeTime);
};

function checkhopeTime() {
    var hopeTimereg = /^([0-7])$/;
    if (!hopeTimereg.test($("hopeTime").value)) {
        swal(
            '期望每月休息时间输入错误',
            '请输入正确的休息时间，0-7之间的整数',
            'error'
        )
    }
};

function $(workPlace) {
    return document.getElementById(workPlace);
};

function checkworkPlace() {
    var workPlacereg = /^([\u4e00-\u9fa5]{2,30})$/;
    if (!workPlacereg.test($("workPlace").value)) {
        swal(
            '需要工作地址输入错误',
            '请输入正确的休息时间，如xx小区',
            'error'
        )
    }
};

function $(payMoney) {
    return document.getElementById(payMoney);
};

function checkpayMoney() {
    var payMoneyreg = /^[1-9]*[1-9][0-9]*$/;
    if (!payMoneyreg.test($("payMoney").value)) {
        swal(
            '可支付工资输入错误',
            '请输入正确的可支付工资，非负整数即可',
            'error'
        )
    }
};

function $(restTime) {
    return document.getElementById(restTime);
};

function checkrestTime() {
    var restTimereg = /^([0-7])$/;
    if (!restTimereg.test($("restTime").value)) {
        swal(
            '月嫂可休息天数输入错误',
            '请输入正确的月嫂可休息天数，0-7之间的整数',
            'error'
        )
    }
};

function $(birthWeight) {
    return document.getElementById(birthWeight);
};

function checkbirthWeight() {
    var birthWeightreg = /^[1-9]*[1-9][0-9]*$/;
    if (!birthWeightreg.test($("birthWeight").value)) {
        swal(
            '婴儿出生体重输入错误',
            '请输入正确的婴儿出生体重，非负整数即可',
            'error'
        )
    }
};

function $(motherAge) {
    return document.getElementById(motherAge);
};

function checkmotherAge() {
    var motherAgereg = /^[1-9]*[1-9][0-9]*$/;
    if (!motherAgereg.test($("motherAge").value)) {
        swal(
            '母亲年龄输入错误',
            '请输入正确的母亲年龄，非负整数即可',
            'error'
        )
    }
};

function $(motherWeight) {
    return document.getElementById(motherWeight);
};

function checkmotherWeight() {
    var motherWeightreg = /^[1-9]*[1-9][0-9]*$/;
    if (!motherWeightreg.test($("motherWeight").value)) {
        swal(
            '母亲体重输入错误',
            '请输入正确的母亲体重，非负整数即可',
            'error'
        )
    }
};

function $(motherHeight) {
    return document.getElementById(motherHeight);
};

function checkmotherHeight() {
    var motherHeightreg = /^[1-9]*[1-9][0-9]*$/;
    if (!motherHeightreg.test($("motherHeight").value)) {
        swal(
            '母亲身高输入错误',
            '请输入正确的母亲身高，非负整数即可',
            'error'
        )
    }
};

function $(childbirth) {
    return document.getElementById(childbirth);
};

function checkchildbirth() {
    var childbirthreg = /^[1-9]*[1-9][0-9]*$/;
    if (!childbirthreg.test($("childbirth").value)) {
        swal(
            '分娩次数输入错误',
            '请输入正确的分娩次数，非负整数即可',
            'error'
        )
    }
};
