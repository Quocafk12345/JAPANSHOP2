<!-- navigation -->
	<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
	<div class="navbar-inner">
		<div class="container">
			<nav class="navbar navbar-expand-lg navbar-light bg-light">
			<h1 class="text-left mr-12">
				<a href="${pageContext.request.contextPath}/admin/home" class="font-weight-bold font-italic" style="font-size: 22px;color:#F45C5D;">
					<img src="${pageContext.request.contextPath}/img/logo.png" style="width:120px;height:70px" class="img-fluid">&nbsp;
				</a>
			</h1>
				<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
				    aria-expanded="false" aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
				<div class="collapse navbar-collapse" id="navbarSupportedContent">
					<ul class="navbar-nav ml-auto text-center mr-xl-5">
						<li class="nav-item active mr-lg-2 mb-lg-0 mb-2">
							<a class="nav-link" href="${pageContext.request.contextPath}/admin/home">Trang chủ
								<span class="sr-only">(current)</span>
							</a>
						</li>
						<li class="nav-item dropdown mr-lg-2 mb-lg-0 mb-2">
							<a class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
								Sản phẩm
							</a>
							<div class="dropdown-menu">
								<a class="dropdown-item" href="${pageContext.request.contextPath}/admin/product/view">Xem sản phẩm</a>
								<a class="dropdown-item" href="${pageContext.request.contextPath}/admin/product/add">Thêm sản phẩm</a>
							</div>
						</li>
						<li class="nav-item dropdown mr-lg-2 mb-lg-0 mb-2">
							<a class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
								Order
							</a>
							<div class="dropdown-menu">
								<a class="dropdown-item" href="${pageContext.request.contextPath}/admin/order/view">Xem tất cả đơn hàng</a>
								<a class="dropdown-item" href="${pageContext.request.contextPath}/admin/order/pending-orders">Xem đơn hàng đang chờ xử lý</a>
								<div class="dropdown-divider"></div>
								<a class="dropdown-item" href="${pageContext.request.contextPath}/admin/order/delivered-orders">Xem đơn hàng đã giao</a>
<%-- 								<a class="dropdown-item" href="${pageContext.request.contextPath}/admin/order/cancelled-orders">Cancelled Orders</a> --%>
							</div>
						</li>
						<li class="nav-item dropdown mr-lg-2 mb-lg-0 mb-2">
							<a class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
								Khách hàng
							</a>
							<div class="dropdown-menu">
								<a class="dropdown-item" href="${pageContext.request.contextPath}/admin/customer/view">Xem khách hàng</a>
								<div class="dropdown-divider"></div>
								<a class="dropdown-item" href="${pageContext.request.contextPath}/admin/contact/view">Xem liên hệ</a>
							</div>
						</li>
						
						<li class="nav-item dropdown mr-lg-2 mb-lg-0 mb-2">
							<a class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
								Hi ${aname}
							</a>
							<div class="dropdown-menu">
								<a class="dropdown-item" href="${pageContext.request.contextPath}/admin/my-account">Tài khoản</a>
								<a class="dropdown-item" href="${pageContext.request.contextPath}/admin/changepassword">Đổi mật khẩu</a>
								<div class="dropdown-divider"></div>
								<a class="dropdown-item" href="${pageContext.request.contextPath}/admin/logout">Đăng xuất</a>
							</div>
						</li>	
						
					</ul>
				</div>
			</nav>
		</div>
	</div>
	<!-- //navigation -->
