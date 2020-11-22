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

		<div style="width: 1230px; height: 750px; margin-left: 300px;">

			<div
				style="width: 400px; height: 740px; float: left; overflow: auto;">

				<h3
					style="background-color: black; margin-top: 50px; color: #F7c45f; text-align: center;">图书分类</h3>

				<table class="table-hover" border="1">
					<tr>
						<td style="padding: 0px 0px; text-align: center; height: 40px;">编号</td>
						<td style="padding: 0px 0px; text-align: center;">类别</td>
						<td style="padding: 0px 0px; text-align: center;">操作</td>
					</tr>
					<c:forEach items="${bookcategory}" var="bc">
						<tr>
							<td style="text-align: center; padding: 0px 0px;">${bc.categoryid}</td>
							<td style="text-align: center; padding: 0px 0px;">${bc.categoryname}</td>
							<td style="text-align: center; padding: 0px 0px;">
							<form style="margin-bottom: 0px;" action="<%=request.getContextPath()%>/admin/deletecategory" onsubmit="return submit_delete()">
							<input type="hidden" name="categoryid" value="${bc.categoryid}">
							<input style="padding: 0px 0px; margin-bottom: 0px;height: 30px; line-height: 0px;" type="submit" value="删除">
							</form>
							
							</td>
						</tr>
						
						<script type="text/javascript">
                                function submit_delete(){
                                    var mymessage=confirm("您确定删除该图书分类吗？");
                                    if(mymessage==true)
                                    {
                                        return true;
                                    }else 
                                        {
                                            return false;
                                        }
                                }
                        </script>
						
					</c:forEach>
					
				</table>

			</div>


			<div style="margin-left: 100px; width: 600px; height: 740px; float: left;">

				<h3 style="background-color: black; margin-top: 50px; color: #F7c45f; text-align: center;">添加图书分类</h3>
				<form style="margin-left: 260px; margin-top: 50px;"	action="<%=request.getContextPath()%>/admin/addcategory" method="post">
					图书类别: <input name="categoryname" type="text" required="required">
					<input type="submit" value="添加">
				</form>

			</div>



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
