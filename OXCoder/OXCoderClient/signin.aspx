﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="signin.aspx.cs" Inherits="OXCoderClient.signin" %>
<!DOCTYPE html>
<!-- saved from url=(0033)http://www.oxcoder.com/signin.html -->
<html lang="en"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="BootstrapStyler">

<title>猿圈 登录</title>

<!-- Bootstrap core CSS -->
<link href="http://www.oxcoder.com/bootstrap/css/bootstrap.min.css?v=3.1.0" rel="stylesheet">

<!-- Font Awesome CSS -->
<link href="http://www.oxcoder.com/fonts/font-awesome/css/font-awesome.min.css?v=4.0.3" rel="stylesheet">

<!-- Bootstrap Switch -->
<link href="http://www.oxcoder.com/css/libs/bootstrap-switch.min.css?v=3.0.0" rel="stylesheet">

<!-- Bootstrap Select -->
<link href="http://www.oxcoder.com/css/libs/bootstrap-select.min.css" rel="stylesheet">

<!-- Summernote -->
<link href="http://www.oxcoder.com/css/libs/summernote.css" rel="stylesheet">
<link href="http://www.oxcoder.com/css/libs/summernote-bs3.css" rel="stylesheet">

<!-- IcoMoon CSS -->
<link href="http://www.oxcoder.com/fonts/icomoon/style.css?v=1.0" rel="stylesheet">

<!-- Custom styles for this template -->
<!-- <link href="css/styler/style.css" rel="stylesheet" type="text/css"> -->


<!-- Sign In and Sign Up page styling -->
<link href="http://www.oxcoder.com/css/styler/signin.css" rel="stylesheet">
<link href="/signin_files/style_new.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="http://www.oxcoder.com/css/libs/bootstrapValidator.css">

<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
            <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
            <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
        <![endif]-->
<style type="text/css">
    body {
        background-color: #4A90E2;
    }
    .panel-title img {
        max-height: 70px;
    }
    .footer-log{
        margin-bottom:20px; text-align:center; color:#fff;
    }
    .footer-log a{
        color:#fff;
        padding-left: 10px;
        margin-left: 10px;
        border-left: 1.5px solid #fff;
    }
    .footer-log a:visited{
        color:#fff;
    }
