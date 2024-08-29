<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<title>QT-Shop | Đăng nhập</title>
  <script>
        window.onload = function() {
            const errorMessage = '<c:out value="${errorMessage}" />';
            if (errorMessage) {
                alert(errorMessage);
            }
        }
    </script>
<jsp:include page="layouts/header.jsp"></jsp:include>
</head>
<body>
	<!-- log in -->
	<br>
	<br>
	<div class="container h-100">
		<div class="d-flex justify-content-center h-100">
			<div class="row">
				<div class="col-md-12">
					<h2 class="text-center">Đăng nhập admin</h2>
					<hr>
					<form:form action="${pageContext.request.contextPath}/admin/home"
						modelAttribute="AdminLoginForm" method="post">
						<div class="form-group">
							<label class="col-form-label">Email</label>
							<form:input type="email" path="email" class="form-control"
								size="30" placeholder="Email" name="email" required="required" />
							<form:errors path="email" cssStyle="color:red;" cssClass="error" />
						</div>
						<div class="form-group">
							<label class="col-form-label">Mật khẩu</label>
							<form:password path="password" size="30" class="form-control"
								placeholder="Password" name="Password" id="password"
								required="required" />
							<form:errors path="password" cssStyle="color:red;"
								cssClass="error" />
						</div>
						<div class="right-w3l">
							<input type="submit" class="form-control" value="Login">
							<a href="/admin/forgot-password" style="color: #F45C5D">Quên
								mật khẩu?</a>
						</div>
					</form:form>
				</div>
			</div>
		</div>
	</div>
	<jsp:include page="layouts/footer.jsp"></jsp:include>
</body>
</html>