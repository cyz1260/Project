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
    <script
		src="<%=request.getContextPath()%>/resources/js/jquery-3.2.1.min.js"></script>
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
			style="width: 1100px; height: 750px; margin-left: 350px; overflow: auto;">

			<h2
				style="background-color: black; margin-top: 50px; color: #F7c45f; text-align: center;">图书管理</h2>
			<span id="sbookname"></span>
			
			
			<table border="1" style="margin-top: 30px;">
				<tr>
					<td style="text-align: center; width: 300px;">图书图片</td>
					<td style="text-align: center;">图书名称</td>
					<td style="text-align: center;">图书价格</td>
					<td style="text-align: center;">图书状态</td>
					<td
						style="text-align: center; padding: 0em 0em; padding-left: -20px;">图书管理</td>
				</tr>
				
				<c:forEach items="${sbooklist}" var="bl">
					<tr>
						<td style="text-align: center; padding: 0px 0px;">
						<form style="margin-bottom: 0px;" action="<%=request.getContextPath()%>/user/updateonebook" onsubmit="return submit_update()">
						<img
							style="height: 70px; width: 70px;"
							src="<%=request.getContextPath()%>/${bl.sbookimga}" /> 
						<img
							style="height: 70px; width: 70px;"
							src="<%=request.getContextPath()%>/${bl.sbookimgb}"
							alt="用户未上传图片"/>
						</td>
						<td style="text-align: center; padding: 0px 0px;"><input style="padding: 0px 0px;margin-left:-13px; margin-bottom: 0px;height: 30px; line-height: 0px;width: 100px;text-align: center;" name="sbookname" value="${bl.sbookname}"></td>
						<td style="text-align: center; padding: 0px 0px;"><input style="padding: 0px 0px;margin-left:-13px; margin-bottom: 0px;height: 30px; line-height: 0px;width: 100px;text-align: center;" name="sbookprice" value="${bl.sbookprice}"></td>
						<td style="text-align: center; padding: 0px 0px;">${bl.sbookstate}</td>
												
						<td style="text-align: center; padding: 0px 0px;">
						<input type="hidden" name="sbookid" value="${bl.sbookid}">
						<input type="hidden" name="userid" value="${userid}">
						<input style="padding: 0px 0px;margin-left:20px; margin-bottom: 0px;height: 30px; line-height: 0px; float: left;" type="submit" value="修改">
						</form>
						
						<form style="margin-bottom: 0px;" action="<%=request.getContextPath()%>/user/deleteonebook" onsubmit="return submit_delete()">
						<input type="hidden" name="sbookid" value="${bl.sbookid}">
						<input type="hidden" name="userid" value="${userid}">
						<input style="padding: 0px 0px; margin-bottom: 0px;height: 30px; line-height: 0px; float: left;" type="submit" value="下架">
						</form>
						</td>
					</tr>
					<script type="text/javascript">
                    	function submit_update(){
                        	var mymessage=confirm("您确定修改此书信息吗？");
                            if(mymessage==true)
                            {
                            	return true;
                            }else{
                                return false;
                                 }
                        }
                   </script>
                   <script type="text/javascript">
                    	function submit_delete(){
                        	var mymessage=confirm("您确定下架此书吗？");
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
	<script src="<%=request.getContextPath()%>/resources/js/plugins.js"></script>
	<script src="<%=request.getContextPath()%>/resources/js/main_2.js"></script>
</html>
