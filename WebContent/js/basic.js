function basic() {
        $.ajax({
            type: "POST",
            url: url + "",
            contentType: "application/json",
            dataType: "json",
            data: JSON.stringify(GetJsonData()),
            success: function (jsonResult) {
                var username=document.getElementById("username").value;
                $('input,select,textarea',$('form[name="basicform"]')).prop('disabled',true);
            },
            error: function (jsonResult) {
                alert("失败");
            }
        })
}

function GetJsonData() {
    var json = {
        "username": $("#usename").val(),
        "IDnumber": $("#IDnumber").val(),
        "phone": $("#phone").val(),
        "appellation": $("#appellation").val(),
        "city": $("#city").val(),
        "residence": $("#residence").val()
    };
    return json;
}