<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<c:if test="${empty email}">
	<c:redirect url="${pageContext.request.contextPath}/user/sign-in" />
</c:if>
<title>QT-Shop / Tài khoản của tôi</title>
<style type="text/css">
.page_customer_account {
	margin-bottom: 30px;
}

.page_customer_account, .address, .page_order {
	padding: 20px 0;
}

article, aside, details, figcaption, figure, footer, header, hgroup,
	main, nav, section, summary {
	display: block;
}

article, aside, figcaption, figure, footer, header, hgroup, main, nav,
	section {
	display: block;
}

*, ::after, ::before {
	box-sizing: border-box;
}

biểu định kiểu tác nhân người dùng
section {
	display: block;
	unicode-bidi: isolate;
}

body {
	font-size: 14px;
	color: #282828;
	overflow-x: hidden;
}

body, button, input, select, textarea {
	line-height: 1.7;
	font-family: "Quicksand", sans-serif;
	color: #282828;
	-webkit-font-smoothing: antialiased;
	-webkit-text-size-adjust: 100%;
}

body {
	margin: 0;
	font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto,
		"Helvetica Neue", Arial, "Noto Sans", sans-serif, "Apple Color Emoji",
		"Segoe UI Emoji", "Segoe UI Symbol", "Noto Color Emoji";
	font-size: 1rem;
	font-weight: 400;
	line-height: 1.5;
	color: #212529;
	text-align: left;
	background-color: #fff;
}

.page_customer_account {
	margin-bottom: 30px;
	padding: 20px 0;
	font-family: "Quicksand", sans-serif;
}

.container {
	max-width: 1200px;
	margin: 0 auto;
	padding: 15px;
}

.row {
	display: flex;
	flex-wrap: wrap;
	margin-right: -15px;
	margin-left: -15px;
}

.col-left-ac, .col-right-ac {
	padding-right: 15px;
	padding-left: 15px;
}

.col-left-ac {
	flex: 0 0 25%;
	max-width: 25%;
}

.col-right-ac {
	flex: 0 0 75%;
	max-width: 75%;
}

.block-account {
	background-color: #f8f8f8;
	padding: 20px;
	border: 1px solid #ddd;
}

.title-account {
	font-size: 18px;
	font-weight: bold;
	margin-bottom: 15px;
}

.block-account ul {
	list-style: none;
	padding: 0;
	margin: 0;
}

.block-account ul li {
	margin-bottom: 10px;
}

.block-account ul li a {
	text-decoration: none;
	color: #333;
	font-size: 16px;
}

.block-account ul li a.active {
	font-weight: bold;
	color: #417447;
}

.title-head {
	font-size: 24px;
	margin-bottom: 20px;
	font-weight: bold;
}

.form-signup p {
	font-size: 16px;
	margin-bottom: 10px;
}

.form-signup strong {
	font-weight: bold;
}
/* CSS cho phần cập nhật thông tin */
.contact {
	padding: 20px 0;
}

