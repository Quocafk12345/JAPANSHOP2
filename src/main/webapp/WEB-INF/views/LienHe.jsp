<!DOCTYPE html>
<html>

<head>
    <title>CÔNG TY TNHH XỬ LÝ NƯỚC ĐẠI HÙNG TẤN</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
    <link rel="stylesheet" href="LienHe.css">
    <link rel="stylesheet" href="LienHebtn.css">
</head>

<body>

    <div class="container w-75 row">
        <div class="col-12 m-5">
            <h2 class="title text-center mb-3"></h2>
        </div>
        <div class="col-7">

            <div class="map-container">
                <iframe
                    src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3919.1265707462544!2d106.68810267488291!3d10.801616789348707!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x317528c57413ee7b%3A0x7352a3210d78a512!2zMTggxJAuIE5ndXnhu4VuIEPDtG5nIEhvYW4sIFBoxrDhu51uZyA3LCBQaMO6IE5odeG6rW4sIEjhu5MgQ2jDrSBNaW5oLCBWaWV0bmFt!5e0!3m2!1sen!2s!4v1721287833301!5m2!1sen!2s"
                    width="600" height="650" style="border:0;" allowfullscreen="" loading="lazy"
                    referrerpolicy="no-referrer-when-downgrade"></iframe>
            </div>

        </div>

        <div class="col-5">
            <div class="fdb-info mt-1">
                <p>
                    <b>CÔNG TY TNHH XỬ LÝ NƯỚC ĐẠI HÙNG TẤN</b><br>
                    <i class="fas fa-map-marker-alt"></i> 18 Đ. Nguyễn Công Hoan, Phường 7, Phú Nhuận, Hồ Chí Minh<br>
                    <i class="fas fa-phone"></i> 0318.473.223<br>
                    <i class="fas fa-envelope"></i> daihungtan@gmail.com hoặc daihungtan.com.vn<br>
                    <i class="fas fa-globe"></i> https://daihungtan.com.vn
                </p>
            </div>
            <h2 class="title text-center mb-3">Ý kiến phản hồi</h2>
            <div class="alert alert-danger validation-summary-valid" data-valmsg-summary="true" style="display: none;">
                <ul>
                    <li style="display:none"></li>
                </ul>
            </div>
            <form>
                <input type="hidden" name="send" value="true">
                <div class="mb-3 row">
                    <label for="FB_Names" class="col-3 col-form-label">Tên:</label>
                    <div class="col-9">
                        <input type="text" class="form-control" id="FB_Names" name="FB_Names" required>
                    </div>
                </div>

                <div class="mb-3 row">
                    <label for="FB_Address" class="col-3 col-form-label">Địa chỉ:</label>
                    <div class="col-9">
                        <input type="text" class="form-control" id="FB_Address" name="FB_Address" required>
                    </div>
                </div>

                <div class="mb-3 row">
                    <label for="FB_Email" class="col-3 col-form-label">Email:</label>
                    <div class="col-9">
                        <input type="text" class="form-control" id="FB_Email" name="FB_Email" required>
                    </div>
                </div>

                <div class="mb-3 row">
                    <label for="FB_Address" class="col-3 col-form-label">Điện thoại:</label>
                    <div class="col-9">
                        <input type="tel" class="form-control" id="FB_Tel" name="FB_Tel" required>
                    </div>
                </div>

                <div class="mb-3">
                    <label for="FB_Content" class="form-label">Nội dung:</label>
                    <textarea class="form-control" id="FB_Content" name="FB_Content" rows="2" required></textarea>
                </div>

                <div style="position:relative">
                    <label for="FB_Content" class="form-label">Mã bảo vệ:</label>
                    <input name="CaptchaCode" type="text" value="" required="">
                    <img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAFAAAAAhCAYAAABObyzJAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAJcEhZcwAADsMAAA7DAcdvqGQAAAHuSURBVGhD7ZaxlsQgCEX3/78qffrU6VOnds0kE1DhQYaUcM6rRMUroH/TNJXU70qAQSXAoBJgUAkwqAQYVAIMSgE4l3UvLtsWaT5pvhfayiKMf0V+zLZF9D20bJeP1/a1zGy+uJ9oOO4wwNP2ss7SOh6ASx3BJl1SFKB/vgHw8kr70RJg0OwSBn3oFPbVS9i5x11repuQhdansX2du7FnehWgFIwOkHofPoTXrxMET2taj6ClOMB5rSF+XcfxOMAnl0kifu3jcaoFKD0oXrAxgAye5hcu4ar7gF6AxqU2cUPDL/ChV74xKIPQN4bGQH/jhxWzaRTa86MOYA+Z5lcz9nwF4GEaRHwYKqXD+oMMpeUCyNbUMpZSWs8wtjlKkHAPbA4p+D7NhsG21R3LR3dAT1/tXowBuLj4I1KFStEEeGnItnutJ7H4Du2VJ/b8SActAQbtlRLmfaxvuKgMqF3p5UaljVtA00thzI5H5iOf38s98HDXxgQAVsPnjdGIg/axHw/PpaAzcQUBMr/DhEyCAJv53TiHBw56imWL5/FoXv4ReLs1vjgboNeUwDHAKusb48goDhtlS6OGkmKO6nsBIM4OE+Al8TyOA7SfcStTR/FSJfOvowBMeZUAg0qAQeVHOmgJMGhZwkElwJCm8g/N6Qf7McjCfAAAAABJRU5ErkJggg=="
                        style="vertical-align:bottom">
                    <i class="fa fa-recycle fa-2x" onclick="ResetCaptcha(this)"
                        style="position:absolute;margin-left:5px;top:5px;cursor:pointer;color:silver"></i>
                </div>

                <div class="text-center">
                    <button class="btn"> <i class="fas fa-paper-plane"></i> Gửi đi </button>
                    <!--<button type="submit" class="btn btn-primary ico"><i class="fas fa-paper-plane"></i> Gửi đi</button>-->
                </div>
            </form>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>

</html>