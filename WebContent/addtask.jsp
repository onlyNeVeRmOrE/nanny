<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>任务添加</title>
<style type="text/css">
table, td {
	font: 100% '微软雅黑';
}

table {
	width: 80%;
	border-collapse: collapse;
	margin: 0 0 0 100px
}

th, td {
	text-align: center;
	border: 1px solid #fff;
}

th {
	background: #328aa4
}

td {
	background: #e5f1f4;
}
</style>
</head>
<body>

	<a href="#" style="margin: 100px" id="add_btn">新增</a>
	<input id="Ktext" type="text">
	<a href="#" id="search_btn"> 查询</a>
	<a href="#" style="margin: 100px" id="back_btn">返回（取消上次操作）</a>
	<br />
	<table id="tb">
		<tr id="trr">
			<th style="width: 100px">ID</th>
			<th style="width: 100px">时间</th>
			<th style="width: 100px">内容</th>
			<th style="width: 100px">功能</th>

		</tr>
		<tbody id="hide_tbody">
			<tr style="display: none" id="trr">
				<td style="width: 100px" id="no_id"><input value='' type='text'></td>
				<td style="width: 100px"><input value='' type='text'></td>
				<td style="width: 200px"><input value='' type='text'></td>
				<td style="width: 100px" id="a"><a href="#" id="save_btn">保存</a>
					<a href="#" id="edit_btn" style="display: none">修改</a> <a href="#"
					id="del_btn">删除</a></td>
			</tr>
		</tbody>
		<tbody id="show_tbody">

		</tbody>
	</table>
	<a href="#" style="margin: 100px" id="to_btn">提交</a>
	<script src="js/jquery-1.7.2.js"></script>
	<script>
$(document).ready(function(){ 
	  var tb = $("#tb"); 
	  var json = [];
	  var id;
	  var time;
	  var what;
	  var flog = 0;
	  
	  function add(){
		  var currentEmail = "<%=session.getAttribute("sessionName")%>";
								$.ajax({
									url : "",
									dataType : 'json',
									data : {
										'currentEmail' : currentEmail,
									},
									success : function(result) {
										onLoadData(result);
									},
									error : function(data) {
										alert("11");
									}
								})

							}

							function onLoadData(result) {
								var index = 1;
								var html = '';
								var beforedata = eval(result);
								var j = 0, datalength = beforedata.length;
								for (; j < datalength; j++) {
									html += '<tr id="trr" > ';
									html += '<td style="width:100px" id="no_id">'
											+ index + '</td>';
									html += '<td style="width:100px">'
											+ beforedata[j].itemtime + '</td> ';
									html += '<td style="width:100px">'
											+ beforedata[j].itmewhat + '</td> ';
									html += '<td style="width:200px" id="a"><a href="#" id="save_btn" style="display:none">保存</a>';
									html += '<a href="#" id="edit_btn">修改</a> ';
									html += ' <a href="#" id="del_btn">删除</a></td> ';
									html += '</tr>';
									var data = {};
									data.itemid = index;
									data.itemtime = beforedata[j].itemtime;
									data.itemwhat = beforedata[j].itmewhat;
									json.push(data);
									index++;
								}
								$('#show_tbody').append(html);
							}

							//添加 
							$("#add_btn").click(
									function() {
										var hideTr = $("#hide_tbody", tb)
												.children().first();
										var newTr = hideTr.clone().show();
										$("#show_tbody", tb).append(newTr);
									});

							//保存 
							$("#save_btn", tb)
									.die('click')
									.live(
											'click',
											function() {
												var length = json.length;
												var tr = $(this).parent()
														.parent();
												$("input[type='text']", tr)
														.each(
																function(i, el) {
																	el = $(el);
																	el
																			.parent()
																			.text(
																					el
																							.val());
																	if (i == 0) {
																		id = el
																				.val();
																		if (length != 0) {
																			var middle = eval(json);
																			for (var j = 0; j < length; j++) {
																				if (middle[j].itemid == id) {
																					flog = 1;
																				}
																			}
																		}
																	} else if (i == 1) {
																		time = el
																				.val();
																	} else {
																		what = el
																				.val();
																		if (flog == 0) {
																			var data = {};
																			data.itemid = id;
																			data.itemtime = time;
																			data.itemwhat = what;
																			json
																					.push(data);
																		} else {
																			var middle = eval(json);
																			for (var j = 0; j < length; j++) {
																				if (middle[j].itemid == id) {
																					middle[j].itemtime = time;
																					middle[j].itemwhat = what;

																				}

																			}
																		}
																	}
																	el.remove();
																});
												flog = 0;
												var a = JSON.stringify(json);
												alert(a);
												$("#save_btn", tr).hide();
												$("#edit_btn", tr).show();
											});

							//修改 
							$("#edit_btn", tb).die('click').live(
									'click',
									function() {
										var tr = $(this).parent().parent();
										$("td:not('#a')", tr).each(
												function(i, el) {
													el = $(el);
													var html = "<input value='"
															+ el.text()
															+ "' type='text'>";
													el.html(html);
												});
										$("#edit_btn", tr).hide();
										$("#save_btn", tr).show();
									});

							//删除 
							$("#del_btn", tb).die('click').live('click',
									function() {
										$(this).parent().parent().remove();

									});

							//查询 
							$("#search_btn").click(function() {
								var key = $("#Ktext").val();
								var sbody = $("#show_tbody");
								var trr = $("#trr", sbody);
								var keyword = $("#no_id", sbody).text();
								for (var i = 0; i < keyword.length; i++) {
									if (keyword[i] == key[0]) {
										trr.eq(i).show();
									} else {
										trr.eq(i).hide();
									}
								}
							});
							//返回 
							$("#back_btn").click(function() {
								var sbody = $("#show_tbody");
								$("#trr", sbody).show();

							});

							//提交
							$("#to_btn").click(function() {
								var a = JSON.stringify(json);
								alert(a);
								$.ajax({
									url : "addSingleTask.action",
									dataType : 'json',
									data : {
										"task":JSON.stringify(json)
									},
									success : function() {
										alert("提交成功,确定关闭当前页面");
									},
									error : function(data) {
										alert("请求失败");
									}
								})
							})

							add();
						});
	</script>
</body>
</html>