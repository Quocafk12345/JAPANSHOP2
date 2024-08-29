<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="vi">
<head>
<title>QT-Shop | Blog tư vấn</title>
<c:choose>
	<c:when test="${not empty email }">
		<jsp:include page="layouts/user-header.jsp"></jsp:include>
	</c:when>
	<c:otherwise>
		<jsp:include page="layouts/header.jsp"></jsp:include>
	</c:otherwise>
</c:choose>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Giới thiệu công ty</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</head>

<body>
	<main class="container">
		<div class="row">
			<div class="col-12 text-center mb-4">
				<h1>Về Chúng Tôi</h1>
				<p class="lead">Chúng tôi mang đến những sản phẩm Nhật Bản chất
					lượng hàng đầu cho khách hàng Việt Nam.</p>
			</div>
		</div>

		<div class="row">
			<div class="col-md-6">
				<h2>Tầm Nhìn & Sứ Mệnh</h2>
				<p>JapanShop là cầu nối giữa Việt Nam và Nhật Bản, mang đến
					những sản phẩm hàng đầu từ Nhật Bản đến với khách hàng Việt. Chúng
					tôi không ngừng nỗ lực để mang lại trải nghiệm mua sắm hoàn hảo và
					chất lượng dịch vụ tốt nhất.</p>
				<p>Sứ mệnh của chúng tôi là mang đến sự hài lòng và tin cậy qua
					từng sản phẩm, từ hàng tiêu dùng đến mỹ phẩm, mang đậm chất lượng
					và văn hóa Nhật Bản.</p>
			</div>
			<div class="col-md-6">
				<img src="https://via.placeholder.com/500" alt="JapanShop Image"
					class="img-fluid rounded">
			</div>
		</div>

		<div class="row mt-5">
			<div class="col-md-6">
				<h2>Giá Trị Cốt Lõi</h2>
				<ul class="list-group">
					<li class="list-group-item">Chất lượng</li>
					<li class="list-group-item">Dịch vụ uy tín</li>
					<li class="list-group-item">Cam kết nguồn gốc sản phẩm</li>
					<li class="list-group-item">Tôn trọng văn hóa và con người</li>
				</ul>
			</div>
			<div class="col-md-6">
				<img src="https://via.placeholder.com/500" alt="Japan Culture"
					class="img-fluid rounded">
			</div>
		</div>
	</main>
</body>
</html>