</style>
<style type="text/css">.jqstooltip { position: absolute;left: 0px;top: 0px;visibility: hidden;background: rgb(0, 0, 0) transparent;background-color: rgba(0,0,0,0.6);filter:progid:DXImageTransform.Microsoft.gradient(startColorstr=#99000000, endColorstr=#99000000);-ms-filter: "progid:DXImageTransform.Microsoft.gradient(startColorstr=#99000000, endColorstr=#99000000)";color: white;font: 10px arial, san serif;text-align: left;white-space: nowrap;padding: 5px;border: 1px solid white;z-index: 10000;}.jqsfield { color: white;font: 10px arial, san serif;text-align: left;}</style></head>

<body>
	<div class="container" style="margin-top: 160px;">
		<div class="row">
			<div class="col-md-8 col-md-push-2 col-xs-12 col-sm-12">
				<section id="middle">

					<div id="content" class="signin-page">

						<div class="panel-group" id="signin-page">

							<h3 class="panel-title" style="color: #fff;font-size: 2.4em;padding: 25px 25px 10px;text-shadow: 0 1px 2px rgba(0, 0, 0, 0.1);"><img src="./signin_files/wlogo.png">猿圈登录</h3>
							<div class="panel panel-outline panel-no-padding" style="border: none;">
								<div id="signin" class="panel-collapse collapse in">
									<div class="panel-body col-md-6">
										<form action="./signin-handle.aspx" method="post" id="defaultForm" class="form-horizontal bv-form" novalidate="novalidate"><button type="submit" class="bv-hidden-submit" style="display: none; width: 0px; height: 0px;"></button>
											<div class="form-group">
												<div class="col-xs-12">
													<div class="input-group">
														<span class="input-group-addon"><i class="fa fa-envelope"></i></span> <input type="email" id="login-email" name="email" class="form-control input-lg" placeholder="请输入邮箱地址" data-bv-field="email">
													</div>
												</div>
											</div>
											<div class="form-group">
												<div class="col-xs-12">
													<div class="input-group">
														<span class="input-group-addon"><i class="fa fa-key"></i></span> <input type="password" id="login-password" name="pwd" class="form-control input-lg" placeholder="请输入密码" data-bv-field="pwd">
													</div>
												</div>
											</div>
											<div class="col-xs-12">
												<input type="checkbox" checked="checked" name="rememberFlag" value="1" onchange="this.value=(rememberFlag.checked)?1:0" style="margin-left: 20px;">记住我
												<span style="float: right;"> <a href="./user-to-forget-pwd.html" style="color: #c0c0c0;"><small>忘记密码？</small></a>
												</span> <span class="help-block has-error" id="hint1" style="margin-left: 20px;"><small class="help-block" data-bv-validator="notEmpty" data-bv-for="email" data-bv-result="NOT_VALIDATED" style="display: none;">请输入邮箱地址</small><small class="help-block" data-bv-validator="emailAddress" data-bv-for="email" data-bv-result="NOT_VALIDATED" style="display: none;">请输入正确的邮箱格式</small><small class="help-block" data-bv-validator="notEmpty" data-bv-for="pwd" data-bv-result="NOT_VALIDATED" style="display: none;">请输入密码</small></span> <span class="help-block has-error" id="hint2" style="margin-left: 20px;"> <small class="help-block"></small>
												</span>
											</div>
											<div class="col-xs-12">
												<button type="submit" class="btn btn-primary btn-lg" style="margin-left: 20px; border-radius: 3px;">登录</button>
											</div>
											<div class="col-xs-12"></div>
										</form>
									</div>
									<!-- /.panel-body -->
									<div class="panel-body col-md-6">
										<div style="margin: 20px;">
											<p class="align-left" style="font-size: 16px; color: #666;">
												还没有帐号？<a href="./signup.aspx">立即注册</a>
											</p>
											<img src="./signin_files/01.png" width="250px;" class="hidden-xs">
										</div>
									</div>
									<!-- /.panel-body -->
								</div>
								<!-- /.panel-collapse -->
							</div>
							<!-- /.panel -->



						</div>
						<!-- /#content -->
				</div></section>
			</div>
			<!-- /.col-md-10 -->

		</div>
		<!-- /.row -->
	</div>
	<!-- /.container -->



	<footer class="col-md-12 footer-log">
		<div class="text-center">
			2015 oxcoder.com <a href="./contact-us.html">联系我们</a> <a href="http://jq.qq.com/?_wv=1027&k=eeKvVb" target="_blank">QQ交流群:77590762</a>
			<a href="http://www.mikecrm.com/f.php?t=7GdYKp" target="_blank">意见反馈</a>
			<script type="text/javascript">
			    var cnzz_protocol = (("https:" == document.location.protocol) ? " https://"
						: " http://");
			    document
						.write(unescape("%3Cspan id='cnzz_stat_icon_1253509620'%3E%3C/span%3E%3Cscript src='"
								+ cnzz_protocol
								+ "s23.cnzz.com/z_stat.php%3Fid%3D1253509620%26show%3Dpic' type='text/javascript'%3E%3C/script%3E"));
			</script><span id="cnzz_stat_icon_1253509620"><a href="http://www.cnzz.com/stat/website.php?web_id=1253509620" target="_blank" title="站长统计"><img border="0" hspace="0" vspace="0" src="./signin_files/pic.gif"></a></span><script src="./signin_files/z_stat.php" type="text/javascript"></script><script src="./signin_files/core.php" charset="utf-8" type="text/javascript"></script>
		</div>
	</footer>


	<!-- jQuery -->
	<script src="./signin_files/jquery-1.11.0.min.js"></script>


	<!-- Bootstrap core JavaScript -->
	<script src="./signin_files/bootstrap.min.js"></script>

	<!-- Bootstrap Switch -->
	<script src="./signin_files/bootstrap-switch.min.js"></script>

	<!-- Bootstrap Select -->
	<script src="./signin_files/bootstrap-select.min.js"></script>

	<!-- Bootstrap File -->
	<script src="./signin_files/bootstrap-filestyle.js"></script>

	<!-- Sparkline -->
	<script src="./signin_files/jquery.sparkline.min.js"></script>

	<!-- Summernote -->
	<script src="./signin_files/summernote.min.js"></script>


	<!-- Theme script -->
	<script src="./signin_files/script.js"></script>

	<script src="./signin_files/bootstrapValidator.js"></script>

	<script type="text/javascript">
	    $(document).ready(function () {
	        $('#defaultForm').bootstrapValidator({
	            message: 'This value is not valid',
	            fields: {
	                email: {
	                    container: '#hint1',
	                    validators: {
	                        notEmpty: {
	                            message: '请输入邮箱地址'
	                        },
	                        emailAddress: {
	                            message: '请输入正确的邮箱格式'
	                        }
	                    }
	                },
	                pwd: {
	                    container: '#hint1',
	                    validators: {
	                        notEmpty: {
	                            message: '请输入密码'
	                        }
	                    }
	                }
	            }
	        });
	    });
	</script>







</body></html>