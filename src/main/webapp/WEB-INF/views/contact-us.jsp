<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<title>QT-Shop | Liên hệ</title>
<style type="text/css">
.contact .btn-primary:hover {
	background-color: #0056b3;
}

.contact .contact-grid1:hover {
	transform: translateY(-10px);
}

.contact .contact-grid1 h4 {
	font-size: 1.5rem;
	color: #007bff;
}

.contact .contact-form1 {
	margin-bottom: 20px;
}

.contact .contact-form1 input, .contact .contact-form1 textarea {
	border-radius: 5px;
	padding: 10px;
	width: 100%;
	box-sizing: border-box;
}

.contact .contact-form1 input:focus, .contact .contact-form1 textarea:focus
	{
	outline: none;
	border-color: #0056b3;
}

.services-breadcrumb .w3_short li {
	display: inline;
	font-size: 18px;
}

.services-breadcrumb .w3_short li i {
	margin: 0 10px;
}

.contact .contact-grid1 {
	height: 320px;
	background: white;
	padding: 20px;
	border-radius: 10px;
	box-shadow: 0 0 15px rgba(0, 0, 0, 0.1);
	transition: transform 0.3s ease;
	background: white;
}

.tittle-w3l {
	font-size: 2.5rem;
	color: #007bff;
	font-weight: bold;
}

body {
	margin-left: 50px;
	border-left-style: ridge;
}

#xx {
	display: none;
}

