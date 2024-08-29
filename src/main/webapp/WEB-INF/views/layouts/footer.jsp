<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Footer Example with Map</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom CSS -->
<link href="${pageContext.request.contextPath}/css/footer.css"
	rel="stylesheet" type="text/css" media="all" /></head>
<body>
<footer class="footer bg-light py-4 text-center bg-dark text-light">
    <div class="container justify-content-center">
        <div class="row">
            <div class="col-md-3">
                <h4 class="font-weight-bold">Vị trí</h4>
                <!-- Embed Google Map -->
                <div class="map-container">
                    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3322.567491435725!2d130.42532927641972!3d33.61652484061052!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x35418e324db56fd1%3A0xe8e1e53b42f9fb77!2zTmjhuq10IELhuqNuLCDjgJI4MTItMDA2MSBGdWt1b2thLCBIaWdhc2hpIFdhcmQsIEhha29tYXRzdSwgMi1jaMWNbWXiiJI44oiSOCDjg57jgq3jgrfjg6DnraXmnb4gMTAy!5e0!3m2!1svi!2s!4v1723449338367!5m2!1svi!2s" 
                    width="100%" height="450" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade" class="border"></iframe>
                </div>
            </div>
            <div class="col-md-3 text-start">
                <h4 class="font-weight-bold text-center">Liên hệ</h4>
                <p><i class="bi bi-geo-alt"></i> 123 Đường Abc, Quận Xyz, Hà Nội</p>
                <p><i class="bi bi-telephone"></i> +84 123 456 789</p>
                <p><i class="bi bi-envelope"></i> info@example.com</p>
            </div>
            <div class="col-md-3">
                <h4 class="font-weight-bold">Chính sách</h4>
                <ul class="list-unstyled">
                    <li><a href="#">Chính sách bảo mật</a></li>
                    <li><a href="#">Điều khoản sử dụng</a></li>
                    <li><a href="#">Chính sách đổi trả</a></li>
                    <li><a href="#">Chính sách giao hàng</a></li>
                </ul>
            </div>
            <div class="col-md-3">
                <h4 class="font-weight-bold">Mạng xã hội</h4>
                <a href="#"><i class="bi bi-facebook"></i></a>
                <a href="#"><i class="bi bi-twitter"></i></a>
                <a href="#"><i class="bi bi-linkedin"></i></a>
                <a href="#"><i class="bi bi-instagram"></i></a>
            </div>
        </div>
    </div>
</footer>

<script src="${pageContext.request.contextPath}/js/jquery-2.2.3.min.js"></script>
	<!-- nav smooth scroll -->
	<script>
		$(document).ready(function () {
			$(".dropdown").hover(
				function () {
					$('.dropdown-menu', this).stop(true, true).slideDown("fast");
					$(this).toggleClass('open');
				},
				function () {
					$('.dropdown-menu', this).stop(true, true).slideUp("fast");
					$(this).toggleClass('open');
				}
			);
		});
	</script>
	<!-- //nav smooth scroll -->
	<!-- popup modal (for location)-->
	<script src="${pageContext.request.contextPath}/js/jquery.magnific-popup.js"></script>
	<script>
		$(document).ready(function () {
			$('.popup-with-zoom-anim').magnificPopup({
				type: 'inline',
				fixedContentPos: false,
				fixedBgPos: true,
				overflowY: 'auto',
				closeBtnInside: true,
				preloader: false,
				midClick: true,
				removalDelay: 300,
				mainClass: 'my-mfp-zoom-in'
			});

		});
	</script>
	<!-- //popup modal (for location)-->

	<!-- cart-js -->
	<script src="${pageContext.request.contextPath}/js/minicart.js"></script>
	<script>
		paypals.minicarts.render(); 
		paypals.minicarts.cart.on('checkout', function (evt) {
			var items = this.items(),
				len = items.length,
				total = 0,
				i;
			// Count the number of each item in the cart
			for (i = 0; i < len; i++) {
				total += items[i].get('quantity');
			}
		});
	</script>
	<script src="${pageContext.request.contextPath}/js/scroll.js"></script>
	<script src="${pageContext.request.contextPath}/js/SmoothScroll.min.js"></script>
	<script src="${pageContext.request.contextPath}/js/move-top.js"></script>
	<script src="${pageContext.request.contextPath}/js/easing.js"></script>
	<script>
		jQuery(document).ready(function ($) {
			$(".scroll").click(function (event) {
				event.preventDefault();

				$('html,body').animate({
					scrollTop: $(this.hash).offset().top
				}, 1000);
			});
		});
	</script>
	<script>
		$(document).ready(function () {
			$().UItoTop({
				easingType: 'easeOutQuart'
			});
		});
	</script>
	<script src="${pageContext.request.contextPath}/js/bootstrap.js"></script>
<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.min.js"></script>
<!-- Bootstrap Icons -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons/font/bootstrap-icons.css">
</body>
</html>
