
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Đăng Tin Bán Thú Cưng</title>
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
        <script src="js/jquery.min.js"></script>
        <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
        <meta name="viewport" content="width=device-width,height=device-height,user-scalable=yes, initial-scale=1, minimum-scale=1.0, maximum-scale=3.0" >
        <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
        <link href='http://fonts.googleapis.com/css?family=Exo:100,200,300,400,500,600,700,800,900' rel='stylesheet' type='text/css'>
        <script type="text/javascript" src="js/move-top.js"></script>
        <script type="text/javascript" src="js/easing.js"></script>
        <script type="text/javascript">
            jQuery(document).ready(function ($)
            {
                $(".scroll").click(function (event)
                {
                    event.preventDefault();
                    $('html,body').animate({scrollTop: $(this.hash).offset().top}, 1000);
                });
            });
        </script>
        <!--slider-script-->
        <script src="js/responsiveslides.min.js"></script>
        <script>
            $(function ()
            {
                $("#slider1").responsiveSlides({
                    auto: true,
                    speed: 100,
                    namespace: "callbacks",
                    pager: true,
                });
            });
        </script>
        <!--//slider-script-->
        <script>$(document).ready(function (c)
            {
                $('.alert-close').on('click', function (c) {
                    $('.message').fadeOut('slow', function (c) {
                        $('.message').remove();
                    });
                });
            });
        </script>
        <script>$(document).ready(function (c) {
                $('.alert-close1').on('click', function (c) {
                    $('.message1').fadeOut('slow', function (c) {
                        $('.message1').remove();
                    });
                });
            });
        </script> 
        <style>
            .a1
            {
                border: 2px solid #f7921d;
                background-color:#f7921d;
            }
            .a1 .a2
            {
                margin: 0px auto;
                padding-left: 64px;
                padding-right: 71px;
            }
            input[type=number]
            {
                padding: 0.7em;
                width: 60%;
                background: none;
                border: 1px solid #D1D1D1;
                border-radius: 10px;
                -webkit-border-radius: 10px;
                -o-border-radius: 10px;
                -moz-border-radius: 10px;
                -ms-border-radius: 10px;
                outline: none;
                color: #464646;
                font-size: 1em;
            }
        </style>
    </head>
    <body  fixed" >
        <jsp:include page="header.jsp"></jsp:include>
            <div class="container">
                <div class="container">
                    <div class="account">
                        <h2 style="color:black" class="account-in sub-title">Đăng Tin Bán Thú Cưng</h2>
                        <div class="a1">
                            <div class="a2">
                                <p>
                                <p style="color:white;">[+] Làm thế nào để tin đăng bán đạt hiệu quả cao nhất?</p>
                                <p style="color:white;">– Để tin đăng bán thú cưng của bạn đạt hiệu quả cao nhất, được người mua quan tâm nhất thì thông tin mô tả về thú cưng của bạn càng chi tiết càng tốt và đặc biệt nên có ảnh thật về thú cưng của bạn.- Theo thống kê của Doanh Nghiệp A3V với các tin đăng bán có ảnh thật, người mua sẽ quan tâm hơn rất nhiều so với doanh nghiệp cùng ngành khác không có ảnh.- Hơn nữa, trong kết quả tìm kiếm thú cưng,A3V sẽ ưu tiên thứ tự cho những tin có ảnh thật và đầy đủ thông tin hơn những tin không có ảnh và ít thông tin về giao dịch.
                                    – Vì vậy, bạn không nên vội vàng đăng tin khi thông tin về thú cưng của bạn chưa đầy đủ.</p>
                                <p style="color: white;float:right;margin-top: -10px;">Chúc bạn mau bán được thú cưng !
                                    Thân ái,</p>
                                <p style="color:white;margin-right: -255px;float: right;margin-top: 5px;" > Doanh Nghiệp <strong>A3V</strong>! </p>
                            </div>
                        </div>
                        <form action="DangBaiBan3" method="post" enctype="multipart/form-data" style="color:black" >
                            <div>
                                <p >Tiêu Đề (*)</p>
                                <input  type="text" name="product_name" required />
                            </div>
                            <div> 
                                <p >Giá Cũ: </p>
                                <input type="number" name="product_giacu" required />
                            </div>
                            <div> 
                                <p >Giá: </p>
                                <input type="number" name="product_gia" required />
                            </div>
<!--                            <div>
                                <p style="color:white">Loại Nhà:</p>
                                <select name="category_id" style="border: 2px solid #f7921d;width: 665px;height: 47px;border-radius: 10px;margin-top: 3px;padding-top: 3px;padding-left: 13px;">
                                    <option value="1">Nhà Cấp 4</option>
                                    <option value="2">Nhà Cấp 3</option>
                                    <option value="3">Nhà Cấp 2</option>
                                    <option value="4">Nhà Cấp 1</option>
                                    <option value="5">Biệt Thự</option>
                                    <option value="6">Biệt Thự</option>
                                    <option value="7">Biệt Thự</option>
                                </select>
                            </div>-->
                            <div>
                                <p >Thể Loại:</p>
                                <select name="product_category_name" style="width: 665px;height: 47px;border-radius: 10px;margin-top: 3px;padding-top: 3px;padding-left: 13px;"
                                        placeholder="Chon laoi thu cung">
                                    <option value="1" selected>Chó Cảnh</option>
                                    <option value="2">Mèo Cảnh</option>
                                    <option value="3">Hamster</option>
                                    <option value="4">Thỏ</option>
                                    <option value="5">Lợn Ghi-nê</option>
                                    <option value="6">Chim Cảnh</option>
                                    <option value="7">Cá Cảnh</option>
                                </select>
                            </div>
                            <div>
                                <p >Họ Và Tên: </p>
                                <input type="text" name="product_hoten" required />
                            </div>
                            <div>
                                <p >Số Điện Thoại: </p>
                                <input  type="number" name="product_sdt" required />
                            </div>
                            <div>
                                <p >Nguồn gốc: </p>
                                <input  type="text" name="product_origin" required />
                            </div>
                            <div>
                                <p >Địa Điểm: </p>
                                <input  type="text" name="product_vitri" required />
                            </div>
                            <div>
                                <p >Tình Trạng: </p>
                                <input style="font-style: italic " type="text" name="product_stock" required value="Còn hàng" readonly="true" />
                            </div>
                            <div> 
                                <p >Hình Ảnh:(*)</p>
                                <input required="required" style="width: 665px;height: 47px;border-radius: 10px;margin-top: 3px;padding-top: 10px;padding-left: 13px;" type="file" name="hinhanh" multiple>
                            </div>
                            <div>
                                <p >Mô Tả:</p>
                                <textarea  class="textarea" rows="160" cols="30" name="product_description" required ></textarea>
                            </div>
                            <div class="clear"></div>
                            <input type="hidden" value="dangbaibanproduct" name="command">
                            <input type="submit" value="Đăng Bài" > 
                        </form>
                    </div>
                </div>
            </div>
        <jsp:include page="footer.jsp"></jsp:include>
    </body>
</html>
