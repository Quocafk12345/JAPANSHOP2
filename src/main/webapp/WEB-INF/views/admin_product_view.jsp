<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>
<!DOCTYPE html>
<html>
<head>
<title>QT-Shop | Sản phẩm</title>
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
					<li>Xem sản phẩm</li>
				</ul>
			</div>
		</div>
	</div>
	<!-- //page -->
	<!-- register -->
	<div class="contact py-sm-5 py-4">
		<div class="container-fluid py-xl-4 py-lg-2">
	<c:if test="${not empty delete}">
				<div class="alert alert-success alert-dismissible fade show text-center">
					Xóa sản phẩm thành công.
					<button type="button" class="close" data-dismiss="alert">&times;</button>
				</div>	
	</c:if>
	<c:if test="${not empty invalid}">
				<div class="alert alert-danger alert-dismissible fade show text-center">
					Tên file không hợp lệ.
					<button type="button" class="close" data-dismiss="alert">&times;</button>
				</div>	
	</c:if>
<p id="mb">Kéo sang phải để xem chi tiết.</p>
	<table id="example" class="table table-hover table-bordered text-center">
				<thead>
					<tr>
						<th>STT.</th>
						<th>Tên</th>
						<th>Hình ảnh</th>
						<th>Mô tả</th>
						<th>Giá bán ra(&#x20ab;)</th>
						<th>Giá gốc(&#x20ab;)</th>
						<th>Ngày</th>
						<th>Hành động</th>
					</tr>
				</thead>
				<tbody>
				<c:set var="count" value="0" scope="page"></c:set>
					<c:forEach var="product" items="${product}">
					<c:set var="count" value="${count + 1}" scope="page"></c:set>
						<tr>
							<td>${count}</td>
							<td>${product.name}</td>
							<td><a href="${pageContext.request.contextPath}/product/productdetails?code=${product.code}" target="_blank">
          <img src="${pageContext.request.contextPath}${product.image}" width="70" height="90" class="img img-responsiive" /></a>
         </td>
							<td>${product.description}</td>
							<td><del>${product.mrpPrice}</del></td>
							<td>${product.price}</td>
							<td><fmt:formatDate pattern="dd-MMM-yyyy HH:mm" value="${product.createDate}" /></td>
							<td><a href="${pageContext.request.contextPath}/admin/product/edit/${product.code}"><i class="far fa-edit" style="font-size:30px;color:#F45C5D;"></i></a> |
  							<c:set var="fileName" value="${fn:split(product.image, '/')}" />
  							<a href="${pageContext.request.contextPath}/admin/product/delete/${product.id}/${fileName[1]}" style="font-size:30px;color:#F45C5D;" onclick="return confirm('Bạn muốn xóa sản phẩm này?');">
							<i class="fa fa-trash"></i></a>
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
