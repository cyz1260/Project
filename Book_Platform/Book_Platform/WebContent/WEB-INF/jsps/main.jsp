<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title></title>

<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/styles-merged.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/style.min.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/custom.css">
<script src="<%=request.getContextPath()%>/resources/js/scripts.min.js"></script>
<script src="<%=request.getContextPath()%>/resources/js/main.min.js"></script>
<script src="<%=request.getContextPath()%>/resources/js/custom.js"></script>
</head>
<body>
	<%--头部--%>
	<%--<jsp:include page="header.jsp"></jsp:include>--%>
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
				
			</div>
			<div id="navbar-collapse" class="navbar-collapse collapse"
				style="margin-right: -80px">
				<ul class="nav navbar-nav navbar-right" style="margin-right: 20px">
					<li class="probootstra-cta-button last"><a
						class="btn btn-primary"
						href="<%=request.getContextPath()%>/bookshop/gobookshop?userid=${user.userid}">图书商城</a></li>
					<c:if test="${user.userid != null}">
						<li><a
							href="<%=request.getContextPath()%>/user/gouserindex?userid=${user.userid}">个人中心</a></li>
					</c:if>
					<c:if test="${user.userid == null}">
						<li style="margin-right: -20px;"><a
							href="<%=request.getContextPath()%>/user/gologin">登陆</a></li>
						<li style="margin-right: -20px;"><a
							href="javascripts:void(0);">&nbsp;|&nbsp;</a></li>
						<li><a href="<%=request.getContextPath()%>/user/gologin">注册</a></li>
					</c:if>
					<c:if test="${user.userid != null}">
						<li class="active"><a href="<%=request.getContextPath()%>/">注销</a></li>
					</c:if>
				</ul>
			</div>
		</div>
	</nav>
	<%--主页图片--%>
	<section class="probootstrap-hero"
		style="background-image: url(<%=request.getContextPath()%>/resources/img/hero_bg_bw_1.jpg)"
		data-stellar-background-ratio="0.5">

		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="probootstrap-slider-text probootstrap-animate"
						data-animate-effect="fadeIn">
						<h1
							style="margin-top: -30px; font-size: 70px; font-family: Broadway;"
							class="probootstrap-heading probootstrap-animate">BOOK&nbsp;TRADING</h1>
						<h6 style="font-size: 25px; color: #ffffff; margin-top: 130px;">
							<span style="margin: 10px; margin-right: 50px;">万般皆下品，唯有读书高</span>
						</h6>
						<p style="margin-top: 60px;" class="probootstrap-animate">
							<a href="User/gologin" class="btn btn-primary btn-lg">立即买书</a>
						</p>
					</div>
				</div>
			</div>
		</div>
		<div class="probootstrap-service-intro">
			<div class="container">
				<div class="probootstrap-service-intro-flex" style="height: 180px;">
					<div class="item probootstrap-animate" data-animate-effect="fadeIn">

						<div class="text">
							<h2>购买书籍</h2>
							<br />
							<p>书中自有黄金屋,书中自有颜如玉</p>
							<br>
							<p>
								<a href="activitys/getactivitylist">了解更多</a>
							</p>
						</div>
					</div>
					<div class="item probootstrap-animate" data-animate-effect="fadeIn">

						<div class="text">
							<h2>申请售后</h2>
							<br />
							<p>读书之乐何处寻，数点梅花天地间</p>
							<br>
							<p>
								<a href="activitys/getactivitylist">了解更多</a>
							</p>

						</div>
					</div>
					<div class="item probootstrap-animate" data-animate-effect="fadeIn">

						<div class="text">
							<h2>读书社区</h2>
							<br />
							<p>书卷多情似故人，晨昏忧乐每相亲</p>
							<br>
							<p>
								<a href="loggerlist.jsp">了解更多</a>
							</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<%--最新活动--%>
	<section class="probootstrap-section" style="background-color: #efe5c6">
		<div class="container">
			<div class="row">
				<div
					class="col-md-12 text-center section-heading probootstrap-animate"
					data-animate-effect="fadeIn">
					<h2>书店支持线上商城，门店订购</h2>
					<p class="lead"></p>
				</div>
			</div>

			<div class="row">
				<div class="col-md-12">
					<p>
						<a href="activitylist.jsp.html"></a>
					</p>
				</div>
			</div>
		</div>
	</section>


	<%----%>
	<section
		class="probootstrap-section probootstrap-bg probootstrap-section-dark"
		style="background-image: url(../resources/img/backgroud.jpg); top: -50px;"
		data-stellar-background-ratio="0.5">
		<div class="container">
			<div class="row">
				<div
					class="col-md-12 text-center section-heading probootstrap-animate"
					data-animate-effect="fadeIn">
					<h2>热门书籍</h2>
					<br>
					<p style="font-size: 20px; color: white;">查看更多</p>
					<p class="lead"></p>
				</div>
			</div>
			<div class="row">

				<div class="col-md-3">
					<div class="probootstrap-donors text-center probootstrap-animate">
						<figure class="media" style="height: 195px;">
							<img src="<%=request.getContextPath()%>/resources/img/book_1.jpg"
								class="img-responsive">
						</figure>
						<div class="text">
							<h3>Old Man And The Sea</h3>
							<br>
							<p class="donated">
								<span class="author">海明威</span>
							</p>
						</div>
					</div>
				</div>
				<div class="col-md-3">
					<div class="probootstrap-donors text-center probootstrap-animate">
						<figure class="media" style="height: 195px;">
							<img src="<%=request.getContextPath()%>/resources/img/book_2.jpg"
								class="img-responsive">
						</figure>
						<div class="text">
							<h3>Doves Disappeared</h3>
							<br>
							<p class="donated">
								<span class="author">索菲</span>
							</p>
						</div>
					</div>
				</div>
				<div class="col-md-3">
					<div class="probootstrap-donors text-center probootstrap-animate">
						<figure class="media" style="height: 195px;">
							<img src="<%=request.getContextPath()%>/resources/img/book_3.jpg"
								class="img-responsive">
						</figure>
						<div class="text">
							<h3>Best New Poets</h3>
							<br>
							<p class="donated">
								<span class="author">布伦达</span>
							</p>
						</div>
					</div>
				</div>
				<div class="col-md-3">
					<div class="probootstrap-donors text-center probootstrap-animate">
						<figure class="media" style="height: 195px;">
							<img src="<%=request.getContextPath()%>/resources/img/book_4.jpg"
								class="img-responsive">
						</figure>
						<div class="text">
							<h3>Peter and The Wolf</h3>
							<br>
							<p class="donated">
								<span class="author">普罗柯菲耶夫</span>
							</p>
						</div>
					</div>
				</div>

			</div>
		</div>
	</section>
	<%----%>
	<section class="probootstrap-section probootstrap-section-colored"
		style="margin-top: -50px; height: 600px;">
		<div class="container">
			<div class="row">
				<div
					class="col-md-12 text-center section-heading probootstrap-animate">
					<h2>精彩片段欣赏</h2>
					<p class="lead">生如夏花之绚烂，死如秋叶之静美。</p>
				</div>
			</div>
			<div class="row">
				<div class="col-md-12 probootstrap-animate">
					<div
						class="owl-carousel owl-carousel-testimony owl-carousel-fullwidth">
						<div class="item">

							<div class="probootstrap-testimony-wrap text-center">
								<figure>
									<img src="<%=request.getContextPath()%>/resources/img/b1.jpg"
										alt="Free Bootstrap Template by sc.chinaz.com">
								</figure>
								<blockquote class="quote">
									&ldquo;它与空气混同为一。在建筑艺术时代，思想曾比作大山，强有力地紧紧握住一个时代。&rdquo; <cite class="author"> &mdash; <span>Mike
											Fisher</span></cite>
								</blockquote>
							</div>

						</div>
						<div class="item">
							<div class="probootstrap-testimony-wrap text-center">
								<figure>
									<img src="<%=request.getContextPath()%>/resources/img/b2.jpg"
										alt="Free Bootstrap Template by sc.chinaz.com">
								</figure>
								<blockquote class="quote">
									&ldquo;我并不愿意你受的苦比我受的还大，希斯克利夫。我只愿我们永远不分离:如果我有一句话使你今后难过，想想我在地下也感到一样的难过，看在我自己的份上，饶恕我吧!&rdquo; <cite class="author"> &mdash;<span>Jorge
											Smith</span></cite>
								</blockquote>
							</div>
						</div>
						<div class="item">
							<div class="probootstrap-testimony-wrap text-center">
								<figure>
									<img src="<%=request.getContextPath()%>/resources/img/b3.jpg"
										alt="Free Bootstrap Template by sc.chinaz.com">
								</figure>
								<blockquote class="quote">
									&ldquo;它只是拉着小船向浩渺的海面缓缓游去。整个白天在奇怪的旅行中度过了。同时，他对鱼也产生了奇怪的感情，他欣赏鱼的勇气和聪明。夜里，老人很疲乏，他希望自己能睡上一会儿。&rdquo; <cite class="author">&mdash; <span>Brandon
											White</span></cite>
								</blockquote>
							</div>
						</div>

					</div>
				</div>
			</div>
		</div>
	</section>
	<%--aaa--%>
	
	<section class="probootstrap-half" >
		<div class="image" style="background-color: black;">
			<div class="image-bg">
				<img
					src="<%=request.getContextPath()%>/resources/img/img_sq_5_big.jpg">
			</div>
		</div>
		<div class="text">
			<div class="probootstrap-animate"
				style="margin-left: -20px; margin-top: -20px;">
				<h3>网购流程</h3>
				<p>注册会员：包括填写收件人，地址，电话，邮编，邮箱等。</p>

				<p>※选购图书：将图书加入购物车，并选择付款方式和邮寄方式。</p>

				<p>※提交订单：按提交按钮提交,生成一张预订单,等待确认邮费及库存。</p>
				<p>※确认订单：我们会在24小时之内确认邮费,周末及法定假日顺延。</p>
				<p>※支付订单: 请您及时查看订单状态, ,如果订单显示被确认后,请支付货款。</p>
				<p>※订单发货: 我们收到货款后,会及时给您发货, 在网上填写快递单号,追踪包裹状态.</p>
				<br>
				<br>
				<p>
					<a href="activitylist.jsp" class="btn btn-primary btn-lg">了解更多</a>
				</p>
			</div>
		</div>
	</section>
	<%--尾部--%>
	<jsp:include page="footer.jsp"></jsp:include>

</body>
</html>