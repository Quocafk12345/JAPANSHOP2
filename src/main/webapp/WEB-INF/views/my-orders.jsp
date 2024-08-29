<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<c:if test="${empty email}">
	<c:redirect url="${pageContext.request.contextPath}/user/sign-in" />
</c:if>
<title>QT-Shop / Đơn hàng</title>
<link
	href="https://cdn.datatables.net/1.13.4/css/dataTables.bootstrap5.min.css"
	rel="stylesheet">
<link
	href="https://stackpath.bootstrapcdn.com/bootstrap/5.3.0/css/bootstrap.min.css"
	rel="stylesheet">
<style>
.table thead th {
	background-color: #417447;
	color: white;
}

.container h3 {
	margin-left: 18px;
	margin-bottom: 30px;
}
</style>
<link href="${pageContext.request.contextPath}/css/style.css"
	rel="stylesheet" type="text/css" media="all">
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
							chủ</a> <i>/</i></li>
					<li>Đơn hàng</li>
				</ul>
			</div>
		</div>
	</div>
	<!-- //page -->
	<div class="privacy py-sm-5 py-4">
		<c:if test="${not empty cancelled}">
			<div
				class="alert alert-success alert-dismissible fade show text-center">
				Đơn hàng đã được hủy.
				<button type="button" class="btn-close" data-bs-dismiss="alert"></button>
			</div>
		</c:if>
		<div class="container">
			<h3>
				<span>Đơn hàng của bạn</span>
			</h3>
			<div class="container">
				<div class="table-responsive">
					<table id="example"
						class="table table-hover table-bordered text-center">
						<thead>
							<tr>
								<th>STT</th>
								<th>Mã đơn hàng</th>
								<th>Sản phẩm</th>
								<th>Số lượng</th>
								<th>Giá(&#x20ab;)</th>
								<th>Tổng tiền(&#x20ab;)</th>
								<th>Ngày</th>
								<th>Trạng thái</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="orders" items="${orders}">
								<c:set var="count" value="${count + 1}" scope="page" />
								<tr>
									<td>${count}</td>
									<td>${orders.paymentId}</td>
									<td><a
										href="${pageContext.request.contextPath}/product/productdetails?code=${orders.product.code}"
										target="_blank"> <img
											src="${pageContext.request.contextPath}${orders.product.image}"
											width="70" height="90" class="img-fluid" /> <br>${orders.product.name}
									</a></td>
									<td>${orders.quantity}</td>
									<td>${orders.price}</td>
									<td>${orders.amount}</td>
									<td><fmt:formatDate pattern="dd-MMM-yyyy HH:mm"
											value="${orders.order.orderDate}" /></td>
									<td><c:choose>
											<c:when test="${orders.orderStatus eq 'Pending'}">
												<span class="badge bg-warning">Đang chờ</span>
											</c:when>
											<c:when test="${orders.orderStatus eq 'Delivered'}">
												<span class="badge bg-success">Đã giao hàng</span>
											</c:when>
											<c:when test="${orders.orderStatus eq 'Cancelled'}">
												<span class="badge bg-info">Đã hủy</span>
											</c:when>
											<c:otherwise>
												<span class="badge bg-secondary">Chưa xử lý</span>
											</c:otherwise>
										</c:choose></td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
	<!-- //checkout page -->
	<div></div>
	<jsp:include page="layouts/footer.jsp"></jsp:include>

	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<script
		src="https://cdn.datatables.net/1.13.4/js/jquery.dataTables.min.js"></script>
	<script
		src="https://cdn.datatables.net/1.13.4/js/dataTables.bootstrap5.min.js"></script>
	<script>
		$(document).ready(function() {
			$('#example').DataTable();
		});
	</script>
</body>
</html>
