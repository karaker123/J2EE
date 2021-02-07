


<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Đăng Ký</title>
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
        <jsp:include page="header.jsp"></jsp:include>
        <div class="container" style="color:black"  >
            <%request.setCharacterEncoding("UTF-8");%>
            <%response.setContentType("text/html; charset=UTF-8"); %>
                <div class="container" >
                    <div class="account">
                        <h2 class="account-in sub-title">Đăng Ký Tài Khoản</h2>
                        <form action="UsersServlet" method="POST">
                        <%
                            String err = (String) request.getAttribute("error");
                            if (err != null) {
                        %><p style="background:url(img/not-available.png) no-repeat;color:red;"><span style="margin-left:21px;"><%out.print(err); %></span></p><%}%>
                            <%
                                String err2 = (String) request.getAttribute("error2");
                                if (err2 != null) {
                            %><p style="background:url(img/not-available.png) no-repeat;color:red;"><span style="margin-left:21px;"><%out.print(err2); %></span></p><%}%>
                            <%
                                String err3 = (String) request.getAttribute("error3");
                                if (err3 != null) {
                            %><p style="background:url(img/not-available.png) no-repeat;color:red;"><span style="margin-left:21px;"><%out.print(err3); %></span></p><% }%>
                            <%
                                String err4 = (String) request.getAttribute("error4");
                                if (err4 != null) {
                            %><p style="background:url(img/not-available.png) no-repeat;color:red;"><span style="margin-left:21px;"><%out.print(err4); %></span></p><% }%>
                            <%
                                String err5 = (String) request.getAttribute("error5");
                                if (err5 != null) {
                            %><p style="background:url(img/not-available.png) no-repeat;color:red;"><span style="margin-left:21px;"><%out.print(err5); %></span></p><% }%>
                        <%
                                String err6 = (String) request.getAttribute("error6");
                                if (err6 != null) {
                            %><p style="background:url(img/not-available.png) no-repeat;color:red;"><span style="margin-left:21px;"><%out.print(err6); %></span></p><% }%>
                        <div>
                            <span class="mail" >Họ Và Tên:*</span>
                            <span><input id="tb" style="margin-left: 34px;padding-left: 23px" style="margin-left: -33px;" type="text" name="hovaten" placeholder="Điền họ và tên..." required=""  />
                                   <span class="error_form" id="ho_ten"></span></span>
                        </div>
                        <div> 	
                            <span class="mail" >Email/Gmail*</span>
                            <span><input id="tb" style="margin-left: 22px;padding-left: 23px" type="text" name="email" placeholder="Điền email..." required="" /> 
                                    <span class="error_form" id="Email"></span>
                        </div>    
                        <div>
                            <span >Username *</span>
                            <span><input id="tb" style="margin-left: 68px;padding-left: 23px" type="text" name="username" placeholder="Điền tên đăng nhập..." required="" />
                                <span class="error_form" id="user_name"></span>
                        </div> 	
                        <div> 
                            <span class="word" >Password *</span>
                            <span><input id="tb" style="margin-left: 68px;padding-left: 23px" type="password" name="pass" placeholder="password..." required="" />
                                <span class="error_form" id="pass"><span>
                        </div>
                        <div> 
                            <span class="word" >Nhập Lại Password *</span>
                            <span><input style="padding-left: 23px" id="tb" type="password" name="repass" placeholder="nhập lại password..." required="" />
                                <span class="error_form" id="repass"></span>
                        </div>
                        <div> 
                            <span class="word" >Địa Chỉ</span>
                            <span><input id="tb" style="margin-left: 97px;padding-left: 23px" type="text" name="diachi" placeholder="địa chỉ..." required=""  />
                                <span class="error_form" id="diachi"></span>
                        </div>
                        <div> 
                            <span class="word" >Số Điện Thoại</span>
                            <span><input id="tb" style="margin-left: 49px;padding-left: 23px" type="text" name="phone" placeholder="số diện thoại..." required=""  />
                                <span class="error_form" id="sdt"></span>
                        </div>
                        <input type="hidden" value="them" name="command">
                        <input id="tb" style="background:rgba(0,0,0,0.4);border:1px solid black;" type="submit" value="Đăng Ký"> 
                    </form>
                </div>
            </div>
        </div>
        <jsp:include page="footer.jsp"></jsp:include>
    </body>
</html>
