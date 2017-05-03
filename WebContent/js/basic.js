$(".submit-button button").click(function () {
            myusername = $("#username").val();
            myIDnumber = $("#IDnumber").val();
            mysex = $("#sex").val();
            mycity = $("#city").val();
            myresidence = $("#residence").val();
            $.ajax({
                type: "POST",
                url: url + "",
                contentType: "application/json",
                dataType: "json",
                data: {
                    'username': myusername,
                    'IDnumber': myIDnumber,
                    'sex': mysex,
                    'city': mycity,
                    'residence': myresidence
                },
                success: function (jsonResult) {
                    alert("成功");
                },
                error: function (jsonResult) {
                    alert("失败");
                }
            });
	})
