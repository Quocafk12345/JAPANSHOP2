<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <nav class="navbar navbar-expand-lg bg-light shadow sticky-top">
        <div class="container-fluid">
          <div class="navbar-brand" href="#">
            <img src="img/logo.png" alt="" class="navbar-logo">
            <h3 class="fw-bold ms-3 brand-name"><Span>Tân An</Span> Natural</h2>
          </div>
          
          <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#Menu" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <i class="bi bi-three-dots-vertical"></i>
          </button>
          <div class="collapse navbar-collapse" id="Menu">
            <ul class="navbar-nav w-100 justify-content-center">
                <li class="nav-item">
                    <a class="nav-link" aria-current="page" href="/">Trang chủ</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#intro">Giới Thiệu</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/store">Sản Phẩm</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/contact">Liên Hệ</a>
                </li>
                </ul>
          </div>

          <div class="row">
            <form action="" class="search col-8 d-flex">
                <input type="text" placeholder="search...">
                <button class="fw-bold"><i class="bi bi-search"></i></button>
            </form>

            <div class="navbar-btn col-4" style="display: flex; place-items: center;">                    
                <div class="btn-group">
                    <button type="button"  data-bs-toggle="dropdown" data-bs-display="static" aria-expanded="false">
                        <i class="bi bi-bell-fill"></i>
                    </button>
                    <ul class="dropdown-menu dropdown-menu-lg-end">
                        Thông báo sẽ xuất hiện tại đây
                    </ul>
                </div>
                <div class="btn-group">
                    <button class="btn" type="button" data-bs-toggle="offcanvas" data-bs-target="#cartOffcanvasRight" aria-controls="offcanvasRight">
                        <i class="bi bi-cart-fill"></i></button>
                </div>
                <div class="btn-group">
                  <button type="button" class="btn" data-bs-toggle="modal" data-bs-target="#login">
                    <i class="bi bi-person-circle"></i></button>
                  </div>
            </div>
          </div>

        </div>
      </nav>
      <!-- login -->
      <div class="modal fade" id="login" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="loginLabel" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered modal-dialog-scrollable">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="loginLabel">Đăng Nhập</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <!-- Login Form -->
                    <form class="login-form">
                        <div class="mb-3">
                            <input type="email" class="form-control" placeholder="Email" required>
                        </div>
                        <div class="mb-3 password-toggle">
                            <input type="password" class="form-control" id="login-password" placeholder="Mật khẩu" required>
                            <span class="toggle-btn" onclick="togglePassword('login-password')"><i class="bi bi-eye-fill"></i></span>
                        </div>
                        <button type="submit" class="btn btn-login">Đăng Nhập</button>
                    </form>
                    <div class="switch-link">
                        <span>Bạn chưa có tài khoản?</span> <a href="#" onclick="switchToRegister()">Đăng ký</a>
                    </div>

                    <!-- Registration Form -->
                    <form class="register-form d-none">
                        <div class="mb-3">
                            <input type="email" class="form-control" placeholder="Email" required>
                        </div>
                        <div class="mb-3">
                            <input type="text" class="form-control" placeholder="Số điện thoại" required>
                        </div>
                        <div class="mb-3 password-toggle">
                            <input type="password" class="form-control" id="register-password" placeholder="Mật khẩu" required>
                            <span class="toggle-btn" onclick="togglePassword('register-password')"><i class="bi bi-eye-fill"></i></span>
                        </div>
                        <button type="submit" class="btn btn-register">Đăng Ký</button>
                    </form>
                    <div class="switch-link d-none">
                        <span>Đã có tài khoản?</span> <a href="#" onclick="switchToLogin()">Đăng nhập</a>
                    </div>
                    <div class="forgot-password">
                      <a href="#">Quên mật khẩu?</a>
                  </div>
                </div>
            </div>
        </div>
    </div>
      <!-- cart -->
      <div class="offcanvas offcanvas-end" tabindex="-1" id="cartOffcanvasRight" aria-labelledby="offcanvasRightLabel">
        <div class="offcanvas-header">
            <h5 id="offcanvasRightLabel">Giỏ hàng</h5>
            <button type="button" class="btn-close btn-light" data-bs-dismiss="offcanvas" aria-label="Close"></button>
        </div>
        <div class="offcanvas-body">
            <!-- Cart Items -->
            <div class="cart-item">
                <img src="https://via.placeholder.com/60" alt="Product 1">
                <div class="cart-item-info">
                    <div class="cart-item-title">Product 1</div>
                    <div class="quantity-controls">
                        <button onclick="decrementQuantity(this)">-</button>
                        <input type="text" class="quantity-display" value="2" readonly>
                        <button onclick="incrementQuantity(this)">+</button>
                    </div>
                    <div class="cart-item-price">200,000₫</div>
                </div>
                <button class="btn-remove">Xóa</button>
            </div>
            <div class="cart-item">
                <img src="https://via.placeholder.com/60" alt="Product 2">
                <div class="cart-item-info">
                    <div class="cart-item-title">Product 2</div>
                    <div class="quantity-controls">
                        <button onclick="decrementQuantity(this)">-</button>
                        <input type="text" class="quantity-display" value="1" readonly>
                        <button onclick="incrementQuantity(this)">+</button>
                    </div>
                    <div class="cart-item-price">150,000₫</div>
                </div>
                <button class="btn-remove">Xóa</button>
            </div>
        </div>
        <div class="offcanvas-footer d-flex justify-content-between">
            <!-- Footer Buttons -->
            <button class="btn btn-clear">Xóa giỏ hàng</button>
            <button class="btn btn-checkout">Thanh toán</button>
        </div>
    </div>
    <script>
      function incrementQuantity(button) {
          const input = button.previousElementSibling;
          input.value = parseInt(input.value) + 1;
      }

      function decrementQuantity(button) {
          const input = button.nextElementSibling;
          if (parseInt(input.value) > 1) {
              input.value = parseInt(input.value) - 1;
          }
      }
      function togglePassword(id) {
        const passwordField = document.getElementById(id);
        if (passwordField.type === "password") {
            passwordField.type = "text";
        } else {
            passwordField.type = "password";
        }
    }

    function switchToRegister() {
        document.querySelector('.login-form').classList.add('d-none');
        document.querySelector('.register-form').classList.remove('d-none');
        document.querySelector('.switch-link').classList.add('d-none');
        document.querySelectorAll('.switch-link')[1].classList.remove('d-none');
        document.getElementById('loginLabel').innerText = 'Đăng Ký';
    }

    function switchToLogin() {
        document.querySelector('.login-form').classList.remove('d-none');
        document.querySelector('.register-form').classList.add('d-none');
        document.querySelector('.switch-link').classList.remove('d-none');
        document.querySelectorAll('.switch-link')[1].classList.add('d-none');
        document.getElementById('loginLabel').innerText = 'Đăng Nhập';
    }
  </script>