@media only screen and (max-width: 760px) , ( min-device-width : 768px)
	and (max-device-width: 1024px) {
	p#mb {
		display: none;
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
}
</style>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
	crossorigin="anonymous">
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
	<!-- banner-2 -->
	<div class="page-head_agile_info_w3l"></div>
	<!-- //banner-2 -->
	<!-- page -->

	<!-- //page -->
	<!-- log in -->
	<br>
	<!-- contact -->
	<div class="contact">
		<div class="container py-xl-4 py-lg-2">
			<!-- tittle heading -->
			<h3 class="tittle-w3l text-center mb-lg-5 mb-sm-4 mb-3"
				style="font-size: 100px;">
				<span>Liên hệ với chúng tôi tại đây!!</span>
			</h3>
			<!-- //tittle heading -->
			<div class="row contact-grids agile-1 mb-5">
				<div class="col-sm-4 contact-grid agileinfo-6 mt-sm-0 mt-2">
					<div class="contact-grid1 text-center">
						<div class="con-ic">
							<i class="fas fa-map-marker-alt rounded-circle"></i>
						</div>
						<h4 class="font-weight-bold mt-sm-4 mt-3 mb-3">Địa chỉ</h4>
						<p style="font-weight: bold; color: black;">
							CÔNG TY TNHH ĐẠI HÙNG TẤN <label
								style="font-weight: bold; color: black;">18 Nguyễn Công
								Hoan, Phường 07, Quận Phú Nhuận, Thành phố Hồ Chí Minh, Việt Nam</label>
						</p>
					</div>
				</div>
				
				<div class="col-sm-4 contact-grid agileinfo-6 my-sm-0 my-4">
					<div class="contact-grid1 text-center">
						<div class="con-ic">
							<i class="fas fa-phone rounded-circle"></i>
						</div>
						<h4 class="font-weight-bold mt-sm-4 mt-3 mb-3">Gọi cho chúng
							tôi</h4>
						<p style="font-weight: bold; color: black;">
							<a style="font-weight: bold; color: black;"
								href="tel:+84 0318473223">+(84) 0318473223</a>

							<!-- 							<label>+(91) 121 122 000</label> -->
						</p>
					</div>
				</div>
				<div class="col-sm-4 contact-grid agileinfo-6">
					<div class="contact-grid1 text-center">
						<div class="con-ic">
							<i class="fas fa-envelope-open rounded-circle"></i>
						</div>
						<h4 class="font-weight-bold mt-sm-4 mt-3 mb-3">Email</h4>
						<p>
							<a style="font-weight: bold; color: black;"
								href="mailto:quocntps31889@fpt.edu.vn">quocntps31889@fpt.edu.vn</a>
						</p>
					</div>
				</div>
			</div>
			<div class="row">
                <div class="col-md-6">
                    <iframe
                        src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3919.1265707462544!2d106.68810267488291!3d10.801616789348707!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x317528c57413ee7b%3A0x7352a3210d78a512!2zMTggxJAuIE5ndXnhu4VuIEPDtG5nIEhvYW4sIFBoxrDhu51uZyA3LCBQaMO6IE5odeG6rW4sIEjhu5MgQ2jDrSBNaW5oLCBWaWV0bmFt!5e0!3m2!1sen!2s!4v1721287833301!5m2!1sen!2s"
                        width="100%" height="520" style="border:0;" allowfullscreen="" loading="lazy"
                        referrerpolicy="no-referrer-when-downgrade"></iframe>
                </div>
                <div class="col-md-6">
                    <!-- form -->
                    <form id="form" method="post">
                        <div class="contact-grids1 w3agile-6">
                            <div class="row w-100 bg-dark p-3 shadow-lg p-3 mb-5 bg-body rounded">
                                <c:choose>
                                    <c:when test="${not empty email}">
                                        <div class="col-12 contact-form1 form-group">
                                            <label class="col-form-label">Tên</label> 
                                            <input type="text" class="form-control" placeholder="Name" disabled="disabled" value="${name}" name="name" id="name" required="required">
                                            <p class="error" id="error_name"></p>
                                        </div>
                                        <div class="col-12 contact-form1 form-group">
                                            <label class="col-form-label">E-mail</label> 
                                            <input type="email" class="form-control" placeholder="Email" disabled="disabled" value="${email}" name="email" id="email" required="required">
                                            <p class="error" id="error_email"></p>
                                        </div>
                                    </c:when>
                                    <c:otherwise>
                                        <div class="col-12 contact-form1 form-group">
                                            <label class="col-form-label h1 fw-bold">Tên</label> 
                                            <input type="text" class="form-control" placeholder="Name" name="name" id="name" required="required">
                                            <p class="error" id="error_name"></p>
                                        </div>
                                        <div class="col-6 contact-form1 form-group">
                                            <label class="col-form-label h1 fw-bold">E-mail</label> 
                                            <input type="email" class="form-control" placeholder="Email" name="email" id="email" required="required">
                                            <p class="error" id="error_email"></p>
                                        </div>
                                    </c:otherwise>
                                </c:choose>
                                <div class="col-6 contact-form1 form-group">
                                    <label class="col-form-label h1 fw-bold">Chủ đề</label> 
                                    <input type="text" class="form-control" placeholder="Subject" name="subject" id="subject" required="required">
                                    <p class="error" id="error_subject"></p>
                                </div>
                                <div class="col-12 contact-form1 form-group">
                                    <label class="col-form-label h1 fw-bold">Tin nhắn</label>
                                    <textarea name="message" class="form-control" placeholder="Message" cols="45" rows="5" id="message" required="required"></textarea>
                                    <p class="error" id="error_message"></p>
                                </div>
                                <div class="right-w3l w-100 d-flex justify-content-center">
                                    <input type="button" class="btn btn-primary form-control w-50 text-center rounded fw-bold text-center" id="submit" value="Submit">
                                </div>
                                <br>
                            </div>
                        </div>
                    </form>
                    <!-- //form -->
                </div>
            </div>
		</div>
	</div>
	<!-- //contact -->
	<!---728x90--->
	<!-- map -->

	<!-- //map -->
	<jsp:include page="layouts/footer.jsp"></jsp:include>
	<script src="${pageContext.request.contextPath}/js/contact.js"></script>
</body>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
	crossorigin="anonymous"></script>
</html>
