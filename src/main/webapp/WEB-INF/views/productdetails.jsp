<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<title>QT-Shop | Sản phẩm</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/flexslider.css"
	type="text/css" media="screen" />
</head>
<body>
	<c:choose>
		<c:when test="${not empty email}">
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
					<li><a
						href="${pageContext.request.contextPath}/productdetails">Chi
							tiết sản phẩm</a> <i>/</i></li>

					<li><strong>${product.name}</strong></li>
				</ul>
			</div>
		</div>
	</div>
	<!-- //page -->
	<!-- Single Page -->
	<div class="banner-bootom-w3-agileits">
		<div class="container py-xl-4 py-lg-2">
			<!-- tittle heading -->

			<!-- //tittle heading -->
			<div class="row">
				<div class="col-lg-5 col-md-8 single-right-left ">
					<div class="grid images_3_of_2">
						<div class="flexslider">
							<div class="thumb-image">
								<img style="border-radius: 5px;"
									src="${pageContext.request.contextPath}${product.image}"
									data-imagezoom="true" class="img img-responsive img-fluid"
									alt="">
							</div>
							<div class="clearfix"></div>
						</div>
					</div>
				</div>

				<div class="col-lg-7 single-right-left simpleCart_shelfItem">
					<h3 class="mb-3" style="font-weight: bold;">${product.name}</h3>
					<h5 class="mb-3" style="font-weight: bold;">Mã sản phẩm:
						${product.code}</h5>

					<p class="mb-3"
						style="height: cover; background: white; padding: 20px; border-radius: 5px; border: 2px dashed; border-color: red; box-shadow: 0 0 15px rgba(0, 0, 0, 0.1); transition: transform 0.3s ease; background: white;">
						<strong class="h4" style="color: black; font-weight: bold">Giá:</strong>
						<del class="h3" style="font-weight: bold">${product.mrpPrice}&#x20ab;.</del>
						<span style="font-weight: bold" class="item_price h4">${product.price}&#x20ab;</span>
						<label class="h4" style="font-weight: bold; color: #ffdf22">Giao
							hàng miễn phí</label>
					</p>
					<h3>
						<strong>Mô tả:</strong>
					</h3>
					<div class="product-single-w3l">
						<p class="my-sm-4 my-3">${product.description}</p>
					</div>
					<div class="single-infoagile">
						<ul>
							<li class="mb-3 fw-bold fs-5">Giao hàng toàn quốc.</li>
							<li class="mb-3"><span class="fw-bold fs-5">Thanh
									toán tại nhà:</span> <span class="fs-6">Nhanh chóng và an toàn.</span></li>
						</ul>
					</div>

					<div class="occasion-cart ">
						<div
							class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out">
							<form action="/cart/checkout" method="post">
								<fieldset>
									<input type="hidden" name="code" value="${product.code}" /> <input
										type="submit" name="submit" style="background-color: #CC0033"
										value="Thanh toán" class="button" />
								</fieldset>
							</form>
							<form action="#" method="post">
								<fieldset>
									<input type="hidden" name="cmd" value="_cart" /> <input
										type="hidden" name="add" value="1" /> <input type="hidden"
										name="item_id" value="${product.id}" /> <input type="hidden"
										name="business" value=" " /> <input type="hidden"
										name="item_name" value="${product.name}" /> <input
										type="hidden" name="amount" value="${product.price}" /> <input
										type="hidden" name="mrp" value="${product.mrpPrice}" /> <input
										type="hidden" name="currency_code" value="INR" /> <input
										type="hidden" name="return" value=" " /> <input type="hidden"
										name="cancel_return" value=" " />
									<div class="row"></div>
									<div class="row">
										<div class="col-sm-12 text-center">
											<input type="submit"
												style="background-color: #339933; background-color:#417447; color:white"
												class="btn btn-md center-block" value="Thêm vào giỏ" />&nbsp;
										</div>
									</div>
								</fieldset>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<jsp:include page="layouts/footer.jsp"></jsp:include>
	<!-- //Single Page -->
	<!-- imagezoom -->
	<script src="${pageContext.request.contextPath}/js/imagezoom.js"></script>
	<!-- //imagezoom -->
	<!-- flexslider -->
	<script
		src="${pageContext.request.contextPath}/js/jquery.flexslider.js"></script>
	<script>
		// Can also be used with $(document).ready()
		$(window).load(function() {
			$('.flexslider').flexslider({
				animation : "slide",
				controlNav : "thumbnails"
			});
		});
	</script>
	<!-- //FlexSlider-->
</body>
</html>