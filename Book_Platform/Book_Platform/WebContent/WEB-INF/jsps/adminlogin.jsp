<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>海绵公益登录</title>
<!-- For-Mobile-Apps-and-Meta-Tags -->
<meta name="viewport" content="width=device-width, initial-scale=1" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="" />
<script type="application/x-javascript">
	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } 
</script>
<!-- //For-Mobile-Apps-and-Meta-Tags -->
<link href="<%=request.getContextPath()%>/resources/css/style1.css"
	type="text/css" rel="stylesheet" media="all">
<link
	href="<%=request.getContextPath()%>/resources/css/jquerysctipttop.css"
	rel="stylesheet" type="text/css">
</head>

<body
	style="background-image: url(../images/1_1.JPG); background-size: cover;">

	<section>

		<div class="stage">
			<div class="cbImage w3">
				<h3 style="font-family: SimHei">
					<b>登录</b>
				</h3>
				<form action="<%=request.getContextPath()%>/admin/adminlogin"
					method="post">
					<p style="color: #E19E57;" for="userid">
						账&nbsp;&nbsp;&nbsp;号：<input type="text" name="adminid" /> <br>
						<label for="password">密&nbsp;&nbsp;&nbsp;码：</label> <input
							name="adminpassword" type="password" />
					</p>
					<input name="Submits" type="submit" value="登录" />

				</form>

			</div>

			<div class="cbImage active signin agileits"
				style="background-image: url('../images/灰.jpg'); background-size: cover;">
				<h3 style="color: #E19E57; font-family: SimHei;">
					<br>
					<br>
					<br>
					<b>欢迎进入<br>奶油书店
					</b>
				</h3>

			</div>

			<div class="cbImage agileinfo"
				style="background-image: url(../images/1_1.png); background-size: cover;">
				<h3 style="font-family: SimHei">
					<b>管理</b>
				</h3>
				<h4 style="color: #E19E57; font-family: SimHei">
					<br>
					<br>
					<br>
					<br>
					<b>本页面用于管理员登录</b><br>
					<br>
					<br>
				</h4>
				<a href="<%=request.getContextPath()%>/user/toregister"
					style="color: #E19E57; font-family: SimHei"><b>管理用户、书籍</b></a>
			</div>
			<div class="clear"></div>
		</div>
		<div class="clear"></div>
		<div class="footer"></div>
	</section>
	<script
		src="<%=request.getContextPath()%>/resources/js/jquery-2.1.4.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/resources/js/coverflow-slideshow.js"></script>

</body>
</html>
