<%-- 
    Document   : xacnhanemail
    Created on : Dec 20, 2018, 8:50:00 AM
    Author     : Administrator
--%>

<%@page import="dao.UsersDAO"%>
<%@page import="model.Users"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Kích Hoạt</title>
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
        <style>

            /*======================
                404 page
            =======================*/


            .page_404{ padding:40px 0; background:rgba(0,0,0,0); font-family: 'Arvo', serif;
            }

            .page_404  img{ width:100%;}

            .four_zero_four_bg{

                background-image: url(https://cdn.dribbble.com/users/285475/screenshots/2083086/dribbble_1.gif);
                height: 400px;
                background-position: center;
            }


            .four_zero_four_bg h1{
                font-size:52px;
            }

            .four_zero_four_bg h3{
                font-size:80px;
            }

            .link_404
            {			 
                color: #fff!important;
                padding: 10px 20px;
                background: #39ac31;
                margin: 20px 0;
                display: inline-block;
                border-radius: 6px;
            }
            .contant_box_404{ margin-top:-50px;}
        </style>
    </head>
    <body style="background:url(video/bann.jpg) fixed;color:white;" >

        <jsp:include page="header.jsp"></jsp:include>
        <%
            String uuid = request.getParameter("ID");
            Users u = UsersDAO.getUser(request.getParameter("TK"));
            if (uuid.equals(u.getUser_code())) {
                UsersDAO.kichhoat_taikhoan(u.getStt());
            }
        %>
        <div>
            
            <section class="page_404">
                <div class="container">
                    <div class="row">	
                        <div class="col-sm-12 ">
                            <div class="col-sm-10 col-sm-offset-1  text-center">
                                <div class="four_zero_four_bg">
                                    <h1 class="text-center " style="color: #522908;">Cảm Ơn Bạn Đã Đăng Ký</h1>


                                </div>

                                <div class="contant_box_404">
                                    <h3 class="h2">
                                        Tks u
                                    </h3>

                                    <p><%=u.getHovaten()%> !,Tài khoản của bạn đã được Active!</p>

                                    <a href="login.jsp" class="link_404">Quay Về Đăng Nhập</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </div>

        <jsp:include page="footer.jsp"></jsp:include>

    </body>
</html>
