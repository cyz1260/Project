<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>


</head>
<body>
	<nav class="navbar navbar-default probootstrap-navbar">
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#navbar-collapse"
					aria-expanded="false" aria-controls="navbar">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="javascripts:void(0);"
					title="uiCookies:Enlight">Enlight</a>
			</div>
			<div id="navbar-collapse" class="navbar-collapse collapse"
				style="margin-right: -80px">
				<ul class="nav navbar-nav navbar-right" style="margin-right: 20px">
					<li class="active"><a
						href="activitys/toshouye?userid=${userid}">首页</a></li>
					<li><a href="activitys/getactivitylist?userid=${user.userid}">图书商城</a></li>
					<li><a href="blog/toblog?userid=${user.userid}">读书社区</a></li>
					<li><a href="User/tozhu?userid=${user.userid}">个人中心</a></li>
					<li class="probootstra-cta-button last" style="margin-right: 25px;"><a
						style="" href="login&register.jsp" class="btn btn-primary">我要买书</a></li>

					<li style="margin-right: -20px;"><a href="User/gologin">
							<c:if test="${user==null}">登陆</c:if> <c:if test="${user!=null}">
								<a style="text-decoration: none; color: red; margin-top: -67px">你好，${user.username}</a>
							</c:if>
					</a></li>
					<li style="margin-right: -20px;"><a
						href="javascripts:void(0);">&nbsp;|&nbsp;</a></li>
					<li><a href="User/toaddOne">注册</a></li>
				</ul>
			</div>
		</div>
	</nav>
</body>
</html>
