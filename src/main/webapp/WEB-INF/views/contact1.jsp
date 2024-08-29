<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Liên hệ</title>
<link rel="website icon" type="png" href="img/logo.PNG">

<!-- bootstrap 5 -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">

<!-- css -->
    <link rel="stylesheet" href="css/contact.css">
    <link rel="stylesheet" href="css/navbar.css">
    <link rel="stylesheet" href="css/footer.css">
    <link rel="stylesheet" href="css/all.css">

</head>
<body>
    <jsp:include page="../views/layouts/navbar.jsp"></jsp:include>
    <div class="contact bg-light py-5 text-center">
        <div class="container">
            <div class="row mb-4">
                <div class="col-12">
                    <h2 class="fw-bold">Liên hệ với chúng tôi</h2>
                    <p class="lead">Nếu bạn có bất kỳ thắc mắc nào hay câu hỏi thì hãy liên hệ với chúng tôi!</p>
                </div>
            </div>
            <div class="row g-4">
                <div class="col-md-6">
                    <!-- Embed Google Map -->
                    <div class="map-container">
                        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3322.567491435725!2d130.42532927641972!3d33.61652484061052!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x35418e324db56fd1%3A0xe8e1e53b42f9fb77!2zTmjhuq10IELhuqNuLCDjgJI4MTItMDA2MSBGdWt1b2thLCBIaWdhc2hpIFdhcmQsIEhha29tYXRzdSwgMi1jaMWNbWXiiJI44oiSOCDjg57jgq3jgrfjg6DnraXmnb4gMTAy!5e0!3m2!1svi!2s!4v1723449338367!5m2!1svi!2s" 
                        width="100%" height="450" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade" class="border rounded"></iframe>
                    </div>
                </div>
                <div class="col-md-6 text-start">
                    <!-- Contact Form -->
                    <form action="#" method="post">
                        <div class="form-floating mb-3">
                            <input type="text" class="form-control" id="name" name="name" placeholder="" required>
                            <label for="name">Họ Tên</label>
                        </div>
                        <div class="form-floating mb-3">
                            <input type="tel" class="form-control" id="phone" name="phone" placeholder="" required>
                            <label for="phone">Số Điện Thoại</label>
                        </div>
                        <div class="form-floating mb-3">
                            <input type="email" class="form-control" id="email" name="email" placeholder="" required>
                            <label for="email">Gmail</label>
                        </div>
                        <div class="form-floating mb-3">
                            <textarea class="form-control" id="message" name="message" placeholder="" style="height: 120px;" required></textarea>
                            <label for="message">Nội Dung</label>
                        </div>
                        <button type="submit" class="btn btn-contact w-100 py-2">Gửi</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <jsp:include page="../views/layouts/footer.jsp"></jsp:include>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>