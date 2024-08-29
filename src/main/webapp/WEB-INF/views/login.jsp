<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<title>QT-Shop | Đăng nhập</title>
<c:choose>
	<c:when test="${not empty email }">
		<jsp:include page="layouts/user-header.jsp"></jsp:include>
	</c:when>
	<c:otherwise>
		<jsp:include page="layouts/header.jsp"></jsp:include>
	</c:otherwise>
</c:choose>
<link
	href="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0/css/bootstrap.min.css"
	rel="stylesheet">
<style type="text/css">
.container {
	font-family: "Segoe UI";
}

.login-container {
	max-width: 500px;
	margin: 50px auto;
	padding: 20px;
	border-radius: 10px;
	box-shadow: 0 8px 16px rgba(0, 0, 0, 0.3);
}

.login-title {
	font-weight: bold;
}

.form-control, .btn {
	border-radius: 5px;
	border: none;
	padding: 12px 15px;
	margin: 8px 0;
	width: 100%;
}

.link-custom {
	color: #F45C5D;
}

.bg-image {
	border-radius: 20px;
	background-size: cover; /*Đảm bảo hình ảnh bao phủ toàn bộ chiều rộng*/
	background-repeat: no-repeat; /* Không lặp lại hình ảnh */
	width: 100vw; /* Chiều rộng đầy đủ */
	height: 100vh; /* Chiều cao đầy đủ */
	position: relative;
}

.form-control {
	border-radius: 5px;
	border: 1px solid #ccc;
	padding: 12px 15px;
	margin: 8px 0;
	width: 100%;
	box-shadow: none;
	transition: border-color 0.3s ease-in-out, box-shadow 0.3s ease-in-out;
}

.form-control:hover {
	border-color: #0066FF;
	box-shadow: 0 0 8px rgba(244, 92, 93, 0.3);
}
</style>
</head>
<body>
	<!-- banner-2 -->
	<div class="page-head_agile_info_w3l"></div>
	<br>
	<div class="container" style="margin-bottom: 0; margin-top: 50px;">
		<div class="row justify-content-center">
			<div class="col-md-8 bg-image ">
				<c:if test="${not empty backUrl}">
					<center>
						<h4 class="text-center" style="color: red;">Vui lòng đăng
							nhập để sử dụng dịch vụ</h4>
						<hr>
					</center>
				</c:if>
				<div class="login-container border border-white rounded-3"
					style="opacity: 0.9; filter: alpha(opacity = 30); color: white;">
					<h1 class="text-center login-title text-success">Đăng nhập</h1>
					<form:form
						action="${pageContext.request.contextPath}/customer/loginCustomer"
						modelAttribute="customerLoginForm" method="post"
						class="validatedForm">

						<div class="mb-3">
							<label for="email" class="form-label mt-2 text-dark"
								style="font-weight: bold;">Email</label>
							<form:input type="email" path="email" class="form-control w50"
								id="email" placeholder="Email" required="required" />
							<form:errors path="email" cssClass="text-danger" />
						</div>
						<div class="mb-3">
							<label for="password" class="form-label text-dark"
								style="font-weight: bold;">Mật khẩu</label>
							<form:password path="password" class="form-control" id="password"
								placeholder="Mật khẩu" required="required" />
							<form:errors path="password" cssClass="text-danger" />
						</div>
						<div class="d-grid mb-3 text-center">
							<button type="submit" class="btn btn-success"
								style="color: white">Login</button>
						</div>
						<div class="d-flex justify-content-between">
							<a href="register" class="link-custom text-success ">Đăng ký</a>
							<a href="forgot-password" class="link-custom text-success">Quên
								mật khẩu?</a>
						</div>
					</form:form>
				</div>
			</div>
		</div>
	</div>
	<jsp:include page="layouts/footer.jsp"></jsp:include>

	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0/js/bootstrap.bundle.min.js"></script>
</body>
</html>
