<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
	<title>QT-Shop | Tài khoản của tôi</title>
	<jsp:include page="layouts/header1.jsp"></jsp:include>
</head>
<body>
	<jsp:include page="layouts/admin_menu.jsp"></jsp:include>
	<!-- banner-2 -->
	<div class="page-head_agile_info_w3l"></div>
	<!-- //banner-2 -->
	<!-- page -->
	<div class="services-breadcrumb">
		<div class="agile_inner_breadcrumb">
			<div class="container">
				<ul class="w3_short">
					<li>
						<a href="/admin/home">Trang chủ</a>
						<i>|</i>
					</li>
					<li>Tài khoản</li>
				</ul>
			</div>
		</div>
	</div>
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
				Đã xảy ra lỗi.
				<button type="button" class="close" data-dismiss="alert">&times;</button>
			</div>
		</c:if>
		<!-- form -->
			<form action="/admin/updateProfile" method="post">
				<div class="contact-grids1 w3agile-6">
					<div class="row">
						<div class="col-md-6 col-sm-6 contact-form1 form-group">
							<label class="col-form-label">Tên</label>
							<input type="text" class="form-control" placeholder="Name" name="name" id="name" value="${name}" />
						</div>
						
						<div class="col-md-6 col-sm-6 contact-form1 form-group">
							<label class="col-form-label">Email</label>
							<input type="email" class="form-control" placeholder="Email" name="email" id="email" value="${email}"/>
						</div>
					</div>
					<div class="right-w3l col-md-6">
						<input type="submit" id="submit" class="form-control" value="Update">
					</div>
				</div>
			</form>
			<!-- //form -->
		</div>
	</div>
	<jsp:include page="layouts/footer.jsp"></jsp:include>
</body>
</html>
