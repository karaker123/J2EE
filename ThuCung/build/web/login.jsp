

<%@page import="model.Users"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Đăng Nhập</title>
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
        <script src="js/jquery.min.js"></script>
        <script src='https://www.google.com/recaptcha/api.js'></script>
        <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
        <meta name="viewport" content="width=device-width,height=device-height,user-scalable=yes, initial-scale=1, minimum-scale=1.0, maximum-scale=3.0" >
        <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
        <link href='http://fonts.googleapis.com/css?family=Exo:100,200,300,400,500,600,700,800,900' rel='stylesheet' type='text/css'>
        <script type="text/javascript" src="js/move-top.js"></script>
        <script type="text/javascript" src="js/easing.js"></script>
        <script type="text/javascript">
            jQuery(document).ready(function ($)
            {
                $(".scroll").click(function (event) {
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
        <script>$(document).ready(function (c) {
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
            #tb:hover
            {
                animation: swing 1s ease;
                border-color: #00c6d7;
                box-shadow: 0 10px 6px -6px #777;
                color: #00c6d7;
            }
        </style>
    </head>
    <body  fixed">
        <%
            if (session.getAttribute("user") != null || session.getAttribute("admin") != null) {
                response.sendRedirect("index.jsp");
            }
        %>
        <jsp:include page="header.jsp"></jsp:include>
            <div class="container" style="color:black">
                <div class="container">
                    <div class="account">
                        <h2 class="account-in sub-title" >Đăng Nhập Tài Khoản</h2>
                        <form action="UsersServlet" method="POST">
                        <% String err = (String) request.getAttribute("error");
                            if (err != null) {%>
                        <div>
                            <p style="background:url(img/not-available.png) no-repeat;color:red;"><span style="margin-left:21px;"><%out.print(err); %></span></p>
                        </div> 
                        <% }%>
                        <% String err2 = (String) request.getAttribute("error2");
                            if (err2 != null) {%>
                        <div>
                            <p style="background:url(img/not-available.png) no-repeat;color:red;"><span style="margin-left:21px;"><%out.print(err2); %></span></p>
                        </div> 
                        <% }%>
                        <% String dangky = (String) request.getAttribute("dangky");
                            if (dangky != null) {%>
                        <div>
                            <p style="background:url(img/available.png) no-repeat;color:red;"><span style="margin-left:21px;"><%out.print(dangky); %></span></p>
                        </div> 
                        <% }%>
                        <% String error3 = (String) request.getAttribute("error3");
                            if (error3 != null) {%>
                        <div>
                            <p style="background:url(img/not-available.png) no-repeat;color:red;"><span style="margin-left:21px;"><%out.print(error3); %></span></p>
                        </div> 
                        <% }%>
                        <div>
                            <span >Tên Đăng Nhập </span>
                            <input  type="text" name="username">
                        </div> 	
                        <div> 
                            <span class="word" style="margin-right:33px;">Mật Khẩu </span>
                            <input  type="password" name="pass">
                        </div>
                        <div class="g-recaptcha"
                             data-sitekey="6LelZAsTAAAAAAv1ADYDnq8AzbmPmbMvjh-xhfgB"></div>
                        <input type="hidden" value="login" name="command">
                        <input id="tb" type="submit" value="Đăng Nhập" style="background:rgba(0,0,0,0.4);border:1px solid black;margin-top: 55px;"> 

                        <script>
                            grecaptcha.ready(function () {
                                grecaptcha.execute('6Ldy2YMUAAAAAG2CYNQEAeWH3iVAMPKALvw2enf1', {action: 'action_name'})
                                        .then(function (token) {
// Verify the token on the server.
                                        });
                            });
                        </script>
                    </form>
                </div>
            </div>
        </div>

        <jsp:include page="footer.jsp"></jsp:include>
    </body>
</html>
