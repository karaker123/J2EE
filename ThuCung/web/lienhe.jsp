
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Liên Hệ</title>
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
        <script src="js/jquery.min.js"></script>
        <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
        <meta name="viewport" content="width=device-width,height=device-height,user-scalable=yes, initial-scale=1, minimum-scale=1.0, maximum-scale=3.0" >
        <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
        <link href='http://fonts.googleapis.com/css?family=Exo:100,200,300,400,500,600,700,800,900' rel='stylesheet' type='text/css'>
        <script type="text/javascript" src="js/move-top.js"></script>
        <script type="text/javascript" src="js/easing.js"></script>
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.4.2/css/all.css" />
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
        <script>
            $(document).ready(function (c) {
                $('.alert-close1').on('click', function (c) {
                    $('.message1').fadeOut('slow', function (c) {
                        $('.message1').remove();
                    });
                });
            });
        </script>
    </head>
    <body>
        <jsp:include page="header.jsp"></jsp:include>    
        <div class="container">
            <div class="contact">
<!--                <h2 class=" contact-in" style="color: #f7921d;">Liên Hệ</h2>-->
                
                <div class="col-md-6 contact-top">
                    <h3 style="color: #f7921d;">Thông Tin Liên Hệ</h3>
                    <div class="map" style="border:2px solid #f7921d">
                        <iframe src="https://www.google.com/maps/embed?pb=!1m21!1m12!1m3!1d15672.979939368443!2d106.79874136841325!3d10.86896219979086!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!4m6!3e6!4m0!4m3!3m2!1d10.8699184!2d106.8038081!5e0!3m2!1sen!2s!4v1591935132623!5m2!1sen!2s" width="600" height="450" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>
                    </div>
                    <p>Sử dụng thông tin được cung cấp để liên hệ với chúng tôi HOẶC để lại tin nhắn cho chúng tôi bằng cách sử dụng biểu mẫu liên hệ </p>
                    <p>Cám ơn đã sử dụng dịch vụ của chúng tôi </p>				
                    <ul class="social ">
                        <li><span><i > </i>Khu phố 6, Quận Thủ Đức, TP.Hồ Chí Minh </span></li>
                        <li><span><i class="down"> </i>0868992467</span></li>
                        <li><a href="mailto:info@example.com"><i class="mes"> </i>cskh@A3V.com.vn</a></li>
                    </ul>
                </div>
                <div class="col-md-6 contact-top">
        
                    <div>
                        <span style="color: #f7921d;">Tên Của Bạn </span>		
                        <input type="text" value="" >						
                    </div>
                    <div>
                        <span style="color: #f7921d;">Email:</span>		
                        <input type="text" value="" >						
                    </div>
                    <div>
                        <span style="color: #f7921d;">Tiêu Đề:</span>		
                        <input type="text" value="" >	
                    </div>
                    <div>
                        <span style="color: #f7921d;">Nội Dung:</span>		
                        <textarea> </textarea>	
                    </div>
                    <input style="color:white" type="submit" value="Gửi" >	
                </div>
                <div class="clearfix"> </div>
            </div>
        </div>
    <jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
