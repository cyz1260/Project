<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<!--- basic page needs
    ================================================== -->
<meta charset="utf-8">
<title>奶油书店管理中心</title>
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
					<li><a href="<%=request.getContextPath()%>/user/findallorders?userid=${userid}" style="color: #F7c45f;">我的订单</a></li>
					<li class="has-children"><a href="" style="color: #F7c45f;">个人资料</a>
						<ul class="sub-menu">
							<li><a
								href="<%=request.getContextPath()%>/user/finduserinfo?userid=${userid}"
								style="color: #F7c45f;">查改个人资料</a></li>
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

		<div
			style="width: 900px; height: 750px; margin-left: 450px;">

			<h2
				style="background-color: black; margin-top: 50px; color: #F7c45f; text-align: center;">图书出售</h2>

			<form style="margin-left: 395px;"
				action="<%=request.getContextPath()%>/user/sellbooks?suserid=${userid}"
				method="post" enctype="multipart/form-data">

				<label>书籍名称:</label> <input style="height: 15px;" type="text" name="sbookname" required="required"/>
				<label>书籍价格:</label> <input style="height: 15px;" type="text" name="sbookprice" required="required"/>
				<label>书籍类别:</label>
				<select name="sbookcategory">
					<c:forEach items="${bookcategory}" var="bookcategory">
						<option value="${bookcategory.categoryname}">${bookcategory.categoryname}</option>
					</c:forEach>
				</select>
				<label>书籍描述:</label>
				<input style="height: 15px;" type="text" name="sbookdescription" required="required"/>
				<label>书籍图片:</label> <input style="height: 15px;" type="file" name="file" multiple="" required="required">
				<p>注意：必须上传两张图片</p>
				<input type="hidden" name="userid" value="${userid}">
				<input type="submit" value="上传" />
				</form>
						</div>


		<!-- footer
        ================================================== -->
		<footer class="s-footer">
			<div class="row">
				<div class="column large-full footer__content">
					<div class="footer__copyright"></div>
				</div>
			</div>

			<div class="go-top">
				<a class="smoothscroll" title="Back to Top" href="#top"></a>
			</div>
		</footer>

	</div>
	<!-- end s-wrap -->


	<!-- Java Script
    ================================================== -->
	<script src="<%=request.getContextPath()%>/resources/js/jquery-3.2.1.min.js"></script>
	<script src="<%=request.getContextPath()%>/resources/js/plugins.js"></script>
	<script src="<%=request.getContextPath()%>/resources/js/main_2.js"></script>
</html>
