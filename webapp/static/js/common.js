/*
 *Cookies的使用 
 */
function setCookie(key, value, day) {
	var nowDay = new Date();
	nowDay.setDate(nowDay.getTime() + day);
	document.cookie = key + '=' + value + ';expires=' + nowDay;
}

function removeCookie(key) {
	setCookie(key, '', -1); //这里只需要把Cookie保质期退回一天便可以删除
}

function getCookie(key) {
	var cookieArr = document.cookie.split('; ');
	for(var i = 0; i < cookieArr.length; i++) {
		var arr = cookieArr[i].split('=');
		if(arr[0] === key) {
			return arr[1];
		}
	}
	return false;
}

/**
 * 加载页面
 */
function reload() {
	//加载弹框
	$("#modalList").load("/shop/common/modal.html");
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
	var juid = getCookie('juid');
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
					setCookie('juid', result.map.juid, 6000 * 3600);
					checklogin();
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
				} else {
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
 * 收藏车
 */
$("#myCart").click(function() {
	var juid = getCookie("juid");
	if(juid == false) {
		$('#content div:eq(1) p').text("您还没有登录！");
		$("#myModal").modal("show");
		setTimeout(function() {
			$('#myModal').modal('hide');
		}, 2000);
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
	var juid = getCookie("juid");
	if(juid == false) {
		$('#content div:eq(1) p').text("您还没有登录！");
		$("#myModal").modal("show");
		setTimeout(function() {
			$('#myModal').modal('hide');
		}, 2000);
		return false;
	} else {
		info = checklogin();
		if(info.result) {
			window.location.href = "/shop/page/account/personal.html";
		} else {
			$('#content div:eq(1) p').text("您还没有登录！");
			$("#myModal").modal("show");
			setTimeout(function() {
				$('#myModal').modal('hide');
			}, 2000);
			return false;
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

/**
 * 日期格式化
 * @param {Object} format
 */
Date.prototype.format = function(format) {
	/* 
	 * 使用例子:format="yyyy-MM-dd hh:mm:ss"; 
	 */
	var o = {
		"M+": this.getMonth() + 1, // month 
		"d+": this.getDate(), // day 
		"h+": this.getHours(), // hour 
		"m+": this.getMinutes(), // minute 
		"s+": this.getSeconds(), // second 
		"q+": Math.floor((this.getMonth() + 3) / 3), // quarter 
		"S": this.getMilliseconds() // millisecond 
	}

	if(/(y+)/.test(format)) {
		format = format.replace(RegExp.$1, (this.getFullYear() + "").substr(4 -
			RegExp.$1.length));
	}

	for(var k in o) {
		if(new RegExp("(" + k + ")").test(format)) {
			format = format.replace(RegExp.$1, RegExp.$1.length == 1 ?
				o[k] :
				("00" + o[k]).substr(("" + o[k]).length));
		}
	}
	return format;
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