.row {
	max-width: 1300px;
	margin: 0 auto;
	padding: 20px;
	border-radius: 8px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

h2.fw-bold {
	color: #333;
	font-size: 28px;
	margin-bottom: 30px;
}

.contact-form1 {
	margin-bottom: 20px;
}

.col-form-label {
	font-weight: bold;
	color: #333;
}

.form-control {
	height: 45px;
	padding: 10px;
	font-size: 16px;
	border-radius: 5px;
	border: 1px solid #ddd;
}

.form-control:focus {
	border-color: #28a745;
	box-shadow: none;
}

.error {
	font-size: 14px;
	color: #e74c3c;
	margin-top: 5px;
	display: block;
}

.alert {
	font-size: 16px;
	margin-bottom: 20px;
}

.right-w3l {
	margin-top: 20px;
}

.right-w3l input[type="submit"] {
	background-color: #28a745;
	color: white;
	padding: 12px;
	border: none;
	border-radius: 5px;
	font-size: 18px;
	cursor: pointer;
	transition: background-color 0.3s ease;
}

.right-w3l input[type="submit"]:hover {
	background-color: #218838;
}
</style>
</head>
<body>
	<c:choose>
		<c:when test="${not empty email }">
			<jsp:include page="layouts/user-header.jsp"></jsp:include>
		</c:when>
		<c:otherwise>
			<jsp:include page="layouts/header.jsp"></jsp:include>
		</c:otherwise>
	</c:choose>
	<!-- banner-2 -->
	<div class="page-head_agile_info_w3l"></div>
	<!-- //banner-2 -->
	<!-- page -->
	<div class="services-breadcrumb">
		<div class="agile_inner_breadcrumb">
			<div class="container">
				<ul class="w3_short">
					<li><a href="${pageContext.request.contextPath}/home">Trang
							chủ</a> <i>/</i></li>
					<li>Tài khoản</li>
				</ul>
			</div>
		</div>
	</div>
	<section class="signup page_customer_account">
		<div class="container">
			<div class="row">

				<div class="col-xs-12 col-sm-12 col-lg-3 col-left-ac">
					<div class="block-account">
						<h5 class="title-account">Trang tài khoản</h5>
						<p>
							Xin chào, <span style="color: #417447;">${name}</span>&nbsp;!
						</p>
						<ul>
							<li><a disabled="disabled" class="title-info active"
								href="javascript:void(0);">Thông tin tài khoản</a></li>
							<li><a class="dropdown-item"
								href="${pageContext.request.contextPath}/orders/my-orders">Đơn
									hàng của bạn</a></li>
							<li><a class="dropdown-item"
								href="${pageContext.request.contextPath}/customer/changepassword">Đổi
									mật khẩu</a></li>
						</ul>
					</div>
				</div>
				<div class="col-xs-12 col-sm-12 col-lg-9 col-right-ac">
					<h1 class="title-head margin-top-0">Thông tin tài khoản</h1>
					<div class="form-signup name-account m992">
						<p>
							<strong>Họ tên:</strong> ${name}
						</p>
						<p>
							<strong>Email:</strong> ${email}
						</p>
						<p>
							<strong>Địa chỉ:</strong> ${address}
						</p>
						<p>
							<strong>Giới tính:</strong> ${gender}
						</p>
						<p>
							<strong>Số điện thoại:</strong> ${phone}
						</p>

					</div>

				</div>
			</div>
		</div>
	</section>
	<!-- //page -->
	<!-- log in -->
	<br>
	<!-- register -->
	<div class="contact py-sm-5 py-4">
		<div class="container py-xl-4 py-lg-2">
			<c:if test="${not empty success}">
				<div class="alert alert-success alert-dismissible fade show">
					Cập nhật tài khoản thành công.
					<button type="button" class="close" data-dismiss="alert">&times;</button>
				</div>
			</c:if>
			<c:if test="${not empty error}">
				<div class="alert alert-danger alert-dismissible fade show">
					Đã có lỗi.
					<button type="button" class="close" data-dismiss="alert">&times;</button>
				</div>
			</c:if>
			<!-- form -->
			<form:form
				action="${pageContext.request.contextPath}/customer/updateCustomer"
				modelAttribute="customerUpdate" method="post">
				<div class="contact-grids1 w3agile-6">
					<div class="row">
						<h2 class="fw-bold">CẬP NHẬT THÔNG TIN</h2>
						<form:hidden path="id" />
						<div class="col-md-6 col-sm-6 contact-form1 form-group">
							<label class="col-form-label">Họ và tên</label>
							<form:input path="name" class="form-control" placeholder="Name"
								name="Name" value="${customer.name}" required="required" />
							<form:errors path="name" cssStyle="color:red;" cssClass="error" />
						</div>
						<div class="col-md-6 col-sm-6 contact-form1 form-group">
							<label class="col-form-label">Số điện thoại</label>
							<form:input path="phone" class="form-control"
								value="${customer.phone}" maxlength="10" minlength="10"
								placeholder="Phone" name="phone" required="required" />
							<form:errors path="phone" cssStyle="color:red;" cssClass="error" />
						</div>
						<%-- 						<c:out value="Hello == ${gender}" /> --%>
						<c:if test="${gender == 'Male'}">
							<div class="col-md-6 col-sm-6 contact-form1 form-group">
								<label class="col-form-label">Giới tính</label>
								<form:select path="gender" name="gender" class="form-control"
									require="required">
									<form:option value="Male" selected="selected">Nam</form:option>
									<form:option value="Female">Nữ</form:option>
								</form:select>
								<form:errors path="gender" cssStyle="color:red;"
									cssClass="error" />
							</div>
						</c:if>
						<c:if test="${gender == 'Female'}">
							<div class="col-md-6 col-sm-6 contact-form1 form-group">
								<label class="col-form-label">Giới tính</label>
								<form:select path="gender" name="gender" class="form-control"
									require="required">
									<form:option value="Male">Nam</form:option>
									<form:option value="Female" selected="selected">Nữ</form:option>
								</form:select>
								<form:errors path="gender" cssStyle="color:red;"
									cssClass="error" />
							</div>
						</c:if>
						<div class="col-md-6 col-sm-6 contact-form1 form-group">
							<label class="col-form-label">Mã vùng </label>
							<form:input path="pinCode" class="form-control"
								value="${customer.pinCode}" maxlength="6" placeholder="Pin Code"
								name="pin" required="required" />
							<form:errors path="pinCode" cssStyle="color:red;"
								cssClass="error" />
						</div>
						<div class="col-md-6 col-sm-6 contact-form1 form-group">
							<label class="col-form-label">Địa chỉ</label>
							<form:textarea path="address" class="form-control"
								value="${customer.address}" placeholder="Address" rows="4"
								cols="45" name="address" required="required"></form:textarea>
							<form:errors path="address" cssStyle="color:red;"
								cssClass="error" />
						</div>
					</div>
					<div class="right-w3l col-md-6">
						<input style="background-color: green" type="submit"
							class="form-control" value="Lưu">
					</div>
				</div>
			</form:form>
			<!-- //form -->
		</div>
	</div>
	<jsp:include page="layouts/footer.jsp"></jsp:include>
	<script src="${pageContext.request.contextPath}/js/jquery-2.2.3.min.js"></script>

</body>
</html>