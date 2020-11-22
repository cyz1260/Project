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
				style="background-color: black; margin-top: 50px; color: #F7c45f; text-align: center;">审核图书</h2>

			<c:forEach items="${sbooklist}" var="bl" begin="0" end="0">
				<table border="1" style="margin-top: 30px; padding: 0px;">
					<tr>
						<td style="text-align: center; width: 400px;">图书图片</td>
						<td style="text-align: center;">图书名称</td>
						<td style="text-align: center;">图书价格</td>
						<td style="text-align: center;">图书描述</td>
					</tr>

					<tr>
						<td style="text-align: center; height: 300px;" rowspan="2"><img
							style="height: 200px; width: 200px;"
							src="<%=request.getContextPath()%>/${bl.sbookimga}" /> <img
							style="height: 200px; width: 200px;"
							src="<%=request.getContextPath()%>/${bl.sbookimgb}" /></td>
						<td style="text-align: center;">${bl.sbookname}</td>
						<td style="text-align: center;">${bl.sbookprice}</td>
						<td
							style="text-align: center; padding-top: 0em; padding-bottom: 0em; padding-left: 10px;">
							<textarea rows="5"
								style="border: none; margin-top: -40px; margin-bottom: -40px; text-align: center; width: 183px; min-height: 10em"
								readonly>${bl.sbookdescription}</textarea>
						</td>
					</tr>

					<tr>
						<td style="text-align: center; padding: 0px;" colspan="3">

							<form style="float: left; margin-left: 100px;"
								action="<%=request.getContextPath()%>/admin/updatesuccess" onsubmit="return submit_pass()">
								<input type="hidden" name="sbookid" value="${bl.sbookid}">
								<input type="submit" value="通过">
							</form>
							<form action="<%=request.getContextPath()%>/admin/updatefail" onsubmit="return submit_back()">
								<input type="hidden" name="sbookid" value="${bl.sbookid}">
								<input type="submit" value="驳回">
							</form>

						</td>
					</tr>

				</table>
				<script type="text/javascript">
                    	function submit_pass(){
                        	var mymessage=confirm("您确定通过该书籍的审核吗？");
                            if(mymessage==true)
                            {
                            	return true;
                            }else{
                                return false;
                                 }
                        }
                   </script>
                   <script type="text/javascript">
                    	function submit_back(){
                        	var mymessage=confirm("您确定将此图书驳回用户吗？");
                            if(mymessage==true)
                            {
                            	return true;
                            }else{
                                return false;
                                 }
                        }
                   </script>
			</c:forEach>



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
