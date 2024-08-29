<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<title>QT-Shop | Blog tư vấn</title>
<!-- Bootstrap 5 CSS -->
<link href="https://stackpath.bootstrapcdn.com/bootstrap/5.1.3/css/bootstrap.min.css" rel="stylesheet">
<style type="text/css">
/* Add any custom CSS here */
	body{
		font-family: time-new-romance;
	}

	
</style>

</head>
<body class="container">
<c:choose>
		<c:when test="${not empty email}">
			<jsp:include page="layouts/header.jsp"></jsp:include>
		</c:when>
		<c:otherwise>
			<jsp:include page="layouts/user-header.jsp"></jsp:include>
		</c:otherwise>
	</c:choose>
	<!-- banner-2 -->
	<div class="page-head_agile_info-w31 mt-5"></div>
	<div class="container">
		<!-- tittle heading -->
		<h3 class="text-center mb-5 display-3" style="font-weight: bold; font-family: time-new-romance"><strong class="">Bí quyết in ấn hiệu quả từ Blog tư vấn, chia sẻ kinh nghiệm</strong> </h3>
		<!-- //tittle heading -->
		<div class="row">
			<div class="col-lg-6 mb-4">
				<img src="https://i.pinimg.com/originals/ea/2f/03/ea2f0352c43d206ea586154b8045b1e4.jpg" class="img-fluid" alt="In ấn hiệu quả" style="box-shadow: 0 8px 16px rgba(0, 0, 0, 1);">
			</div>
			<div class="col-lg-6">
				<h1>
					<strong>Bí quyết in ấn hiệu quả từ Blog tư vấn, chia sẻ kinh nghiệm.</strong>
				</h1>
				<h4 class="my-3">In ấn là một công đoạn quan trọng trong việc truyền tải thông điệp của doanh nghiệp đến khách hàng. Một sản phẩm in ấn đẹp, ấn tượng sẽ giúp doanh nghiệp tạo được thiện cảm và ấn tượng với khách hàng, từ đó thúc đẩy doanh số bán hàng. Tuy nhiên, để có được một sản phẩm in ấn chất lượng, đẹp mắt, đòi hỏi doanh nghiệp phải có sự đầu tư kỹ lưỡng về cả nội dung và hình thức.</h4>
				<h4>Với mong muốn giúp các doanh nghiệp, người tiêu dùng có được những thông tin hữu ích về in ấn, Công ty Hpdc đã xây dựng một chuyên mục blog tư vấn chia sẻ kinh nghiệm in ấn. Tại đây, chúng tôi sẽ cung cấp cho bạn những kiến thức cần thiết về in ấn, từ cách chọn loại giấy, thiết kế, in ấn,... đến các mẹo in ấn hiệu quả.</h4>
			</div>
		</div> <!-- Đóng row đầu tiên -->
		<div class="row mt-5">
			<div class="col-lg-6 order-lg-2 mb-4">
				<img src="https://i.pinimg.com/564x/8e/30/4a/8e304aac188acd1f61943e58752a2115.jpg" class="img-fluid rounded" alt="Chia sẻ kinh nghiệm in ấn" style="box-shadow: 0 8px 16px rgba(0, 0, 0, 1);">
			</div>
			<div class="col-lg-6 order-lg-1">
				<h1>
					<strong>Blog chia sẻ kinh nghiệm in ấn</strong>
				</h1>
				<p class="h4">Trong chuyên mục blog tư vấn chia sẻ kinh nghiệm in ấn của Công ty Hpdc, chúng tôi đã tổng hợp và chia sẻ nhiều bài viết hữu ích về in ấn, bao gồm:</p>
				<ul class="ml-3 ms-3 h4">
					<li>Các loại giấy in phổ biến và cách chọn giấy in phù hợp</li>
					<li>Các bước thiết kế file in ấn chuẩn</li>
					<li>Các kỹ thuật in ấn cơ bản</li>
					<li>Các mẹo in ấn hiệu quả</li>
				</ul>
			</div>
		</div> <!-- Đóng row thứ hai -->
		<div class="row mt-5">
			<div class="col-lg-6 mb-4">
				<img src="https://i.pinimg.com/564x/f5/51/22/f55122cdee18c8244c74fb93728e95c1.jpg" class="img-fluid shadow rounded" alt="Nhận diện thương hiệu" style="max-height: 300px;height: auto; min-width: 500px; width: auto; box-shadow: 0 8px 16px rgba(0, 0, 0, 1);
;
				">
			</div>
			<div class="col-lg-6">
				<h1 class="text-left" style="color: black;"> <strong>Blog nhận diện thương hiệu</strong> </h1>
				<ul class="ml-3 ms-3 h4">
					<li>Tìm hiểu các bài viết in Decal.</li>
					<li>In nhãn chất lượng.</li>
					<li>To spread the joy of food.</li>
				</ul>
			</div>
		</div> <!-- Đóng row thứ ba -->
	</div>
	<!-- //about -->
	<jsp:include page="layouts/footer.jsp"></jsp:include>
	<!-- Bootstrap 5 JS -->
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/5.1.3/js/bootstrap.bundle.min.js"></script>
</body>
</html>
