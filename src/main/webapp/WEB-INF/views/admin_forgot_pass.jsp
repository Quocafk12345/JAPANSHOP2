<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
	<title>QT-Shop | Quên mật khẩu </title>
	<jsp:include page="layouts/header1.jsp"></jsp:include>
</head>
<body>
	<!-- banner-2 -->
	<div class="page-head_agile_info_w3l"></div>
	<!-- //banner-2 -->
	<!-- page -->
	<div class="services-breadcrumb">
		<div class="agile_inner_breadcrumb">
			<div class="container">
				<ul class="w3_short">
					<li>
						<a href="/home">Trang chủ</a>
						<i>|</i>
					</li>
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
		<div class="alert alert-success alert-dismissible fade show">
        <strong>Quên mật khẩu!</strong> Email đã được gửi.
        <a href="${pageContext.request.contextPath}/admin/" style="text-decoration: underline;" class="title">Đăng nhập</a><button type="button" class="close" data-dismiss="alert">&times;</button>
   		</div>
	</c:if>
		<c:if test="${not empty blank}">
				<div class="alert alert-danger alert-dismissible fade show">
        <strong>Quên mật khẩu!</strong> Vui lòng nhập email.
        <button type="button" class="close" data-dismiss="alert">&times;</button>
   				</div>
		</c:if>
		<c:if test="${not empty error}">
			<div class="alert alert-danger alert-dismissible fade show">
        <strong>Quên mật khẩu!</strong> Đã xảy ra lỗi!.
        <button type="button" class="close" data-dismiss="alert">&times;</button>
   			</div>
		</c:if>
		<c:if test="${not empty notFound}">
			<div class="alert alert-danger alert-dismissible fade show">
        <strong>Quên mật khẩu!</strong> Không thể tìm thấy email này.
        <button type="button" class="close" data-dismiss="alert">&times;</button>
   			 </div>
		</c:if>
		<div class="d-flex justify-content-center h-100">
		    <div class="row">
				<div class="col-md-12">
					<form action="/admin/forgotPassword" method="post">
						<div class="form-group">
							<label class="col-form-label">Email</label>
							<input type="email" class="form-control" size="35" placeholder="Enter email" name="email" id="email" required="required">
						</div>	
						<div class="right-w3l">
							<input type="submit" class="form-control btn btn-primary" value="Submit">
						</div>
					</form>
					</div>
				</div>
				</div>
			</div>
	<jsp:include page="layouts/footer.jsp"></jsp:include>
</body>
</html>