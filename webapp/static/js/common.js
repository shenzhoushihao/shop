/**
 * 加载页面
 */
function reload() {
	//加载弹框
	$("#modalList").load("/shop/common/modal.html");
	//获取滚动条
	scrollbar();
	//加载头部
	$("#top").load("/shop/common/top.html");
	//加载尾部
	$("#tail").load("/shop/common/tail.html");
	//获取登录
	checklogin();
}

/**
 * 是否已经登录
 */
//全局变量
var info;

function checklogin() {
	var juid = $.cookie('juid');
	$.ajax({
		type: "POST",
		url: "/shop/api/home/islogin",
		data: {
			juid: juid
		},
		dataType: "json",
		success: function(result) {
			info = result;
			if(result.result) {
				$("div.distance ul.message li").eq(0).css("display", "none");
				$("div.distance ul.message li").eq(1).css("display", "none");
				$("div.distance ul.message li").eq(2).find("p").text(result.map.welcome + "," + result.map.dto.name + "!");
				$("div.distance ul.message li").eq(2).css("display", "block");
			}
		}
	});
	return info;
}
/**
 * 登录按钮
 */
$("#btn_login").click(function() {
	$("#login_form").find("*").removeClass("has-success has-error");
	$("#login_form").find("span").text("");
	$("#sno").val("");
	$("#password").val("");
	$("#login_modal").modal('show');
	$("#modal_login").attr("disabled", true);
	verifyCode();
});

/**
 * 注册按钮
 */
$("#btn_register").click(function() {
	window.location.href = "/shop/page/account/register.html";
});

/**
 * 弹出框函数
 * @param 
 */
function showMsg(result) {
	$('#content div:eq(1) p').text(result.map.msg);
	$("#myModal").modal("show");
	setTimeout(function() {
		if(result.msg == 'success') {
			$('#myModal').modal('hide');
		}
	}, 2000);
}

function showOnlyMsg(result) {
	$('#content div:eq(1) p').text(result);
	$("#myModal").modal("show");
	setTimeout(function() {
		$('#myModal').modal('hide');
	}, 2000);
}

/**
 * 登录
 */
$("#modal_login").click(function() {
	$("#login_form div:nth-child(1)").find("span").text("");
	verifyCode();
	var params = $("#login_form").serialize();
	params = decodeURIComponent(params, true);
	if(validate_user()) {
		$.ajax({
			type: "POST",
			url: "/shop/api/home/login",
			data: params,
			dataType: "json",
			success: function(result) {
				if(result.msg == 'success') {
					info = result;
					$.cookie('juid', result.map.juid, {
						path: '/shop'
					});
					$("#login_modal").modal("hide");
					$('#content div:eq(1) p').text(result.map.msg);
					$("#myModal").modal("show");
					setTimeout(function() {
						if(result.msg == 'success') {
							$('#myModal').modal('hide');
						}
					}, 2000);
					$("div.distance ul.message li").eq(0).css("display", "none");
					$("div.distance ul.message li").eq(1).css("display", "none");
					$("div.distance ul.message li").eq(2).find("p").text(result.map.welcome + "," + result.map.dto.name + "!");
					$("div.distance ul.message li").eq(2).css("display", "block");
				} else if(!result.result) {
					$("#login_form div:nth-child(1)").find("span").text(result.map.msg);
				}
			}
		});
	}
});

/**
 * 校验登录表单
 */
function validate_user() {
	/*
	 * 校验学号
	 */
	var account = $("#account").val();
	regName = /^[0-9]{3,20}$/;
	if(!(regName.test(account))) {
		show_validate_msg("#account", "fail", "学号是3-20位数字字符！");
		return false;
	} else {
		show_validate_msg("#account", "success", "");
	}

	/*
	 * 校验密码
	 */
	var password = $("#password").val();
	regName = /^[a-z|A-Z|0-9_-]{6,18}$/;
	if(!(regName.test(password))) {
		show_validate_msg("#password", "fail", "密码是6-18位数字字符或者英文字符！");
		return false;
	} else {
		show_validate_msg("#password", "success", "");
	}
	return true;
}

/**
 * 校验信息
 */
function show_validate_msg(ele, status, msg) {
	$(ele).parent().removeClass("has-success has-error");
	$(ele).next("span").text("");
	if("success" == status) {
		$(ele).parent().addClass("has-success");
		$(ele).next("span").text(msg);
	} else if("fail" == status) {
		$(ele).parent().addClass("has-error");
		$(ele).next("span").text(msg);
	}
}
/**
 * 菜单栏的动画
 */
$("#menu").children("li").mouseover(function() {
	$(this).css("background", "#222222");
});

