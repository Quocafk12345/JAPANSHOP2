<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<title>QT-Shop | Đăng ký</title>
<c:choose>
	<c:when test="${not empty email }">
		<jsp:include page="layouts/user-header.jsp"></jsp:include>
	</c:when>
	<c:otherwise>
		<jsp:include page="layouts/header.jsp"></jsp:include>
	</c:otherwise>
</c:choose>
<style type="text/css">
.form-control {
	border-radius: 5px;
}
</style>
</head>
<body>
	<!-- banner-2 -->
	<div class="page-head_agile_info_w3l"></div>

	<!-- log in -->
	<br>
	<!-- register -->
	<div class="contact py-sm-5 py-4">
		<div class="container py-xl-4 py-lg-2">
			<c:if test="${not empty test}">
				<div class="alert alert-success alert-dismissible fade show">
					Cập nhật thông tin thành công.
					<button type="button" class="close" data-dismiss="alert">&times;</button>
				</div>
			</c:if>
			<!-- form -->
			<h1
				style="margin-left: 200px; color: green; font-weight: bold; margin-bottom: 50px">ĐĂNG
				KÝ</h1>

			<form:form
				action="${pageContext.request.contextPath}/customer/saveCustomer"
				modelAttribute="customerForm" method="post">
				<div class="contact-grids1 w3agile-6">
					<div class="row">
						<div class="col-md-6 col-sm-6 contact-form1 form-group">
							<label class="col-form-label">Họ và tên</label>
							<form:input path="name" class="form-control"
								placeholder="Họ và tên" id="name" name="Name"
								required="required" />
							<form:errors path="name" cssStyle="color:red;" cssClass="error" />
							<span id="spnName"></span>
						</div>
						<div class="col-md-6 col-sm-6 contact-form1 form-group">
							<label class="col-form-label">Email</label>
							<form:input type="email" path="email" class="form-control"
								id="email" placeholder="Email" name="Email" required="required" />
							<form:errors path="email" cssStyle="color:red;" cssClass="error" />
							<span id="spnEmail"></span>
						</div>
						<div class="col-md-6 col-sm-6 contact-form1 form-group">
							<label class="col-form-label">Mật khẩu</label>
							<form:password path="password" maxlength="64" minlength="6"
								class="form-control" placeholder="Mật khẩu" name="Password"
								id="password" required="required" />
							<form:errors path="password" cssStyle="color:red;"
								cssClass="error" />
							<span id="spnPassword"></span>
						</div>
						<div class="col-md-6 col-sm-6 contact-form1 form-group">
							<label class="col-form-label">SĐT</label>
							<form:input path="phone" class="form-control" maxlength="10"
								id="phone" placeholder="Số điện thoại" name="phone"
								required="required" />
							<form:errors path="phone" cssStyle="color:red;" cssClass="error" />
							<span id="spnPhone"></span>
						</div>
						<div class="col-md-6 col-sm-6 contact-form1 form-group">
							<label class="col-form-label">Giới tính</label>
							<form:select path="gender" name="gender" id="gender"
								class="form-control" require="required">
								<form:option value="0" selected="selected">Chọn giới tính</form:option>
								<form:option value="Male">Nam</form:option>
								<form:option value="Female">Nữ</form:option>
							</form:select>
							<form:errors path="gender" cssStyle="color:red;" cssClass="error" />
							<span id="spnGender"></span>
						</div>
						<div class="col-md-6 col-sm-6 contact-form1 form-group">
							<label class="col-form-label">Mã pin</label>
							<form:input path="pinCode" class="form-control" maxlength="6"
								id="pin" placeholder="Pin Code" name="pin" required="required" />
							<form:errors path="pinCode" cssStyle="color:red;"
								cssClass="error" />
							<span id="spnPin"></span>
						</div>
						<div class="col-md-6 col-sm-6 contact-form1 form-group">
							<label class="col-form-label">Địa chỉ</label>
							<form:textarea path="address" class="form-control" id="address"
								placeholder="Địa chỉ" rows="4" cols="45" name="address"
								required="required"></form:textarea>
							<form:errors path="address" cssStyle="color:red;"
								cssClass="error" />
							<span id="spnAddress"></span>
						</div>
					</div>
					<div class="right-w3l col-md-6">
						<input type="submit" id="submit" class="form-control bg-success"
							value="Đăng ký">
					</div>
				</div>
			</form:form>
			<!-- //form -->
		</div>
	</div>
	<jsp:include page="layouts/footer.jsp"></jsp:include>
	<script type="text/javascript">
		$(document).ready(function() {
			$('#phone').blur(function(e) {
				if (validatePhone('phone')) {
				} else {
					$('#spnPhone').html('Invalid Phone Number.');
					$('#spnPhone').css('color', 'red');
				}
			});
		});

		function validatePhone(phone) {
			var a = document.getElementById(phone).value;
			var filter = /^\d*(?:\.\d{1,2})?$/;
			if (filter.test(a)) {
				return true;
			} else {
				return false;
			}
		}
		$(document)
				.ready(
						function() {
							$('#submit')
									.click(
											function(e) {
												var name = $("#name").val();
												var email = $("#email").val();
												var password = $("#password")
														.val();
												var phone = $("#phone").val();
												var address = $("#address")
														.val();
												var gender = $("#gender").val();
												var pin = $("#pin").val();
												var validateMobNum = /^\d*(?:\.\d{1,2})?$/;
												if (name === "" || email === ""
														|| password === ""
														|| phone === ""
														|| address === ""
														|| gender === ""
														|| pin === "") {
													$('#spnName')
															.html(
																	'Vui lòng nhập Email.');
													$('#spnName').css('color',
															'red');
													$('#spnEmail')
															.html(
																	'Vui lòng nhập Email.');
													$('#spnEmail').css('color',
															'red');
													$('#spnPassword')
															.html(
																	'Vui lòng nhập mật khẩu.');
													$('#spnPassword').css(
															'color', 'red');
													$('#spnPhone')
															.html(
																	'Vui lòng nhập số điện thoại.');
													$('#spnPhone').css('color',
															'red');
													$('#spnGender')
															.html(
																	'Vui lòng chọn giới tính.');
													$('#spnGender').css(
															'color', 'red');
													$('#spnAddress')
															.html(
																	'Vui lòng nhập địa chỉ.');
													$('#spnAddress').css(
															'color', 'red');
													$('#spnPin')
															.html(
																	'Vui lòng nhập mã pin.');
													$('#spnPin').css('color',
															'red');
												} else if (validateMobNum
														.test(phone)
														&& phone.length == 10) {
													//alert("Valid Mobile Number");
													return true;
												} else {
													//alert("Invalid Mobile Number");
													$('#spnPhone')
															.html(
																	'Vui lòng nhập số .');
													$('#spnPhone').css('color',
															'red');
													e.preventDefault();
													return false;
												}
											});
						});
	</script>
</body>
</html>