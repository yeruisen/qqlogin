﻿<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>QQ登陆</title>
<!--引入开始-->
<link href="css/login.css" rel="stylesheet" />
<script src="http://www.5imoban.net/download/jquery/jquery-1.8.3.min.js" type="text/javascript"></script>
<script src="js/jquery.login.js" type="text/javascript"></script>
<!--引入结束-->
<style>
body{margin:0; padding:0;}
ul#wimoban_nav{padding-left:50px; margin-bottom:10px; border-bottom:2px solid #ccc; overflow:hidden; _zoom:1;}
ul#wimoban_nav li{float:left; display:inline; margin:10px;}
ul#wimoban_nav li a{display:block; font-size:16px;}
ul#wimoban_nav li a,#wimoban_p,#wimoban_p a{color:#000; font-family:"微软雅黑";}
ul#wimoban_nav li a:hover,#wimoban_p a:hover{color:red;}
#wimoban_p{text-align:center; font-size:14px; clear:both;}
a{text-decoration:none;}
</style>
</head>	

<body oncontextmenu='return false' ondragstart='return false'>

<ul id="wimoban_nav">

</ul>
<!-- 代码开始 -->
<input id="loginStart" style="text-align:center" type='submit' value='请点击登录' />
<div id="_login_div_quick_">
	<div class="login_no_qlogin" id="login">
		<div id="header" class="header">
			<div class="logo"></div>
			<div class="switch" id="switch">
				<a class="switch_btn" id="switch_qlogin" href="javascript:void(0);" tabindex="7">快速登录</a>
				<a class="switch_btn_focus" id="switch_login" href="javascript:void(0);" tabindex="8">帐号登录</a>
				<div class="switch_bottom" id="switch_bottom"></div>
			</div>
			<a id="close" class="close" href="javascript:void(0)" title="关闭" tabindex="9"></a>
		</div>
		<div class="qrswitch" id="qrswitch">
			<a class="qrswitch_logo" id="qrswitch_logo" href="javascript:void(0)" title="二维码登录"></a>
		</div>
		<div class="web_qr_login" id="web_qr_login">
			<div class="web_qr_login_show" id="web_qr_login_show">
				<div class="web_login" id="web_login">
					<div class="tips" id="tips">
						<div class="error_tips" id="error_tips">
							<span class="error_logo" id="error_logo"></span>
							<span class="err_m" id="err_m"></span>
						</div>
						<div class="operate_tips" id="operate_tips">
							<span class="operate_content">手机号码也可登录哦，<a class="tips_link" id="bind_account" href="javascript:void(0);">登录个人中心绑定</a>
							</span>
							<span class="down_row"></span>
						</div>
						<div class="loading_tips" id="loading_tips">
							<span id="loading_wording">登录中</span>
							<img src="images/load.gif" alt="加载中..." />
						</div>
					</div>
					<div class="login_form">
						<form id="loginform" name="loginform" action="servlet/LoginServlet">
							<div class="uinArea" id="uinArea">
								<label class="input_tips" id="uin_tips" for="u">QQ号码/手机/邮箱</label>
								<div class="inputOuter">
									<input type="text" class="inputstyle" id="u" name="u" value="" tabindex="1" />
									<a class="uin_del" id="uin_del" href="javascript:void(0);"></a>
								</div>
								<ul class="email_list" id="email_list"></ul>
							</div>
							<div class="pwdArea" id="pwdArea">
								<label class="input_tips" id="pwd_tips" for="p">密码</label>
								<div class="inputOuter">
									<input type="password" class="inputstyle password" id="p" name="p" value="" maxlength="16" tabindex="2" />
								</div>
								<div class="lock_tips" id="caps_lock_tips">
									<span class="lock_tips_row"></span>
									<span>大写锁定已打开
									</span>
								</div>
							</div>
							<div class="submit">
								<a class="login_button" href="javascript:void(0);">
									<input type="submit" tabindex="6" value="登 录" class="btn" id="login_button" />
								</a>
							</div>
						</form>
					</div>
					<div class="bottom" id="bottom_web">
						<a href="#####" class="link" id="forgetpwd" target="_blank">忘了密码？</a>
						<span class="dotted">|</span>
						<a href="####" class="link" target="_blank">注册新帐号</a>
						<span class="dotted">|</span>
						<a class="link" id="feedback_web" href="#####" target="_blank">意见反馈</a>
					</div>
				</div>
				<div class="qrlogin" id="qrlogin">
					<div class="qr_step" id="qrlogin_step1">
						<div class="qr_tips">
							请用手机app<a class="qr_link" href="#####" target="_blank">QQ安全中心V1.5</a>扫描二维码
						</div>
						<div class="qrlogin_bg"></div>
						<img class="qrlogin_img" id="qrlogin_img" src="images/ptqrshow.png" alt="" />
					</div>
					<div class="bottom" id="bottom_qr">
						<a href="####" class="link" id="qrlogin_help" target="_blank">二维码使用帮助</a>
						<span class="dotted">|</span>
						<a href="####" class="link" target="_blank">注册新帐号</a>
						<span class="dotted">|</span>
						<a class="link" id="feedback_qr" href="####" target="_blank">意见反馈</a>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<script type="text/javascript">
	$.login('#loginStart');
</script>
<!-- 代码结束 -->

</body>
</html>