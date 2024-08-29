<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>

<title>QT-Shop | Trang chủ</title>
<style type="text/css">
.men-pro-item .snipcart-details {
	display: none;
}

/* Hiển thị các nút khi hover vào phần tử cha */
.men-pro-item:hover .snipcart-details {
	display: flex; /* Hiển thị các nút khi hover */
	justify-content: space-between; /* Căn đều các nút */
	position: absolute;
	/* Đặt vị trí tuyệt đối để các nút hiển thị bên trên sản phẩm */
	bottom: 30%; /* Vị trí các nút cách đáy khung sản phẩm một chút */
	left: 55%;
	transform: translateX(-50%);
	width: 80%; /* Đảm bảo các nút nằm gọn trong khung sản phẩm */
	z-index: 10;
}

.row {
	display: flex;
	flex-wrap: wrap;
	margin-left: 20px;
	padding: 0;
}

.col-md-3.product-men {
	padding: 5px;
	margin-bottom: 10px;
	width: 15%; /* Thiết lập chiều rộng cố định cho các khung sản phẩm */
	box-sizing: border-box;
	/* Đảm bảo padding không ảnh hưởng đến kích thước tổng thể */
}

.men-pro-item {
	height: 350px; /* Thiết lập chiều cao cố định cho khung sản phẩm */
	display: flex;
	flex-direction: column;
	justify-content: space-between;
	/* Đảm bảo các phần tử bên trong khung đều nhau */
	border: 1px solid #f1f1f1;
	padding: 10px;
	background-color: #fff;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
	/* Thêm shadow để khung đẹp hơn */
}



.men-thumb-item img {
	max-height: 150px; /* Giới hạn chiều cao hình ảnh */
	width: 400px;
	margin: 20px;
}

.item-info-product {
	text-align: center;
	margin-top: 10px;
	padding-top: 10px;
	border-top: 1px solid #f1f1f1;
}

.item-info-product h4 {
	height: 40px; /* Thiết lập chiều cao cố định cho tiêu đề sản phẩm */
	overflow: hidden; /* Đảm bảo nội dung không tràn ra ngoài */
	font-size: 14px;
}

.info-product-price {
	font-size: 14px;
}

.snipcart-details {
	margin-top: 10px;
}

#button-contact-vr {
	position: fixed;
	bottom: 20px;
	right: 20px;
	z-index: 9999;
}

.button-contact {
	margin-bottom: 10px;
}

.phone-vr {
	position: relative;
	width: 50px;
	height: 50px;
	border-radius: 50%;
	background-color: white;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.3);
}

.phone-vr-circle-fill {
	position: absolute;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
	width: 100%;
	height: 100%;
	border-radius: 50%;
	background-color: ư;
	animation: phone-ring 1.2s infinite;
}

.phone-vr-img-circle {
	position: absolute;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
	width: 60%;
	height: 60%;
	border-radius: 50%;
	background-color: white;
	display: flex;
	justify-content: center;
	align-items: center;
}

.phone-vr-img-circle img {
	width: 100%;
	height: 100%;
}

