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
						<b>个人中心</b>
					</h3>

				</div>

				<div class="header__search">

					<form role="search" method="get" class="header__search-form"
						action="#">
						<label> <span class="hide-content">Search for:</span> <input
							type="search" class="header__search-field"
							placeholder="Type Keywords" value="" name="s" title="Search for:"
							autocomplete="off">
						</label> <input type="submit" class="header__search-submit" value="Search">
					</form>

					<a href="#0" title="Close Search" class="header__search-close">Close</a>

				</div>
				<!-- end header__search -->

				<!-- toggles -->
				<a href="#0" class="header__search-trigger"></a> <a href="#0"
					class="header__menu-toggle"><span>Menu</span></a>

			</div>
			<!-- end header__top -->

			<nav class="header__nav-wrap">

				<ul class="header__nav">
					<li class="active"><a
						href="<%=request.getContextPath()%>/user/gomain?userid=${userid}"
						style="color: #F7c45f;">首页</a></li>
					<li><a
						href="<%=request.getContextPath()%>/user/gosellbooks?userid=${userid}"
						style="color: #F7c45f;">图书出售</a></li>
					<li><a
						href="<%=request.getContextPath()%>/user/findusersellbooks?userid=${userid}"
						style="color: #F7c45f;">管理图书</a></li>
					<li><a href="" style="color: #F7c45f;">我的订单</a></li>
					<li class="has-children"><a
						href="/tozhu?userid=${user.userid}" title=""
						style="color: #F7c45f;">个人资料</a>
						<ul class="sub-menu">
							<li><a
								href="<%=request.getContextPath()%>/user/finduserinfo?userid=${userid}"
								style="color: #F7c45f;">修改个人资料</a></li>
							<li><a
								href="<%=request.getContextPath()%>/user/goupdatepassword?userid=${userid}"
								style="color: #F7c45f;">修改密码</a></li>
						</ul>
					<li><a
								href="<%=request.getContextPath()%>/user/manageaddress?userid=${userid}"
								style="color: #F7c45f;">收货地址</a></li>
				</ul>
				<!-- end header__nav -->



			</nav>
			<!-- end header__nav-wrap -->




		</header>
		<!-- end s-header -->

		<body>
			<div class="s-content">

				<div class="masonry-wrap">

					<div class="masonry">
						<div class="bibb" style="margin-left: 100px">
							<form
								action="<%=request.getContextPath()%>/user/updateuserpassword?userid=${userid}"
								method="post">
								<br>请输入旧密码：<input name="userpassword" type="password" required="required"/><br>
								<br>请输入新密码：<input name="usernewpassword" type="password" required="required"/><br>
								<br>请确认新密码：<input name="confirmpassword" type="password" required="required"/><br>
								<input style="font-size: 20px" name="Submits" type="submit"
									value="确认" />
								</from>
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