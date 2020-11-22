<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/bootstrap.min.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/bookshop.css">
<script
	src="<%=request.getContextPath()%>/resources/js/jquery-3.4.1.min.js"></script>
<script
	src="<%=request.getContextPath()%>/resources/js/bootstrap.min.js"></script>
</head>
<body>

	<div class="bookshopmain">

		<div class="container">
			<a href="<%=request.getContextPath()%>/user/gomain?userid=${userid}"><h2 class="h2color">奶油书店</h2></a>
			<div class="searchbook">
				<form action="<%=request.getContextPath()%>/bookshop/searchbooks">
					<input type="hidden" name="userid" value="${userid}">
					<input class="form-control" style="width: 400px; float: left;"
						placeholder="搜索图书.." type="text" name="sbookname" required="required"> 
						<input class="btn btn-warning" type="submit" value="搜索">
				</form>
			</div>
			<!-- Nav tabs -->
			<div class="bookshopcontainer">
				<ul class="nav nav-tabs" role="tablist" style="margin-top: 20px;">
					<li class="nav-item"><a class="nav-link"
						style="color: #F7c45f; font-size: 16px; font-weight: bold;"
						href="<%=request.getContextPath()%>/bookshop/gobookshop?&userid=${userid}">图书推荐</a>
					</li>

					<c:forEach items="${bookcategorylist}" var="bcl">
						<li class="nav-item"><a class="nav-link"
							style="color: #F7c45f; font-size: 16px; font-weight: bold;"
							href="<%=request.getContextPath()%>/bookshop/selectbybookcategory?sbookcategory=${bcl.categoryname}&userid=${userid}">${bcl.categoryname}</a>
						</li>
					</c:forEach>
				</ul>

				<!-- Tab panes -->
				<div class="tab-content" style="height: 700px;">

					<div id="home" class="container tab-pane active">
						<br>

						<c:forEach items="${sbooklist}" var="sbooklist">
							<div class="border border-warning"
								style="width: 345px; height: 250px; float: left; margin-left: 10px;">
								<table
									style="margin-left: 2px; margin-top: 3px; border-color: #F7c45f;"
									border="1">
									<tr style="height: 40px;">
										<td style="text-align: center; width: 150px;" rowspan="4"><img
											style="width: 145px; height: 200px;"
											src="<%=request.getContextPath()%>/${sbooklist.sbookimga}" /></td>
										<td style="text-align: center; width: 180px;">${sbooklist.sbookname}</td>
									</tr>
									<tr style="height: 120px;">
										<td><textarea rows="5"
												style="text-align: center; border: none; width: 183px; height: 110px;"
												readonly>${sbooklist.sbookdescription}
	                            </textarea></td>
									</tr>
									<tr style="text-align: center; height: 40px;">
										<td>${sbooklist.sbookprice}</td>
									</tr>
									<tr style="text-align: center; height: 40px;">
										<td><c:if test="${userid !=''&& userid !=null}">
												<form
													action="<%=request.getContextPath()%>/bookshop/buybook">
													<input name="userid" type="hidden" value="${userid}">
													<input name="sbookid" type="hidden" value="${sbooklist.sbookid}">
													<input class="btn btn-outline-success" type="submit"
														value="购买">
												</form>
											</c:if> <c:if test="${userid == null || userid == ''}">
												<form action="<%=request.getContextPath()%>/user/gologin">
													<input class="btn btn-outline-success" type="submit"
														value="购买">
												</form>
											</c:if></td>
									</tr>
								</table>

							</div>
						</c:forEach>

					</div>

				</div>

			</div>
		</div>

	</div>


</body>
</html>