$("#menu").children("li").mouseout(function() {
	$(this).css("background", "#555555");
});

/**
 * 首页按钮
 */
$("#index").click(function() {
	window.location.href = "/shop/index.html";
});

/**
 * 	需求大厅
 */
$("#buy").click(function() {
	window.location.href = "/shop/page/shop/sale.html";
});

/**
 * 收藏车
 */
$("#myCart").click(function() {
	var juid = $.cookie('juid');
	if(juid == undefined || juid == 'null') {
		showOnlyMsg("您还没有登录！");
		return false;
	}
	window.location.href = "/shop/page/shop/myCart.html";
});

/**
 * 平台管理
 */
$("#httpback").click(function() {
	window.location.href = "http://127.0.0.1:10020/shop";
});
/**
 * 我的跳转
 */
$("#personinfo").click(function() {
	var juid = $.cookie('juid');
	if(juid == undefined || juid == 'null') {
		$('#content div:eq(1) p').text("您还没有登录！");
		$("#myModal").modal("show");
		setTimeout(function() {
			$('#myModal').modal('hide');
		}, 2000);
		return false;
	} else {
		if(info == undefined || info == '' || info == null) {
			checklogin();
		} else {
			if(info.result) {
				window.location.href = "/shop/page/account/personal.html";
			} else if(!info.result) {
				showOnlyMsg("您还没有登录！");
				return false;
			}
		}
	}
});

/**
 * 验证码
 */
function verifyCode() {
	$('#mpanel1').empty();
	$("#modal_login").attr("disabled", true);
	$('#mpanel1').slideVerify({
		type: 2, //类型
		vOffset: 5, //误差量，根据需求自行调整
		vSpace: 5, //间隔
		imgName: ['1.jpg', '2.jpg'],
		imgSize: {
			width: '500px',
			height: '200px',
		},
		blockSize: {
			width: '40px',
			height: '40px',
		},
		barSize: {
			width: '500px',
			height: '40px',
		},
		ready: function() {},
		success: function() {
			$("#modal_login").attr("disabled", false);
		},
		error: function() {
			$("#modal_login").attr("disabled", true);
		}
	});
}

/*
 * 分页数据(过期)
 */
function build_page_info(result) {
	$("#build_page_info").empty();
	$("#build_page_info").append("当前第")
		.append($("<kbd></kbd>").append(result.map.pageInfo.pageNum))
		.append("页，总共有")
		.append($("<kbd></kbd>").append(result.map.pageInfo.pages))
		.append("页，共计")
		.append($("<kbd></kbd>").append(result.map.pageInfo.total))
		.append("条记录");
}

/*
 * 分页数据
 */
function build_page_info1(ele, result) {
	$(ele).empty();
	$(ele).append("当前第")
		.append($("<kbd></kbd>").append(result.map.pageInfo.pageNum))
		.append("页，总共有")
		.append($("<kbd></kbd>").append(result.map.pageInfo.pages))
		.append("页，共计")
		.append($("<kbd></kbd>").append(result.map.pageInfo.total))
		.append("条记录");
}

/**
 * 滚动条
 */
function scrollbar() {
	var collectList;
	var seekList;
	//发布收藏记录
	$.ajax({
		type: "POST",
		url: "/shop/api/product/getHotCollectList",
		dataType: "json",
		success: function(result) {
			if(result.result) {
				collectList = result;
			}
		}
	});
	//发布需求记录
	$.ajax({
		type: "POST",
		url: "/shop/api/seekbuy/selectAllSeek",
		dataType: "json",
		success: function(result) {
			if(result.result) {
				seekList = result;
			}
		}
	});
	setTimeout(function() {
		createScrollbar(collectList, seekList);
	}, 5000);
}

function createScrollbar(resultone, resulttwo) {
	var scroll = $("#head").find("span");

	var scrollstr1 = '刚刚发布新需求：';
	$.each(resulttwo.map.pageInfo.list, function(index, item) {
		var str = item.createdtime + '，' + item.cname + ',' + (item.name).substring(0, 1) + '** 发布了新需求：' + item.title + '，快去查看吧！》》》   ';
		scrollstr1 = scrollstr1 + str;
	});

	var scrollstr2 = '新的收藏记录：';
	$.each(resultone.map.pageInfo.list, function(index, item) {
		var str = item.createdtime + '，' + (item.name).substring(0, 1) + '** 收藏了' + item.pname + '/' + item.num + '次；《《《    ';
		scrollstr2 = scrollstr2 + str;
	});

	scrollstr1 = scrollstr1 + '****************************************************    ' + scrollstr2;
	scroll.text(scrollstr1);
}