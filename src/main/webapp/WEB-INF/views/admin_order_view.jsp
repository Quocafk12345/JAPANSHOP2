<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<c:if test="${empty aemail}">
	<c:redirect url="${pageContext.request.contextPath}/user/sign-in"/>  
</c:if>
	<title>QT-Shop | Tất cả đơn hàng </title>
	<jsp:include page="layouts/header1.jsp"></jsp:include>
	<link href="https://cdn.datatables.net/1.10.20/css/dataTables.bootstrap4.min.css" rel="stylesheet">
<style type="text/css">
@media only screen and (max-width: 760px),
    (min-device-width: 768px) and (max-device-width: 1024px)  {
    	p#mb {
    		display: none;
    		visibility: hidden;
    	}
    }
@media(max-width:623px) {
	p#mb {
		color:#ee2d50;
		font-weight:bold;
		align-content:center;
		display: unset;
		visibility:visible;
	}
table {
    display: block;
    overflow-x: auto;
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
					<li>
						<a href="${pageContext.request.contextPath}/admin/home">Trang chủ</a>
						<i>|</i>
					</li>
					<li>Tất cả đơn hàng</li>
				</ul>
			</div>
		</div>
	</div>
	<!-- //page -->
<div class="contact py-sm-5 py-4">
<div class="container-fluid py-xl-4 py-lg-2">
<c:if test="${not empty cancelled}">
				<div class="alert alert-success alert-dismissible fade show text-center">
					Trạng thái đơn hàng được đổi thành đã hủy.
					<button type="button" class="close" data-dismiss="alert">&times;</button>
				</div>	
</c:if>
<c:if test="${not empty delivered}">
	<div class="alert alert-success alert-dismissible fade show text-center">
		Trạng thái đơn hàng được đổi thành đã giao.
		<button type="button" class="close" data-dismiss="alert">&times;</button>
	</div>	
</c:if>
<c:if test="${not empty delete}">
				<div class="alert alert-success alert-dismissible fade show text-center">
					Xóa đơn hàng thành công.
					<button type="button" class="close" data-dismiss="alert">&times;</button>
				</div>	
</c:if>
<c:if test="${not empty pendings}">
				<div class="alert alert-success alert-dismissible fade show text-center">
					Trạng thái đơn hàng được đổi thành đang chờ xử lý.
					<button type="button" class="close" data-dismiss="alert">&times;</button>
				</div>	
</c:if>
<p id="mb">Kéo sang phải để xem chi tiết</p>
<h3 class="text-center">Tất cả đơn hàng</h3>
	<table id="example" class="table table-hover table-bordered text-center">
				<thead>
					<tr>
						<th>STT</th>
						<th>Mã đơn hàng.</th>
						<th>Chi tiết khách hàng</th>
						<th>Sản phẩm</th>
						<th>Số lượng.</th>
						<th>Tổng tiền (&#x20ab;)</th>
						<th>Trạng thái</th>
						<th>Ngày</th>
						<th>Xử lý</th>
					</tr>
				</thead>
				<tbody>
				<c:set var="count" value="0" scope="page"></c:set>
					<c:forEach var="orders" items="${orders}">
					<c:set var="count" value="${count + 1}" scope="page"></c:set>
						<tr>
							<td>${count}</td>
							<td>${orders.paymentId}</td>
							<td>${orders.order.customerName} | 
							${orders.order.customerEmail} | 
							${orders.order.customerPhone} | 
							${orders.order.customerAddress} | 
							${orders.order.customerAddressType} | 
							${orders.order.pinCode}
							</td>
							<td><a href="${pageContext.request.contextPath}/product/productdetails?code=${orders.product.code}" target="_blank">
          <img src="${pageContext.request.contextPath}${orders.product.image}" width="70" height="90" class="img img-responsiive" /></a>
          <br>${orders.product.name}</td>
          					<td>${orders.quantity}</td>
							<td>${orders.amount}</td>
							<td>
          <c:if test="${orders.orderStatus eq 'Pending'}">
          	<span class="badge badge-warning">Đang xử lý</span>
          	</c:if>
          	<c:if test="${orders.orderStatus eq 'Delivered'}">
          	<span class="badge badge-success">Đã giao</span>
          	</c:if>
          	<c:if test="${orders.orderStatus eq 'Cancelled'}">
          	<span class="badge badge-info">Đã hủy</span>
          	</c:if>
          </td>	
		<td><fmt:formatDate pattern="dd-MMM-yyyy hh:mm" value="${orders.order.orderDate}" /></td>
		<td>
		<c:if test="${orders.orderStatus eq 'Cancelled'}">
		<a href="${pageContext.request.contextPath}/admin/order/changeStatus/Pending/${orders.id}" class="btn btn-warning" onclick="return confirm('Thay đổi trạng thái thành đang xử lý?');">Đang xử lý</a>
		<hr><a href="${pageContext.request.contextPath}/admin/order/changeStatus/Delivered/${orders.id}" class="btn btn-success" onclick="return confirm('Thay đổi trạng thái đặt hàng thành đã giao?');">Đã giao</a>
		</c:if>
		<c:if test="${orders.orderStatus eq 'Delivered'}">
		<a href="${pageContext.request.contextPath}/admin/order/changeStatus/Pending/${orders.id}" class="btn btn-warning" onclick="return confirm('Thay đổi trạng thái thành đang xử lý?');">Đang xử lý</a>
		</c:if>
		<c:if test="${orders.orderStatus eq 'Pending'}">
		<a href="${pageContext.request.contextPath}/admin/order/changeStatus/Delivered/${orders.id}" class="btn btn-success" onclick="return confirm('Thay đổi trạng thái đặt hàng thành đã giao?');">Đã giao</a>
		</c:if>
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
<script src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js"></script>
<script src="https://cdn.datatables.net/1.10.20/js/dataTables.bootstrap4.min.js"></script>
<script>
	$(document).ready(function() {
	    $('#example').DataTable();
	} );
	</script>
</body>
</html>
