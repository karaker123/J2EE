

<%@page import="model.cachnuoi"%>
<%@page import="dao.cachnuoiDAO"%>
<%@page import="java.sql.Connection"%>
<%@page import="connect.DBConnect"%>
<%@page import="dao.ProductDAO"%>
<%@page import="model.Product"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>CÁCH NUÔI THÚ CƯNG</title>
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
            #top-phongthuy
            {
                background: url(images/back1.png) repeat center;
                color: #f7921d;
                width: 70%;
                margin-top: 21px;
                height: 43px;
                margin-left: 220px;
                padding-top: 11px;
                padding-left: 52px;
                font-size: 18px;
            }
            #bottom-phongthuy
            {
                color: #f7921d;
                width: 70%;
                margin-top: 21px;
                height: auto;
                margin-left: 220px;
                padding-top: 11px;
                padding-left: 52px;
                font-size: 18px;
            }
            .clear
            {
                clear:both;
            }
            .image
            {
                float:left;
                margin-bottom:20px;
            }
            .noidung
            {
                overflow: hidden;
                text-overflow: ellipsis;
                max-width: 653px;
                overflow: hidden;
                display: -webkit-box;
                -webkit-line-clamp: 5;
                -webkit-box-orient: vertical;
            }
            #bottom-phongthuy-chitiet
            {
                color: #f7921d;
                width: 70%;
                margin-top: 21px;
                height: auto;
                margin-left: 220px;
                padding-top: 11px;
                padding-left: 52px;
                font-size: 18px;
                text-overflow: ellipsis;
            }
        </style>
    </head>
    <body>
        <jsp:include page="header.jsp"></jsp:include>
        <%
            String s = request.getParameter("id");
            int i = Integer.parseInt(s);
        %>
        
        <%

//            cachnuoi c = cachnuoiDAO.getChitietcachnuoi(Integer.parseInt(request.getParameter("cachnuoiID")));

        %>
            <div id="top-phongthuy">
                <a href="index.jsp">TRANG CHỦ></a><a href="cachnuoi.jsp"><span>CÁCH NUÔI THÚ CƯNG></span></a><span><%out.print(cachnuoiDAO.getChitietcachnuoi(i).getCachnuoi_title() ); %></span>
        </div>
        <div class="clearfix"></div>
        <div id="bottom-phongthuy-chitiet">  
<!--            <div>
        
            </div>-->
            <div>
                <% 
                    out.print(cachnuoiDAO.getChitietcachnuoi(i).getCachnuoi_noidung());
                %>
            </div>
        </div>
        <div class="clearfix"></div>
        <div id="fb-root"></div>
            <script async defer crossorigin="anonymous" src="https://connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v7.0&appId=260072498392467&autoLogAppEvents=1" nonce="OVv6ZnKZ"></script>
        <div style="margin-top: 26px;margin-left: 280px;border: 1px solid white;background: rgba(555,555,555, 0.3);">
            <div class="fb-comments" data-href="http://localhost:8082/ThuCung/single_cachnuoi.jsp?id=<%=request.getParameter("id")%>" data-numposts="5" data-width=""></div>
        </div>
        <jsp:include page="footer.jsp"></jsp:include>
    </body>
</html>
