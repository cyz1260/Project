<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>订单</title>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/bootstrap.min.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/bookshop.css">
<script
	src="<%=request.getContextPath()%>/resources/js/jquery-3.4.1.min.js"></script>
<script
	src="<%=request.getContextPath()%>/resources/js/bootstrap.min.js"></script>
	
	
<script type="text/javascript">
	$(document).ready(function () {
	    $("#btn_selectaddress").click(function () {
	        $.ajax({
            	url: '<%=request.getContextPath()%>/user2/selectuseraddress',
                type: 'GET', 
                data: {"auseraddressid": $("#select_selectaddress").val()},
                success: function (userAddress) {
                	$("#input_ausername").val(userAddress.ausername);
                	$("#input_ausertel").val(userAddress.ausertel);
                	$("#input_address").val(userAddress.address);
                    },
                error: function () { 
                    alert("出现错误!");
                    }
                    });
                });
            });
</script>
	
</head>
<body>

	<div class="bookshopmain">

		<div class="container">
			<h2 class="h2color">奶油书店</h2>
			<div class="searchbook">
				<form action="">
					<input class="form-control" style="width: 400px; float: left;"
						placeholder="搜索图书.." type="text" name=""> <input
						class="btn btn-warning" type="submit" value="搜索">
				</form>
			</div>
			<!-- Nav tabs -->
			<div class="bookshopcontainer">
				<ul class="nav nav-tabs" role="tablist" style="margin-top: 20px;">
					<li class="nav-item" style="margin-left: 480px;"><a
						class="nav-link active" data-toggle="tab" href="#home"
						style="color: #F7c45f; font-size: 20px; font-weight: bold;">订单提交</a>
					</li>

				</ul>

				<!-- Tab panes -->
				<div class="tab-content" style="height: 600px;">

					<div id="home" class="container tab-pane active">
						<br>

						<div class="border border-warning"
							style="width: 500px; height: 550px; float: left; margin-left: 10px;">

							<label class="form-check-label"
								style="float: left; margin-top: 60px; margin-left: 70px;">图书展示：</label>
							<img
								style="width: 250px; height: 250px; margin-left: 50px; margin-top: 10px;"
								src="<%=request.getContextPath()%>/${sbooklist.sbookimga}" /> <br>
							<label class="form-check-label"
								style="float: left; margin-top: 15px; margin-left: 70px;">图书名称：</label>
							<input class="form-control"
								style="background: #FFF; width: 250px; margin-left: 200px; margin-top: 10px;"
								value="${sbooklist.sbookname}" readonly> <label
								class="form-check-label"
								style="float: left; margin-top: 15px; margin-left: 70px;">图书价格：</label>
							<input class="form-control"
								style="background: #FFF; width: 250px; margin-left: 200px; margin-top: 10px;"
								value="${sbooklist.sbookprice}" readonly> <label
								class="form-check-label"
								style="float: left; margin-top: 60px; margin-left: 70px;">图书描述：</label>
							<textarea class="form-control" rows="5"
								style="width: 250px; margin-left: 200px; margin-top: 10px; background: #FFF;"
								readonly>${sbooklist.sbookdescription}</textarea>


						</div>


						<div class="border border-warning"
							style="width: 500px; height: 550px; float: left; margin-left: 20px;">
							
							<form action="">
							
							<label class="form-check-label"
									style="float: left; margin-top: 110px; margin-left: 40px;">地址速填：</label>
									
									 <select id="select_selectaddress" class="form-control" style="font-size:10px;overflow:auto; width: 230px;margin-top:100px; margin-left: 50px;float: left;">
								        <c:forEach items="${useraddress}" var="useraddress">
								        <option style="font-size: 3px;" value="${useraddress.auseraddressid}">${useraddress.ausername}+${useraddress.ausertel}+${useraddress.address}</option>
								        </c:forEach>
								      </select>
								      
								      <button id="btn_selectaddress" class="btn btn-outline-success" type="button" style="float: left;margin-top: 100px;">确认</button>
							</form>

							<form style="margin-top: 170px;" action="<%=request.getContextPath()%>/bookshop/buyorder">
							
								<input type="hidden" name="ouserid" value="${userid}">
								<input type="hidden" name="obookname" value="${sbooklist.sbookname}">
								<input type="hidden" name="obookprice" value="${sbooklist.sbookprice}">
								<input type="hidden" name="obookdescription" value="${sbooklist.sbookdescription}">
								<input type="hidden" name="obookimga" value="${sbooklist.sbookimga}">

								<label class="form-check-label"
									style="float: left; margin-top: 5px; margin-left: 40px;">收件人名：</label>
								<input id="input_ausername" class="form-control"
									style="background: #FFF; width: 290px; margin-left: 170px; margin-top: 150px;"
									type="text" name="ousername" value="" required="required"><br> <label
									class="form-check-label"
									style="float: left; margin-top: 15px; margin-left: 40px;">联系方式：</label>
								<input id="input_ausertel" class="form-control"
									style="background: #FFF; width: 290px; margin-left: 170px; margin-top: 10px;"
									type="text" name="ousertel" value="" required="required"><br> <label
									class="form-check-label"
									style="float: left; margin-top: 15px; margin-left: 40px;">收货地址：</label>
								<input id="input_address" class="form-control"
									style="background: #FFF; width: 290px; margin-left: 170px; margin-top: 10px;"
									type="text" name="ouseraddress" value="" required="required"><br> 
								<input
									class="btn btn-outline-success"
									style="margin-left: 220px; margin-top: 50px;" type="submit"><br>

							</form>


						</div>



					</div>

				</div>

			</div>
		</div>

	</div>


</body>
</html>