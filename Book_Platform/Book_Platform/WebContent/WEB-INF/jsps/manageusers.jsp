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
<style>
.table-hover tbody tr:hover {
	background-color: rgba(0, 0, 0, .075)
}
</style>
</head>

<body>

	<div id="top" class="s-wrap site-wrapper">

		<!-- site header
        ================================================== -->
		<header class="s-header">

			<div class="header__top">
				<div class="header__logo">
					<h3 style="color: #F7c45f;">
						<b>管理中心</b>
					</h3>
				</div>

			</div>
			<!-- end header__top -->

			<nav class="header__nav-wrap">

				<ul class="header__nav">
					<li class="active"><a href="<%=request.getContextPath()%>/"
						style="color: #F7c45f;">注销</a></li>
					<li><a
						href="<%=request.getContextPath()%>/admin/selectcategory"
						style="color: #F7c45f;">图书分类</a></li>
					<li><a
						href="<%=request.getContextPath()%>/admin/selectallusers"
						style="color: #F7c45f;">管理用户</a></li>
					<li><a
						href="<%=request.getContextPath()%>/admin/checksbooklist"
						style="color: #F7c45f;">管理图书</a></li>

				</ul>
				<!-- end header__nav -->
			</nav>
			<!-- end header__nav-wrap -->
		</header>
		<!-- end s-header -->

		<div
			style="width: 900px; height: 750px; margin-left: 450px; overflow: auto;">

			<h2
				style="background-color: black; margin-top: 50px; color: #F7c45f; text-align: center;">用户管理</h2>

			<table border="1" style="margin-top: 30px;" class="table-hover">
				<tr>
					<td style="text-align: center; padding-left: 20px;">用户账号</td>
					<td style="text-align: center;">用户名称</td>
					<td style="text-align: center;">用户性别</td>
					<td style="text-align: center;">用户电话</td>
					<td style="padding-left: 40px;">权限管理</td>
				</tr>
				<c:forEach items="${users}" var="users">
					<tr>
						<td style="text-align: center; padding: 0px 0px;">${users.userid}</td>
						<td style="text-align: center; padding: 0px 0px;">${users.username}</td>
						<td style="text-align: center; padding: 0px 0px;">${users.gender}</td>
						<td style="text-align: center; padding: 0px 0px;">${users.telnumber}</td>
						<td style="text-align: center; padding: 0px 0px;">
						<form style="margin-bottom: 0px;" action="<%=request.getContextPath()%>/admin/updateuserstate" onsubmit="return submit_ban()">
						<input type="hidden" name="userid" value="${users.userid}">
						<input style="padding: 0px 0px; margin-bottom: 0px;height: 30px; line-height: 0px;" type="submit" value="${users.userstate}">
						</form>
						</td>
					</tr>
					<script type="text/javascript">
                    	function submit_ban(){
                        	var mymessage=confirm("您确定禁用该用户吗？");
                            if(mymessage==true)
                            {
                            	return true;
                            }else{
                                return false;
                                 }
                        }
                   </script>
				</c:forEach>
			</table>



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
	<script
		src="<%=request.getContextPath()%>/resources/js/jquery-3.2.1.min.js"></script>
	<script src="<%=request.getContextPath()%>/resources/js/plugins.js"></script>
	<script src="<%=request.getContextPath()%>/resources/js/main_2.js"></script>
</html>
