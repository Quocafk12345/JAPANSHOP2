<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<title>QT-Shop | Đổi mật khẩu</title>
<jsp:include page="layouts/header.jsp"></jsp:include>
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
							chủ</a> <i>|</i></li>
					<li>Đổi mật khẩu</li>
				</ul>
			</div>
		</div>
	</div>
	<!-- //page -->
	<!-- log in -->
	<br>
	<c:if test="${not empty success}">
		<div
			class="alert alert-success alert-dismissible fade show text-center">
			<strong>Đổi mật khẩu!</strong> Thay đổi mật khẩu thành công. <a
				href="${pageContext.request.contextPath}/customer/login"
				style="text-decoration: underline;" class="title">Đăng nhập</a>.
			<button type="button" class="close" data-dismiss="alert">&times;</button>
		</div>
	</c:if>
	<c:if test="${not empty unmatched}">
		<div class="alert alert-danger alert-dismissible fade show">
			<strong>Đổi mật khẩu!</strong> Mật khẩu &amp; Xác nhận mật khẩu không
			giống.<br>Vui lòng thử lại.
			<button type="button" class="close" data-dismiss="alert">&times;</button>
		</div>
	</c:if>
	<c:if test="${not empty error}">
		<div class="alert alert-danger alert-dismissible fade show">
			<strong>Đổi mật khẩu!</strong> Mật khẩu &amp; Mật khẩu không được để
			trống.
			<button type="button" class="close" data-dismiss="alert">&times;</button>
		</div>
	</c:if>
	<c:if test="${not empty notFound}">
		<div class="alert alert-danger alert-dismissible fade show">
			<strong>Đổi mật khẩu!</strong> Không thể tìm thấy người dùng với
			email này.
			<button type="button" class="close" data-dismiss="alert">&times;</button>
		</div>
	</c:if>
	<div class="container h-100">
		<div class="d-flex justify-content-center h-100">
			<div class="row">
				<div class="col-md-12">
					<form
						action="${pageContext.request.contextPath}/customer/changePassword"
						method="post">
						<input type="hidden" name="email" value="${param.email}" /> <input
							type="hidden" name="token" value="${param.token}" /> <input
							type="hidden" name="data" value="${param.data}" />
						<div class="form-group">
							<label class="col-form-label">Mật khẩu</label> <input
								type="password" placeholder="Mật khẩu" size="35" maxlength="64"
								minlength="6" class="form-control" name="password"
								required="required" />
						</div>
						<div class="form-group">
							<label class="col-form-label">Xác nhận mật khẩu</label> <input
								type="password" placeholder="Xác nhận mật khẩu" size="35"
								maxlength="64" minlength="6" class="form-control"
								name="confirm-password" id="password" required="required" />
						</div>
						<div class="right-w3l">
							<input type="submit" class="form-control"
								value="Đặt lại mật khẩu">
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	<jsp:include page="layouts/footer.jsp"></jsp:include>
</body>
</html>