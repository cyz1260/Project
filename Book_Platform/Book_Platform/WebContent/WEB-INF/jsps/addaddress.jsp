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
<script src="<%=request.getContextPath()%>/resources/js/jquery-3.2.1.min.js"></script>

<!-- script
    ================================================== -->
<script src="<%=request.getContextPath()%>/resources/js/modernizr.js"></script>

<style>
.table-hover tbody tr:hover {
	background-color: rgba(0, 0, 0, .075)
}
</style>

<script type="text/javascript">
	$(document).ready(function () {
	    $("#btn_addaddress").click(function () {

			var ausername =$("#input_ausername").val();
			var ausertel =$("#input_ausertel").val();
			var address =$("#input_address").val();
			if(ausername !="" && ausertel !="" && address !=""){
		    
	        $.ajax({
            	url: '<%=request.getContextPath()%>/user2/addaddress',
                type: 'GET', 
                data: $("#addaddress_form").serialize(), 
                success: function (data) {
                	alert(data);
                	window.location.reload();
                    },
                error: function () { 
                    alert("出现错误!");
                    }
                    });
			}

			else{
				alert("不能含有空字段！");
				}
                });
            });
</script>
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
			style="width: 900px; height: 750px; margin-left: 450px; overflow: auto;">

			<h2
				style="background-color: black; margin-top: 50px; color: #F7c45f; text-align: center;">地址管理</h2>


		<a onclick="show()"
				style="font-size: 18px; margin-left: 405px; cursor: pointer;">+新建地址</a>
			<div id="addaddress"
				style="width: 300px; height: 300px; display: none; margin-left: 380px;">
				<form id="addaddress_form" action="">
					<input name="auserid" type="hidden" value="${userid}">
					 收件人:<input id="input_ausername" style="margin-bottom: 0px; padding: 0px 0px; height: 30px;"name="ausername" type="text"> 
					联系方式:<input id="input_ausertel" style="margin-bottom: 0px; padding: 0px 0px; height: 30px;"name="ausertel" type="text">
					 收货地址:<input id="input_address" style="margin-bottom: 0px; padding: 0px 0px; height: 30px;"name="address" type="text"><br>
					<button id="btn_addaddress" type="button">提交</button>
					<button type="button" onclick="notshow()">关闭</button>
				</form>

			</div>
			<table class="table-hover" border="1" style="margin-top: 5px;">
				<tr>
					<td style="text-align: center; padding: 0px 0px; width: 180px;">收件人</td>
					<td style="text-align: center; padding: 0px 0px; width: 180px;">联系方式</td>
					<td style="text-align: center; padding: 0px 0px;">收件地址</td>
					<td style="text-align: center; padding: 0px 0px; width: 220px;">地址管理</td>
				</tr>
				<c:forEach items="${useraddress}" var="ua">
					<tr>
						<form style="margin-bottom: 0px;" action="<%=request.getContextPath()%>/user/updateuseraddress" onsubmit="return submit_update()">
						<td style="text-align: center; padding: 0px 0px;"><input style="padding: 0px 0px;margin-left:0px; margin-bottom: 0px;height: 30px; line-height: 0px;width: 100px;text-align: center;" name="ausername" value="${ua.ausername}"></td>
						<td style="text-align: center; padding: 0px 0px;"><input style="padding: 0px 0px;margin-left:0px; margin-bottom: 0px;height: 30px; line-height: 0px;width: 120px;text-align: center;" name="ausertel" value="${ua.ausertel}"></td>
						<td style="text-align: center; padding: 0px 0px;"><input style="padding: 0px 0px;margin-left:0px; margin-bottom: 0px;height: 30px; line-height: 0px;width: 280px;text-align: center;" name="address" value="${ua.address}"></td>
												
						<td style="text-align: center; padding: 0px 0px;">
						<input type="hidden" name="auseraddressid" value="${ua.auseraddressid}">
						<input type="hidden" name="userid" value="${userid}">
						<input style="padding: 0px 0px;margin-left:70px; margin-bottom: 0px;height: 30px; line-height: 0px; float: left;" type="submit" value="修改">
						</form>
						
						<form style="margin-bottom: 0px;" action="<%=request.getContextPath()%>/user/deleteuseraddress" onsubmit="return submit_delete()">
						<input type="hidden" name="auseraddressid" value="${ua.auseraddressid}">
						<input type="hidden" name="userid" value="${userid}">
						<input style="padding: 0px 0px; margin-bottom: 0px;height: 30px; line-height: 0px; float: left;" type="submit" value="删除">
						</form>
						</td>
					</tr>
					<script type="text/javascript">
                    	function submit_update(){
                        	var mymessage=confirm("您确定修改此地址信息吗？");
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
                        	var mymessage=confirm("您确定删除此地址吗？");
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

			<script type="text/javascript">
				function show() {
					/* 显示 */
					document.getElementById("addaddress").style.display = "block";
				}
				function notshow() {
					/* 隐藏 */
					document.getElementById("addaddress").style.display = "none";
				}
			</script>
		
			
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
