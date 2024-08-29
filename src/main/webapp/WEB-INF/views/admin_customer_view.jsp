<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<title>QT-Shop | Khách hàng</title>
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
	<!-- banner-2 -->
	<div class="page-head_agile_info_w3l"></div>
	<!-- //banner-2 -->
	<!-- page -->
	<div class="services-breadcrumb">
		<div class="agile_inner_breadcrumb">
			<div class="container">
				<ul class="w3_short">
					<li><a href="/admin/home">Trang chủ</a> <i>|</i></li>
					<li>Xem khách hàng</li>
				</ul>
			</div>
		</div>
	</div>
	<!-- //page -->
	<!-- register -->
	<div class="contact py-sm-5 py-4">
	<c:if test="${not empty delete}">
				<div class="alert alert-success alert-dismissible fade show text-center">
					Xóa khách hàng thành công.
					<button type="button" class="close" data-dismiss="alert">&times;</button>
				</div>	
			</c:if>
		<div class="container-fluid py-xl-4 py-lg-2">
			<p id="mb">Kéo sang phải để xem đầy đủ bảng.</p>
	<table id="example" class="table table-hover table-bordered text-center">
				<thead>
					<tr>
						<th>Stt</th>
						<th>Tên khách hàng</th>
						<th>Email</th>
						<th>Giới tính</th>
						<th>SDT</th>
						<th>Địa chỉ</th>
						<th>Ngày sinh</th>
						<th>Xóa</th>
					</tr>
				</thead>
				<tbody>
				<c:set var="count" value="0" scope="page"></c:set>
					<c:forEach var="customer" items="${customer}">
					<c:set var="count" value="${count + 1}" scope="page"></c:set>
						<tr>
							<td>${count}</td>
							<td>${customer.name}</td>
							<td>${customer.email}</td>
							<td>${customer.gender}</td>
							<td>${customer.phone}</td>
							<td>${customer.address}</td>
							<td><fmt:formatDate pattern="dd-MMM-yyyy HH:mm" value="${customer.createDate}" /></td>
							<td><a href="${pageContext.request.contextPath}/admin/customer/delete/${customer.id}" style="font-size:40px;color:#F45C5D;" onclick="return confirm('Are you sure you want to delete this customer?');">
							<i class="far fa-times-circle"></i></a></td>
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
