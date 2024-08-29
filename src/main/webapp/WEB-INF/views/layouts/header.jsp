<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Header</title>
<!-- bootstrap 5 -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
<!-- css -->
<!-- Custom-Files -->
<link href="${pageContext.request.contextPath}/css/bootstrap.css"
	rel="stylesheet" type="text/css" media="all" />
<!-- Bootstrap css -->
<link href="${pageContext.request.contextPath}/css/header.css"
	rel="stylesheet" type="text/css" media="all" />
<link href="${pageContext.request.contextPath}/css/style.css"
	rel="stylesheet" type="text/css" media="all" />
<link href="${pageContext.request.contextPath}/css/footer.css"
	rel="stylesheet" type="text/css" media="all" />
<link href="${pageContext.request.contextPath}/css/navbar.css"
	rel="stylesheet" type="text/css" media="all" />

<!-- Main css -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/fontawesome-all.css">
<!-- Font-Awesome-Icons-CSS -->
<link href="${pageContext.request.contextPath}/css/popuo-box.css"
	rel="stylesheet" type="text/css" media="all" />
<!-- pop-up-box -->
</head>
<body>

	<nav class="navbar navbar-expand-lg bg-light shadow">
		<div class="container-fluid">
			<div class="navbar-brand" href="#">
<a href="${pageContext.request.contextPath}/home" class="font-weight-bold font-italic" style="font-size: 22px;">
							<img src="${pageContext.request.contextPath}/img/logo.png" style="width:120px;height:70px">&nbsp;
						</a>				<h3 class="fw-bold ms-3 brand-name">
					<Span>Tân An</Span> Natural
					</h2>
			</div>

			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarNav"
				aria-controls="navbarNav" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse menu" id="navbarNav">
				<ul class="navbar-nav w-100 justify-content-center">
					<li class="nav-item"><a class="nav-link" aria-current="page"
						href="${pageContext.request.contextPath}/home">Trang chủ</a></li>
					<li class="nav-item"><a class="nav-link"
						href="${pageContext.request.contextPath}/introduce">Giới Thiệu</a></li>
					<li class="nav-item"><a class="nav-link" href="/">Sản Phẩm</a></li>
					<li class="nav-item"><a class="nav-link"
						href="${pageContext.request.contextPath}/contact">Liên Hệ</a></li>
				</ul>
			</div>

			<form action="/product/search" class="search" method="post">
				<input type="text" placeholder="search..." name="keyword" required>
				<button class="fw-bold searchsubmit" type="submit">
					<i class="bi bi-search"></i>
				</button>
			</form>
			<div class="navbar-btn">
				<div class="btn-group">
					<button type="button" data-bs-toggle="dropdown"
						data-bs-display="static" aria-expanded="false">
						<i class="bi bi-bell-fill"></i>
					</button>
					<ul class="dropdown-menu dropdown-menu-lg-end">Thông báo sẽ
						xuất hiện tại đây
					</ul>
				</div>

				<div class="btn-group">
					<button type="button" data-bs-toggle="dropdown"
						data-bs-display="static" aria-expanded="false">
						<i class="bi bi-person-circle"></i>
					</button>
					<ul class="dropdown-menu dropdown-menu-lg-end">
						<li><a class="dropdown-item" href="register">Đăng ký</a></li>
						<li><a class="dropdown-item" href="${pageContext.request.contextPath}/customer/login">Đăng nhập</a></li>
					</ul>
				</div>
			</div>
			<div class="col-2 top_nav_right text-center mt-sm-0 mt-2">
				<div class="wthreecartaits wthreecartaits2 cart cart box_1">
					<form action="#" method="post" class="last">
						<input type="hidden" name="cmd" value="_cart"> <input
							type="hidden" name="display" value="1">
						<button class="btn w3view-cart" type="submit" name="submit"
							value="">
							<i class="fas fa-cart-arrow-down"></i>
						</button>
					</form>
				</div>
			</div>
		</div>
	</nav>



	<!-- bootstrap 5 -->
	<script src="${pageContext.request.contextPath}/js/jquery-2.2.3.min.js"></script>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
		crossorigin="anonymous"></script>

</body>
</html>