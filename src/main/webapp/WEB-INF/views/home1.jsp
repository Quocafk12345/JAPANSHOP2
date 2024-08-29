<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Tân An Natural</title>
<link rel="website icon" type="png" href="img/logo.PNG">

<!-- bootstrap 5 -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">

<!-- css -->
    <link rel="stylesheet" href="css/page/HomePage.css">
    <link rel="stylesheet" href="css/include/navbar.css">
    <link rel="stylesheet" href="css/include/footer.css">
    <link rel="stylesheet" href="css/all/all.css">

</head>
<body>
    <div class="homePage" id="homePage">
        <jsp:include page="../views/layouts/navbar.jsp"></jsp:include>
        <header class="container-fluid header-section d-flex align-items-center py-5">
            <div class="container">
                <div class="row align-items-center">
                    <div class="col-md-6">
                        <h1 class="header-title">Đến với <span class="TanAn">Tân An Natural</span></h1>
                        <p class="lead">Với những nghệ nhân tâm huyết với nghề và đội ngũ tận tâm với khách hàng, nhà Tre Việt đảm bảo mang đến những sản phẩm tốt nhất làm hài lòng tất cả quý khách hàng.</p>
                        <div class="mt-4 social">
                                <a href="#"><i class="bi bi-facebook"></i></a>
                                <a href="#"><i class="bi bi-youtube"></i></a>
                                <a href="#"><i class="bi bi-instagram"></i></a>
                        </div>
                    </div>
                    <div class="col-md-6 text-center">
                        <img src="img/SedgeBasket.jpg" class="img-fluid rounded border border-1 shadow" alt="Product Image">
                    </div>
                </div>
            </div>
        </header>
    
        <div class="container-fluid homePage-main">
             
             <section class="container services-section">
                <div class="row">
                    <div class="col-md-5 intro-title">
                        <h1><span class="highlight">Lý do</span> bạn nên chọn sản phẩm của chúng tôi!</h1>
                    </div>
                    <div class="col-md-7">
                        <div class="card service-card">
                            <div class="card-body text-center">
                                <i class="bi bi-cash service-icon"></i>
                                <h5>Giá cả cạnh tranh</h5>
                                <p>Đặt hàng dễ dàng - giao hàng nhanh chóng với giá tốt nhất thị trường.</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-7">
                        <div class="card service-card">
                            <div class="card-body text-center">
                                <i class="bi bi-tree service-icon"></i>
                                <h5>Sản phẩm tự nhiên và thân thiện với môi trường</h5>
                                <p>Được làm từ nguyên liệu tự nhiên gần gũi với thiên nhiên, sản phẩm giúp hạn chế một phần rác thải nhựa đối với môi trường!</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-5">
                        <div class="card service-card">
                            <div class="card-body text-center">
                                <i class="bi bi-stars service-icon"></i>
                                <h5>Chất lượng là trên hết</h5>
                                <p>Chúng tôi luôn không ngừng nghiên cứu cải thiện để mang đến những sản phẩm vừa đẹp vừa an toàn cho sức khoẻ.</p>
                            </div>
                        </div>
                    </div>
                </div>       

             </section>
            

            <section class="container-fluid product-featured py-5">
                <div class="text-center mb-5">
                    <h2 class="home-title">Sản phẩm nổi bật</h2>
                </div>
                <div class="container row" style="margin: 0 auto;">
                    <div class="col-lg-3 col-md-6 mb-4">
                        <div class="product-card p-1">
                            <img src="img/product-img.png" class="img-fluid mb-3 rounded" alt="Product Image">
                            <h5>Product Name</h5>
                            <p class="text-muted">0 vnd</p>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 mb-4">
                        <div class="product-card p-1">
                            <img src="img/product-img.png" class="img-fluid mb-3 rounded" alt="Product Image">
                            <h5>Product Name</h5>
                            <p class="text-muted">0 vnd</p>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 mb-4">
                        <div class="product-card p-1">
                            <img src="img/product-img.png" class="img-fluid mb-3 rounded" alt="Product Image">
                            <h5>Product Name</h5>
                            <p class="text-muted">0 vnd</p>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 mb-4">
                        <div class="product-card p-1">
                            <img src="img/product-img.png" class="img-fluid mb-3 rounded" alt="Product Image">
                            <h5>Product Name</h5>
                            <p class="text-muted">0 vnd</p>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 mb-4">
                        <div class="product-card p-1">
                            <img src="img/product-img.png" class="img-fluid mb-3 rounded" alt="Product Image">
                            <h5>Product Name</h5>
                            <p class="text-muted">0 vnd</p>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 mb-4">
                        <div class="product-card p-1">
                            <img src="img/product-img.png" class="img-fluid mb-3 rounded" alt="Product Image">
                            <h5>Product Name</h5>
                            <p class="text-muted">0 vnd</p>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 mb-4">
                        <div class="product-card p-1">
                            <img src="img/product-img.png" class="img-fluid mb-3 rounded" alt="Product Image">
                            <h5>Product Name</h5>
                            <p class="text-muted">0 vnd</p>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 mb-4">
                        <div class="product-card p-1">
                            <img src="img/product-img.png" class="img-fluid mb-3 rounded" alt="Product Image">
                            <h5>Product Name</h5>
                            <p class="text-muted">0 vnd</p>
                        </div>
                    </div>
                </div>
            </section>

            <section class="container-fluid policy py-5">
                <h2 class="home-title">Chính sách khi mua hàng</h2>
                <div class="row policy-container">
                    <div class="col-lg-4 col-md-12 policy-card"><a href=""><span><i class="bi bi-shield-check"></i></span> Chính sách bảo mật</a></div>
                    <div class="col-lg-4 col-md-12 policy-card"><a href=""><span><i class="bi bi-truck"></i></span>Chính sách vận chuyển</a></div>
                    <div class="col-lg-4 col-md-12 policy-card"><a href=""><span><i class="bi bi-cash"></i></span>Chính sách đổi trả</a></div>
                    <div class="col-lg-4 col-md-12 policy-card"><a href=""><span><i class="bi bi-receipt"></i></span>Chính sách thanh toán</a></div>
                    <div class="col-lg-4 col-md-12 policy-card"><a href=""><span><i class="bi bi-check2-square"></i></span>Chính sách kiểm hàng</a></div>
                </div>
            </section>

            
        </div>
        
        <jsp:include page="../views/layouts/footer.jsp"></jsp:include>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>