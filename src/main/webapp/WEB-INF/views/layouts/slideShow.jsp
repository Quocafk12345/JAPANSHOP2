<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Slide Show</title> 
<!-- bootstrap 5 -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
<!-- css -->
    <link rel="stylesheet" href="css/slide_show.css">
</head>
<body>

    <div id="carouselExampleAutoplaying" class="carousel slide slide-show" data-bs-ride="carousel">
        <div class="carousel-inner">
          <div class="carousel-item active">
            <div class="carousel-caption row">
                <div class="col-5 ">
                    <div class="info">
                        <h1>Tên khuyễn mãi</h1>
                        <p>Giới thiệu ngắn</p>
                        <a href="" class="btn">Xem chi tiết</a>
                    </div>
                </div>
                <div class="col-7">
                    <img src="/img/Banner/Slide1.JPG" class="d-block w-100 shadow rounded" alt="...">
                </div>
            </div>
          </div>

          <div class="carousel-item">
            <img src="/img/Banner/Slide2.JPG" class="d-block w-100" alt="...">
            <div class="carousel-caption row">
                <div class="col-5 ">
                    <div class="info">
                        <h1>Tên khuyễn mãi</h1>
                        <p>Giới thiệu ngắn</p>
                        <a href="" class="btn">Xem chi tiết</a>
                    </div>
                </div>
                <div class="col-7">
                    <img src="img/Banner/Slide2.JPG" class="d-block w-100 shadow rounded" alt="...">
                </div>
            </div>
          </div>
          
          <div class="carousel-item">
            <img src="/img/Banner/Slide3.JPG" class="d-block w-100" alt="...">
            <div class="carousel-caption row">
                <div class="col-5 ">
                    <div class="info">
                        <h1>Tên khuyễn mãi</h1>
                        <p>Giới thiệu ngắn</p>
                        <a href="" class="btn">Xem chi tiết</a>
                    </div>
                </div>
                <div class="col-7">
                    <img src="/img/Banner/Slide3.JPG" class="d-block w-100 shadow rounded" alt="...">
                </div>
            </div>
          </div>
        </div>
        <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleAutoplaying" data-bs-slide="prev">
            <span class="h1" aria-hidden="true"><i class="bi bi-arrow-left-circle-fill"></i></span>
            <span class="visually-hidden">Previous</span>
          </button>
          <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleAutoplaying" data-bs-slide="next">
            <span class="h1" aria-hidden="true"><i class="bi bi-arrow-right-circle-fill"></i></span>
            <span class="visually-hidden">Next</span>
          </button>
    </div>

      

<!-- bootstrap 5 -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>