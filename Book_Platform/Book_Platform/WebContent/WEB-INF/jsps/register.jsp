<%@page contentType="text/html" import="java.util.*"
	pageEncoding="UTF-8"%>

<style>
* {
	margin: 0;
	padding: 0;
}

body {
	height: 100%;
}

input:focus {
	outline: none;
}

.form input {
	width: 300px;
	height: 28px;
	font-size: 16px;
	background: none;
	border: none;
	border-bottom: 1px solid black;
	color: balck;
	margin-bottom: 20px;
}

.form {
	color: black;
}

.confirm {
	height: 0;
	overflow: hidden;
	transition: .25s;
}

.btn {
	width: 120px;
	height: 40px;
	border: 1px solid black;
	background-color: black;
	font-size: 18px;
	color: #FFF;
	cursor: pointer;
	margin-top: 10px;
	font-family: "neo";
	transition: .25s;
}

.btn:hover {
	background: rgba(255, 255, 255, .25);
}

#login_wrap {
	width: 980px;
	height: 550px;
	border-radius: 10px;
	font-family: "neo";
	overflow: hidden;
	box-shadow: 0px 0px 120px rgba(0, 0, 0, 0.25);
	position: fixed;
	top: 47%;
	right: 50%;
	margin-top: -250px;
	margin-right: -490px;
}

#login {
	width: 50%;
	height: 100%;
	min-height: 550px;
	position: relative;
	float: right;
}

#login span {
	text-align: center;
	position: absolute;
	left: 38%;
	margin-left: -150px;
	top: 35%;
	margin-top: -140px;
}

#bg {
	height: 100%;
}
/*绘图*/
#img {
	width: 50%;
	min-height: 550px;
	float: left;
	position: relative;
}
</style>
<script language="javascript">
	function isValid(form) {
		if (form.userid.value == "") {
			alert("账号不能为空");
			return false;
		}
		if (form.uname.value == "") {
			alert("用户名不能为空");
			return false;
		} else if (form.password.value == "") {
			alert("用户密码不能为空！");
			return false;
		} else
			return true;
	}
</script>

<title>海绵公益 注册</title>
<body>
	<div id="bg"
		style="background-image: url(../images/chen6.jpg); background-size: cover;">
		<div id="login_wrap">
			<div id="login">

				<span>
					<form action="<%=request.getContextPath()%>/user/userregister"
						method="post" id="form" onSubmit="return isValid(this);">
						<p class="form">
							账号：<input type="text" name="userid" required="required"><br>
							<br>
						</p>
						<p class="form">
							密码：<input type="password" name="userpassword" required="required"><br>
							<br>
						</p>
						<p class="form">
							用户名：<input type="text" name="username" required="required"><br>
							<br>
						</p>
						<p style="margin-left: -300px;">性别：</p>
						<br>
						<p>
							<input type="radio" name="gender" value="男" checked="" required="required"
								style="width: 50px; height: 18px">男 <input type="radio"
								name="gender" value="女" style="width: 50px; height: 18px" required="required">女
						</p>
						<br>

						<p class="form">
							手机号：<input type="tel" name="telnumber" required="required"><br>
							<br>
						</p>
						<input class="btn" type="submit" value="注册">
					</form>

				</span>
			</div>


			<div id="img">
				<!-- 图片绘制框 -->

				<img src="../images/chen7.jpg"
					style="width: 100%; height: 550px; float: left; position: relative;">
			</div>

		</div>
	</div>
</body>
<script
	src="<%=request.getContextPath()%>/resources/js/jquery-2.1.4.min.js"></script>
