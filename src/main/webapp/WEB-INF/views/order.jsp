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
<title>QT-Shop | Đặt hàng</title>
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
							chủ</a> <i>|</i></li>
					<li>Đặt hàng</li>
				</ul>
			</div>
		</div>
	</div>
	<!-- //page -->
	<!-- checkout page -->
	<div class="privacy py-sm-5 py-4">
		<div class="container py-xl-4 py-lg-2">
			<!-- tittle heading -->
			<h3 class="tittle-w3l text-center mb-lg-5 mb-sm-4 mb-3">
				<span>Đ</span>ặt hàng
			</h3>
			<c:if test="${not empty success }">
				<c:set var="totalAmount" value="${totalAmount}" scope="session"></c:set>
				<fmt:formatDate var="orderDate" pattern="dd-MMM-yyyy"
					value="${orderDate}" scope="session" />
				<c:set var="paymentId" value="${paymentId}" scope="session"></c:set>
				<h4 class="text-center">
					Đơn hàng của bạn đã được đặt. <a
						href="${pageContext.request.contextPath}/orders/getPdf"> nhấn</a>
					vào đây để nhận hóa đơn về email.
				</h4>
			</c:if>
		</div>
	</div>
	<!-- //checkout page -->
	<div>
		<div></div>
	</div>
	<jsp:include page="layouts/footer.jsp"></jsp:include>
</body>
</html>