@
keyframes phone-ring { 0% {
	transform: translate(-50%, -50%) scale(0.9);
}
50




%
{
transform




:




translate


(




-50


%
,
-50


%
)




scale


(




1




)


;
}
100




%
{
transform




:




translate


(




-50


%
,
-50


%
)




scale


(




0


.9




)


;
}
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
	<jsp:include page="layouts/slideShow.jsp"></jsp:include>

	<div class="ads-grid py-sm-5 py-4">
		<div class="container-fluid py-xl-4 py-lg-2">
			<div class="row">
				<div class="agileinfo-ads-display col-lg-12">
					<div class="wrapper">
						<div class="px-sm-4 px-3 py-sm-5 py-3 mb-4"
							style="background: white; padding: 5px; border-radius: 5px; box-shadow: 0 0 15px rgba(0, 0, 0, 0.1); transition: transform 0.3s ease; background: white; border-top-color: red; border-top-style: ridge">
							<c:if test="${not empty products}">
								<h3 style="color: black; font-weight: bold;margin-left:50px"
									class="heading-tittle">TẤT CẢ SẢN PHẨM</h3>
							</c:if>
							<jsp:include page="product.jsp"></jsp:include>

							<div class="row">
								<c:choose>
									<c:when test="${not empty products}">
										<c:forEach var="product" items="${products}">
											<div class="col-md-3 product-men mt-5">
												<div class="men-pro-item simpleCart_shelfItem">
													<div
														class="men-thumb-item text-center  d-flex justify-content">
														<img
															src="${pageContext.request.contextPath}${product.image}"
															class="img-fluid">

														<div class="men-cart-pro">
															<div class="inner-men-cart-pro"
																style="margin-top: -55px;">
																<a
																	href="${pageContext.request.contextPath}/product/productdetails?code=${product.code}"
																	class="link-product-add-cart">Xem nhanh</a>
															</div>
														</div>
													</div>
													<div class="item-info-product border-top mt-4">
														<h4 style="font-weight: bold; margin-bottom: 10px"
															class="pt-1">
															<a
																href="${pageContext.request.contextPath}/product/productdetails?code=${product.code}">${product.name}</a>
														</h4>
														<div class="info-product-price my-2">
															<span style="color: red;">Chỉ từ:</span> <strong
																class="item_price" style="color: red">${product.price}&#x20ab;</strong><span
																style="color: red;">/sp</span>
															<del>${product.mrpPrice}&#x20ab;</del>
														</div>
														<div
															class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out">
															<form action="#" method="post">
																<fieldset>
																	<input type="hidden" name="cmd" value="_cart" /> <input
																		type="hidden" name="add" value="1" /> <input
																		type="hidden" name="item_id" value="${product.id}" />
																	<input type="hidden" name="business" value=" " /> <input
																		type="hidden" name="item_name" value="${product.name}" />
																	<input type="hidden" name="amount"
																		value="${product.price}" /> <input type="hidden"
																		name="mrp" value="${product.mrpPrice}" /> <input
																		type="hidden" name="currency_code" value="INR" /> <input
																		type="hidden" name="return" value=" " /> <input
																		type="hidden" name="cancel_return" value=" " />
																	<div class="row"></div>
																	<div class="row"> 
 																		<div class="col-sm-12 text-center">
 																			<input type="submit"
 																				style="background-color: #339933; color: white"
 																				class="btn btn-md center-block" value="Thêm vào giỏ" />&nbsp;
																			
 																			<a class="btn btn-md center-block"
 																				style="background-color: #FF9900; color: white"
																				href="${pageContext.request.contextPath}/product/productdetails?code=${product.code}">Mua
																				ngay</a> 
 																		</div> 
																	</div> 
																</fieldset>
															</form>
															<br>
														</div>
													</div>
												</div>
											</div>
										</c:forEach>
									</c:when>
									<c:otherwise>
										<c:if test="${empty products}">
											<div class="col-12 text-center">
												<h1>Không có sản phẩm nào</h1>
											</div>
										</c:if>
									</c:otherwise>
								</c:choose>
							</div>
						</div>
						<c:choose>
							<c:when test="${count > product_size}">
								<div class="col-12 text-center">
									<b><a class="btn btn-success" style="color: white;"
										href="${pageContext.request.contextPath}/products/1">...
											Xem thêm sản phẩm...</a></b>
								</div>
							</c:when>
							<c:otherwise>
								<c:if test="${pageNo > 0}">
									<div class="col-sm-12 text-center">
										<b><a class="btn btn-success" style="color: white;"
											href="${nextUrl}">... Xem thêm sản phẩm ...</a></b>&nbsp; <b><a
											class="btn btn-danger" href="${backUrl}"
											style="color: white;">... Quay lại ...</a></b>
									</div>
								</c:if>
								<c:if test="${empty products}">
									<div class="col-12 text-center">

										<b><a class="btn btn-danger" href="${header.referer}"
											style="color: white;">... Quay lại ...</a></b>
									</div>
								</c:if>
							</c:otherwise>
						</c:choose>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div id="button-contact-vr">
		<div id="gom-all-in-one">
			<div id="telegram-vr" class="button-contact">
				<div class="phone-vr">
					<div class="phone-vr-circle-fill"></div>
					<div class="phone-vr-img-circle">
						<a target="_blank" href="https://t.me/0916211380"> <img
							alt="Telegram"
							src="https://upload.wikimedia.org/wikipedia/commons/8/82/Telegram_logo.svg">
						</a>
					</div>
				</div>
			</div>
			<div id="zalo-vr" class="button-contact">
				<div class="phone-vr">
					<div class="phone-vr-circle-fill"></div>
					<div class="phone-vr-img-circle">
						<a target="_blank" href="https://chat.zalo.me/"> <img
							alt="Zalo"
							src="https://cdn1.iconfinder.com/data/icons/logos-brands-in-colors/2500/zalo-seeklogo.com-512.png">
						</a>
					</div>
				</div>
			</div>
			-
			<div id="phone-vr" class="button-contact">
				<div class="phone-vr">
					<div class="phone-vr-circle-fill"></div>
					<div class="phone-vr-img-circle">
						<a href="tel:0916211380"> <img alt="Phone"
							src="https://upload.wikimedia.org/wikipedia/commons/thumb/6/6c/Phone_icon.png/1024px-Phone_icon.png">
						</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<jsp:include page="layouts/footer.jsp"></jsp:include>

	</script>
	
</body>
</html>