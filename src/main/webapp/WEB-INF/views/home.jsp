<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<c:if test="${empty aemail}">
	<c:redirect url="${pageContext.request.contextPath}/user/sign-in" />
</c:if>
<title>QT-Shop | Trang chủ Admin</title>
<c:choose>
	<c:when test="${not empty email }">
		<jsp:include page="layouts/user-header.jsp"></jsp:include>
	</c:when>
	<c:otherwise>
		<jsp:include page="layouts/header1.jsp"></jsp:include>
	</c:otherwise>
</c:choose>
<link
	href="https://cdn.datatables.net/1.10.20/css/dataTables.bootstrap4.min.css"
	rel="stylesheet">
<style type="text/css">
@media only screen and (max-width: 760px) , ( min-device-width : 768px)
	and (max-device-width: 1024px) {
	p#mb {
		display: none;
		visibility: hidden;
	}
}

@media ( max-width :623px) {
	p#mb {
		color: #ee2d50;
		font-weight: bold;
		align-content: center;
		display: unset;
		visibility: visible;
	}
	table {
		display: block;
		overflow-x: auto;
	}
	.custom-img {
		width: 300px;
		height: 200px;
		object-fit: cover;
		/* Đảm bảo hình ảnh giữ nguyên tỷ lệ khi thay đổi kích thước */
	}
}
</style>

</head>
<body>
	<jsp:include page="layouts/admin_menu.jsp"></jsp:include>
	<div class="page-head_agile_info_w3l"></div>
	<!-- page -->
	<div class="services-breadcrumb">
		<div class="agile_inner_breadcrumb">
			<div class="container">
				<ul class="w3_short">
					<li><a href="${pageContext.request.contextPath}/admin/index">Trang
							chủ</a> <i>/</i></li>
					<li>Trang chủ Admin</li>
				</ul>
			</div>
		</div>
	</div>
	<!-- //page -->
	<div class="contact py-sm-5 py-4">
		<div class="container-fluid py-xl-4 py-lg-2">
			<c:if test="${not empty delivered}">
				<div
					class="alert alert-success alert-dismissible fade show text-center">
					Trạng thái đơn hàng đã được đổi thành đã giao.
					<button type="button" class="close" data-dismiss="alert">&times;</button>
				</div>
			</c:if>
			<c:if test="${not empty cancelled}">
				<div
					class="alert alert-success alert-dismissible fade show text-center">
					Trạng thái đơn hàng đã đổi thành đã hủy.
					<button type="button" class="close" data-dismiss="alert">&times;</button>
				</div>
			</c:if>
			<p id="mb">Kéo sang phải để xem chi tiết.</p>
			<h3 class="text-center">Những đơn hàng đang chờ xử lý</h3>
			<table id="example"
				class="table table-hover table-bordered text-center">
				<thead>
					<tr>
						<th>STT.</th>
						<th>Mã đơn hàng.</th>
						<th>Chi tiết khách hàng</th>
						<th>Sản phẩm</th>
						<th>Số lượng.</th>
						<th>Tổng tiền (&#x20ab;)</th>
						<th>Trạng thái</th>
						<th>Ngày</th>
						<th>Trạng thái</th>
					</tr>
				</thead>
				<tbody>
					<c:set var="count" value="0" scope="page"></c:set>
					<c:set var="orderStatus" value="Delivered" scope="page"></c:set>
					<c:forEach var="orders" items="${pending}">
						<c:set var="count" value="${count + 1}" scope="page"></c:set>
						<tr>
							<td>${count}</td>
							<td>${orders.paymentId}</td>
							<td>${orders.order.customerName}|
								${orders.order.customerEmail} | ${orders.order.customerPhone} |
								${orders.order.customerAddress} |
								${orders.order.customerAddressType} | ${orders.order.pinCode}</td>
							<td><a
								href="${pageContext.request.contextPath}/product/productdetails?code=${orders.product.code}"
								target="_blank"> <img style="width: 300px; height: 200px"
									src="${pageContext.request.contextPath}${orders.product.image}"
									class="img img-responsive custom-img" />
							</a> <br>${orders.product.name}</td>
							<td>${orders.quantity}</td>
							<td>${orders.amount}</td>
							<td><c:choose>
									<c:when test="${orders.orderStatus eq 'Pending'}">
										<span class="badge badge-warning">Đang chờ</span>
									</c:when>
									<c:otherwise>
										<span class="badge badge-warning">${orders.orderStatus}</span>
									</c:otherwise>
								</c:choose></td>
							<td><fmt:formatDate pattern="dd-MMM-yyyy hh:mm:ss"
									value="${orders.order.orderDate}" /></td>
							<td><a
								href="${pageContext.request.contextPath}/admin/order/changeStatus/${orderStatus}/${orders.id}"
								class="btn btn-success"
								onclick="return confirm('Thay đổi trạng thái thành đang giao?');">Giao
									hàng</a> <%-- 							<hr> <a href="${pageContext.request.contextPath}/admin/order/changeStatus/Cancelled/${orders.id}" class="btn btn-info" onclick="return confirm('Are you sure you want to cancel this order?');">Cancel</a> --%>
							</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>

	<jsp:include page="layouts/footer.jsp"></jsp:include>
	<!-- Bootstrap core JavaScript-->
	<!-- Page level plugin JavaScript-->
	<script
		src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js"></script>
	<script
		src="https://cdn.datatables.net/1.10.20/js/dataTables.bootstrap4.min.js"></script>
	<script>
		$(document).ready(function() {
			$('#example').dataTable({
				paging : false,
				bFilter : false,
				ordering : false,
				searching : true,
				dom : 't'
			});
		});
	</script>

</body>
</html>
