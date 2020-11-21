<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<!--- basic page needs
    ================================================== -->
<meta charset="utf-8">
<title>奶油书店个人中心</title>
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

		<div class="s-content">

			<div class="masonry-wrap">

				<div class="masonry">

					<div class="grid-sizer"></div>

					<article class="masonry__brick entry format-standard animate-this">

						<div class="entry__thumb">

							<img src="<%=request.getContextPath()%>/images/8.png"
								style="width: 500px" srcset="images/8.png 1x, images/8.png 2x"
								alt="">

						</div>

						<div class="entry__text">
							<div class="entry__header">

								<h2 class="entry__title">
									<a href="">
								</h2>
							</div>
							<div class="entry__excerpt">
								<p>
									享受读书，<br>永远收集善良，汇聚能量。
								</p>
							</div>
						</div>

					</article>
					<!-- end article -->

					<article class="masonry__brick entry format-quote animate-this">

						<div class="entry__thumb">
							<blockquote>
								<p>
									与时间赛跑，<br>为生命加油。<br>回望加入读书以来的分享接力，感谢你的每一次参与！
								</p>

								<cite>书香传递</cite>
							</blockquote>
						</div>

					</article>
					<!-- end article -->

					<article class="masonry__brick entry format-standard animate-this">

						<div class="entry__thumb">
							<a href=" " class="entry__thumb-link"> <img
								src="<%=request.getContextPath()%>/images/3_1.png"
								style="width: 500px"
								srcset="images/3_1.png 1x, images/3_1.png 2x" alt="">
							</a>
						</div>

						<div class="entry__text">
							<div class="entry__header">
								<h2 class="entry__title">
									<a href="">我参与的读书活动</a>
								</h2>

							</div>
							<div class="entry__excerpt">
								<p>
									我的读书路程<br>致敬内心善良<br>希望每一天我们都能在读书路上相遇，一起努力，一起前行…
								</p>
							</div>
						</div>

					</article>
					<!-- end article -->


					<article class="masonry__brick entry format-standard animate-this">

						<div class="entry__thumb">
							<a href=" " class="entry__thumb-link"> <img
								src="<%=request.getContextPath()%>/images/5.png"
								style="width: 500px" srcset="images/5.png 1x, images/5.png 2x"
								alt="">
							</a>
						</div>

						<div class="entry__text">
							<div class="entry__header">
								<h2 class="entry__title">
									<a href="">我的读书日志</a>
								</h2>
								<div class="entry__meta">
									<span class="entry__meta-cat"> 想把暖心事讲给你听 </span>

								</div>
							</div>
							<div class="entry__excerpt">
								<p>分享书中背后的温暖故事，讲述参与读书活动的经历和感悟，助力书香传播。凝聚希望，温暖前行…</p>
							</div>
						</div>

					</article>
					<!-- end article -->


				</div>
				<!-- end masonry -->

			</div>
			<!-- end masonry-wrap -->


		</div>
		<!-- end s-content -->


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
