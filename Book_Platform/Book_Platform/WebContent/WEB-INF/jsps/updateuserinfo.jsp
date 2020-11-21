<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<!--- basic page needs
    ================================================== -->
<meta charset="utf-8">
<title>奶油书店 个人资料</title>
<meta name="description" content="">
<meta name="author" content="">

<!-- mobile specific metas
    ================================================== -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- CSS
    ================================================== -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/base.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/vendor.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/main.css">

<!-- script
    ================================================== -->
<script src="<%=request.getContextPath()%>/resources/js/modernizr.js"></script>

</head>

<body>

	<div id="top" class="s-wrap site-wrapper">

		<!-- site header
        ================================================== -->
		<header class="s-header">

			<div class="header__top">
				<div class="header__logo">
					<h3 style="color: #F7c45f;">
						<b>个人中心 </b>
					</h3>
				</div>
			</div>
			<!-- end header__top -->

			<nav class="header__nav-wrap">

				<ul class="header__nav">
					<li class="active"><a
						href="<%=request.getContextPath()%>/user/gomain?userid=${user.userid}"
						style="color: #F7c45f;">首页</a></li>
					<li><a
						href="<%=request.getContextPath()%>/user/gosellbooks?userid=${user.userid}"
						style="color: #F7c45f;">图书出售</a></li>
					<li><a
						href="<%=request.getContextPath()%>/user/findusersellbooks?userid=${user.userid}"
						style="color: #F7c45f;">管理图书</a></li>
					<li><a href="" style="color: #F7c45f;">我的订单</a></li>
					<li class="has-children"><a href="" style="color: #F7c45f;">个人资料</a>
						<ul class="sub-menu">
							<li><a
								href="<%=request.getContextPath()%>/user/finduserinfo?userid=${user.userid}"
								style="color: #F7c45f;">修改个人资料</a></li>
							<li><a
								href="<%=request.getContextPath()%>/user/goupdatepassword?userid=${user.userid}"
								style="color: #F7c45f;">修改密码</a></li>
						</ul>
					<li><a
								href="<%=request.getContextPath()%>/user/manageaddress?userid=${user.userid}"
								style="color: #F7c45f;">收货地址</a></li>
				</ul>
				<!-- end header__nav -->
			</nav>
			<!-- end header__nav-wrap -->
		</header>
		<!-- end s-header -->

		<div class="s-content">

			<div class="masonry-wrap">

				<div class="masonry">
					<div class="bibb" style="margin-left: 100px">

						<form
							action="<%=request.getContextPath()%>/user/updateuserinfo?userid=${user.userid}"
							method="post">
							<br>
							用户名：<input type="text" value="${user.username}" name="username" required="required"><br>
							性别：<input type="text" value="${user.gender}" name="gender" required="required"><br>
						          手机号：<input type="text" value="${user.telnumber}" name="telnumber" required="required"><br>
							<input
								style="width: 120px; height: 55px; border: 1px solid; background: none; font-size: 20px; cursor: pointer; margin-top: 0px;"
								type="submit" value="修改">&nbsp;&nbsp;&nbsp;<a
								href="javascript:history.go(-1)">退回 </a>
						</form>
					</div>
				</div>
				<!-- end masonry -->

			</div>
			<!-- end masonry-wrap -->


		</div>
		<!-- end s-content -->

	</div>

</body>
<script
	src="<%=request.getContextPath()%>/resources/js/jquery-3.2.1.min.js"></script>
<script src="<%=request.getContextPath()%>/resources/js/plugins.js"></script>
<script src="<%=request.getContextPath()%>/resources/js/main_2.js"></script>
</html>
