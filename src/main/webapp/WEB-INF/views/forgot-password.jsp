<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<title>QT-Shop | Quên mật khẩu</title>
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
					<li><a href="${pageContext.request.contextPath}/home">Home</a>
						<i>|</i></li>
					<li>Quên mật khẩu</li>
				</ul>
			</div>
		</div>
	</div>
	<!-- //page -->
	<!-- log in -->
	<br>
	<div class="container h-100">
		<c:if test="${not empty success}">
			<div class="alert alert-primary alert-dismissible fade show">
				<strong>Quên mật khẩu!</strong> Bạn sẽ sớm nhận được email cho phép
				bạn đặt lại mật khẩu của mình.<br>Vui lòng đảm bảo kiểm tra thư
				rác nếu bạn không thể tìm thấy email.
				<button type="button" class="close" data-dismiss="alert">&times;</button>
			</div>
		</c:if>
		<c:if test="${not empty error}">
			<div class="alert alert-danger alert-dismissible fade show">
				<strong>Quên mật khẩu!</strong> Đã có lỗi xảy ra.<br>Vui lòng
				thử lại.
				<button type="button" class="close" data-dismiss="alert">&times;</button>
			</div>
		</c:if>
		<div class="d-flex justify-content-center h-100">
			<div class="row">
				<div class="col-md-12">
					<form:form
						action="${pageContext.request.contextPath}/customer/forgotPassword"
						modelAttribute="forgot-password" method="post">
						<div class="form-group">
							<label class="col-form-label">Email</label>
							<form:input type="email" path="email" class="form-control"
								placeholder="Email" name="email" required="required" />
							<form:errors path="email" cssStyle="color:red;" cssClass="error" />
						</div>
						<div class="right-w3l">
							<input type="submit" class="form-control" value="Submit">
						</div>
						<p class="text-center dont-do mt-3">
							Chưa có tài khoản? <a href="register">Đăng ký ngay</a>
						</p>
					</form:form>
				</div>
			</div>
		</div>
	</div>
	<jsp:include page="layouts/footer.jsp"></jsp:include>
</body>
</html>