

<%@page import="model.PostMua"%>
<%@page import="java.sql.Connection"%>
<%@page import="connect.DBConnect"%>
<%@page import="dao.ProductDAO"%>
<%@page import="model.Product"%>
<%@page import="dao.PostMuaDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>DIỄN ĐÀN TIN TỨC</title>
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
        </style>
    </head>
    <body style="margin-bottom:10rem">
        <jsp:include page="header.jsp"></jsp:include>
            <div id="top-phongthuy">
                <a href="index.jsp">TRANG CHỦ></a><span>DIỄN ĐÀN TIN TỨC</span>
            </div>
            <div id="bottom-phongthuy" >
            <img src="https://www.globaltimes.cn/Portals/0/attachment/2011/6de3241e-42e3-4da7-8a5a-0564c60a7be2.jpeg">
        </div>
            <div style="margin-left:320px;margin-top: -50rem;">
        <%
            for (PostMua pm :PostMuaDAO.getListPostMua()) {
        %>
        <div class="clearfix "></div>
        
        <div id="bottom-phongthuy" >
            <div >
                
                <div >
                    <a href="single_tintuc.jsp?id=<%=pm.getStt() %>"><p class="tieude" style="margin-bottom:10px;"><%=pm.getTieude()%></p></a>
                    <div>
                        <p class="noidung">
                            <%=pm.getNoidung() %>
                        <div><a href="single_tintuc.jsp?id=<%=pm.getStt()%> "><span>Đọc Tiếp</span></a></div>
                        </p>
                    </div>
                    <div class="clear"></div>
                </div>
            </div>
        </div>
                        
        <div class="clearfix"></div>
        <%
            }
        %>
        </div>
        <jsp:include page="footer.jsp" ></jsp:include>
    </body>
</html>
