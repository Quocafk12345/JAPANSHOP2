<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<head>
<style type="text/css">
/* CSS code from above */
.carousel-item.item1 {
	background: url(../images/Banner-trang-chu.png) no-repeat center;
	background-size: cover;
}

.carousel-item.item2 {
	background: url(../images/banner-lich-2024khoa-1.jpg) no-repeat center;
	background-size: cover;
}

.carousel-item.item3 {
	background:
		url(https://nowads.com.vn/wp-content/uploads/2023/11/banner-li-xi-tet-2023.jpeg)
		no-repeat center;
	background-size: cover;
}

.carousel-container {
	display: flex;
	flex-wrap: wrap;
	justify-content: space-between;
	align-items: flex-start;
}

.carousel-item {
	flex: 1 1 30%;
	margin: 5px;
	border-radius: 10px;
	background-size: cover;
}

.carousel-item-top-right-container {
	display: flex;
	flex-direction: column;
	flex: 1 1 30%;
	margin: 5px;
	max-width: 40%;
}

.carousel-item-top-right {
	margin-top: 26px;
	position: relative;
	flex: 1;
	min-height: 280px;
	background-color: #ccc;
	border-radius: 10px;
	background:
		url("https://nowads.com.vn/wp-content/uploads/2023/05/Banner-Tui-giay.png");
	background-size: cover;
	transition: transform 0.3s ease; /* Add transition for smooth effect */
	overflow: hidden;
}

.carousel-item-top-right:hover {
	transform: scale(1.02); /* Enlarge the image slightly on hover */
}

.carousel-item-bottom-right-right:hover{
	transform: scale(1.02); /* Enlarge the image slightly on hover */

}
.carousel-item-bottom-left-right:hover{
	transform: scale(1.02); /* Enlarge the image slightly on hover */

}
.carousel-item-bottom-right-right{
		transition: transform 0.7s ease; /* Add transition for smooth effect */
}
.carousel-item-bottom-left-right{
		transition: transform 0.7s ease; /* Add transition for smooth effect */
}
.carousel-bottom-container {
	display: flex;
	justify-content: space-between;
	margin-top: 10px;	
}

.carousel-item-bottom-left-right {
	margin-top: 10px;
	flex: 1;
	background-color: #eee;
	min-height: 150px;
	border-radius: 10px;
	max-width: 50%; /* Ensure they fit in a row */
	background:
		url("https://nowads.com.vn/wp-content/uploads/elementor/thumbs/Banner-Deal-q6yq7pjrmpyw4bipx33rnwrhlnkxby870ukx7flc68.png");
	background-size: cover;
}

.carousel-item-bottom-right-right {
	margin-top: 10px;
	flex: 1;
	background-color: #eee;
	min-height: 150px;
	border-radius: 10px;
	max-width: 50%; /* Ensure they fit in a row */
	background:
		url("https://nowads.com.vn/wp-content/uploads/elementor/thumbs/Banner-Catalogue-1-q6yq7olxfvxlspk32kp53f0109pk494gopxfq5mqcg.png");
	background-size: cover;
}


.carousel-item-bottom-left-right {
	margin-right: 2%; /* Space between the two bottom items */
}

.carousel-inner {
	display: flex;
	flex-wrap: wrap;
	justify-content: space-between;
}

.carousel-caption {
	background: rgba(16, 16, 16, 0.27);
	text-align: left;
	position: inherit;
	box-shadow: 0px 2px 2px 2px rgba(2, 2, 2, 0.43);
}

.carousel-caption h2, .carousel-caption h3 {
	font-size: 60px;
	letter-spacing: 4px;
	text-transform: uppercase;
	text-shadow: 3px 8px 2px rgb(12, 12, 12);
}

.carousel-caption h2 span, .carousel-caption h3 span {
	font-weight: 800;
	color: #F45C5D;
}

.carousel-caption p {
	letter-spacing: 5px;
	font-size: 24px;
	color: #fff;
	text-shadow: 3px 5px 2px rgb(12, 12, 12);
}

.carousel-caption p span {
	font-size: 40px;
	letter-spacing: 0px;
	font-weight: 600;
}

@media ( max-width : 1366px) {
	.carousel-control-prev, .carousel-control-next {
		width: 1%;
	}
}
</style>
</head>
<!-- banner -->
<div id="carouselExampleIndicators" class="carousel slide"
	data-ride="carousel">
	<!-- Indicators-->
	<ol class="carousel-indicators">
		<li data-target="#carouselExampleIndicators" data-slide-to="0"
			class="active"></li>
		<li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
		<li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
	</ol>

	<div class="carousel-inner carousel-container">
		<div class="carousel-item item1 active">
			<a class="carousel-control-prev" href="#carouselExampleIndicators"
				role="button" data-slide="prev"> <span
				class="carousel-control-prev-icon" aria-hidden="true"></span> <span
				class="sr-only">Trước</span>
			</a> <a class="carousel-control-next" href="#carouselExampleIndicators"
				role="button" data-slide="next"> <span
				class="carousel-control-next-icon" aria-hidden="true"></span> <span
				class="sr-only">Sau</span>
			</a>
		</div>

		<div class="carousel-item item2">
			<a class="carousel-control-prev" href="#carouselExampleIndicators"
				role="button" data-slide="prev"> <span
				class="carousel-control-prev-icon" aria-hidden="true"></span> <span
				class="sr-only">Trước</span>
			</a> <a class="carousel-control-next" href="#carouselExampleIndicators"
				role="button" data-slide="next"> <span
				class="carousel-control-next-icon" aria-hidden="true"></span> <span
				class="sr-only">Sau</span>
			</a>
		</div>

		<div class="carousel-item item3">
			<a class="carousel-control-prev" href="#carouselExampleIndicators"
				role="button" data-slide="prev"> <span
				class="carousel-control-prev-icon" aria-hidden="true"></span> <span
				class="sr-only">Trước</span>
			</a> <a class="carousel-control-next" href="#carouselExampleIndicators"
				role="button" data-slide="next"> <span
				class="carousel-control-next-icon" aria-hidden="true"></span> <span
				class="sr-only">Sau</span>
			</a>
		</div>

		<div class="carousel-item-top-right-container">
			<div class="carousel-item-top-right">
				<div class="content-banner text-white text-left">
					<h4 class="banner-title wd-fontsize-l"
						style="display: flex; justify-content: left; margin-top: 70px; margin-left: 20px"
						data-elementor-setting-key="title">
						GIẢM 5%<br> TRÊN TỔNG BILL
					</h4>
				</div>
			</div>
			<div class="carousel-bottom-container fs-2">
				<div class="carousel-item-bottom-left-right">
					<!-- Nội dung của phần tử này -->
					<div class="content-banner text-white text-left">
						<h4 class="banner-title wd-fontsize-l"
							style="display: flex; justify-content: left; margin-top: 50px; margin-left: 20px"
							data-elementor-setting-key="title">SÁNG IN</h4>
						<div
							class="banner-inner set-cont-mb-s reset-last-child wd-fontsize-xs"
							data-elementor-setting-key="content">
							<p
								style="display: flex; justify-content: left; margin-left: 20px">16H
								CÓ HÀNG</p>
						</div>
					</div>
				</div>
				<div class="carousel-item-bottom-right-right">
					<!-- Nội dung của phần tử này -->
					<div
						class="wrapper-content-banner wd-fill wd-items-middle wd-justify-left">
						<div class="content-banner  text-left">
							<h4 class="banner-title text-white wd-fontsize-l"
								style="display: flex; justify-content: left; margin-top: 50px; margin-left: 20px"
								data-elementor-setting-key="title">Thiết Kế Catalogue</h4>
							<div
								class="banner-inner set-cont-mb-s reset-last-child wd-fontsize-xs"
								style="display: flex; justify-content: left; margin-left: 20px"
								data-elementor-setting-key="content">
								<p>Chuyên Nghiệp</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- //banner -->
