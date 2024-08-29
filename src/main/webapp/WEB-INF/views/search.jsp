<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<title>QT-Shop | Trang chủ</title>
<style type="text/css">
</style>
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
	<div class="page-head_agile_info_w3l"></div>
	<!-- page -->
	<h2
		style="margin-top: 20px; margin-left: 180px; color: #DC143C; font-weight: bold;">Search
		Results for: "${keyword}".</h2>
	<div class="" style="margin-left: 80px;">
		<div class="agile_inner_breadcrumb">
			<div class="container">
				<ul class="w3_short" style="font-size: 12px;">
					<li><a href="${pageContext.request.contextPath}/home">Trang
							chủ</a> <i>/</i></li>
					<li>Kết quả tìm kiếm <i>/</i>
					</li>
					<li style="font-weight: bold;">Kết quả tìm kiếm cho:<span>"${keyword}"</span>
					</li>

				</ul>
			</div>
		</div>
	</div>
	<!-- //page -->

	<!-- top Products -->
	<div class="">
		<div class="container">
			<div class="row">
				<!-- product left -->
				<div class="agileinfo-ads-display col-lg-12">
					<div class="wrapper">
						<!-- first section -->
						<div class="px-sm-4 px-3  ">
							<div
								style="height: cover; background: white; padding: 20px; border-radius: 10px; box-shadow: 0 0 15px rgba(0, 0, 0, 0.1); transition: transform 0.3s ease; background: white;"
								class="heading-tittle">
								<h4 style="color: #DC143C; font-weight: bold">Kết quả tìm
									kiếm cho: "${keyword}".</h4>
								<br> <span style="">Đây là nơi bạn duyệt các sản
									phẩm trong cửa hàng này.</span>

							</div>
							<div class="row"
								style="margin-left: 1px; margin-top: 40px; height: cover; background: white; padding: 20px; border-radius: 10px; box-shadow: 0 0 15px rgba(0, 0, 0, 0.1); transition: transform 0.3s ease; background: white;">
								<c:choose>
									<c:when test="${not empty products}">
										<c:forEach var="product" items="${products}">
											<div class="col-md-4 product-men">
												<h3
													style="color: #DC143C; margin-bottom: 20px; margin-left: 20px;">Danh
													sách sản phẩm</h3>

												<div class="men-pro-item simpleCart_shelfItem"
													style="margin-left: 1px; margin-top: 40px; height: cover; background: white; padding: 20px; border-radius: 10px; box-shadow: 0 0 15px rgba(0, 0, 0, 0.1); transition: transform 0.3s ease; background: white;">
													<div class="men-thumb-item text-center">
														<img style="height: cover; border-radius: 10px;"
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
													<div class="item-info-product border-top mt-4 text-center"style="width: cover;">
														<h4 class="pt-1">
															<a
																href="${pageContext.request.contextPath}/product/productdetails?code=${product.code}">${product.name}</a>
														</h4>
														<div class="info-product-price my-2 text-center" style="">
															<span
																style="width:300px;height: cover; border-radius: 5px; border: dotted; border-color: red;"
																class="item_price text-center">Giá từ:
																${product.price}&#x20ab;/sp</span>
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
																		name="currency_code" value="INR" /> <input
																		type="hidden" name="return" value=" " /> <input
																		type="hidden" name="cancel_return" value=" " />
																	<div class="row">
																		<div class="col-sm-12 text-center">
																			<input type="submit"
																				class="btn btn-primary btn-md center-block"
																				value="Thêm " />&nbsp; <a
																				class="btn btn-danger btn-md center-block"
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
										<br>
										<div
											class="col-lg-12 col-sm-12 col-md-12 alert alert-info alert-dismissible fade show text-center">
											Không có sản phẩm nào được tìm thấy. &nbsp;<a
												href="${pageContext.request.contextPath}/home"
												class="btn btn-success text-right">Về trang chủ</a>
											<button type="button" class="close" data-dismiss="alert">&times;</button>
										</div>

									</c:otherwise>
								</c:choose>
								<!-- //product left -->
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- //top products -->
	<jsp:include page="layouts/footer.jsp"></jsp:include>
</body>
</html>