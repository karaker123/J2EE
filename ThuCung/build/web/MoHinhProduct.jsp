

<%@page import="model.Users"%>
<%@page import="model.Cart"%>
<%@page import="model.Product"%>
<%@page import="dao.ProductDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Thông Tin Sản Phẩm</title>
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
            .a1
            {
                width:100%;
                height:auto;
                margin-bottom: 50px;
            }
            .a1 .a2
            {
                width:80%;
                height:auto;
                margin: 0 auto;
            }
            #inline
            {
                display: inline;
            }
        </style>
    </head>
    <body fixed">
        <%

            Product c = ProductDAO.getProductById(Integer.parseInt(request.getParameter("ProductID")));

        %>
        <%
            Users u = (Users) session.getAttribute("admin");
            if (u == null) {
                response.sendRedirect("404.jsp");
            }
        %>
        <jsp:include page="header.jsp"></jsp:include>
            <div>
                  <center><p style="color:aquamarine;font-size: 50px;margin-top: 44px;">DEMO</p></center>
                  <center><a href="manager_product.jsp" style="font-size: 20px;border: 1px solid white;width: 100px;border-radius: 6px;"><p>Trở Lại</p></a></center>
            </div>
            <div class="a1">
                <div class="a2">
                    <div style="float: right;position: relative;margin-top: 23px;margin-right: 6px;font-size: 20px;">
                        <p><i style="padding-left: 53px;float: right" class="far fa-calendar-alt">Ngày Đăng Bài:<%=c.getProductNgaydang()%></i></span></p>
                </div>
                <div class="single">
                    <div>
                        <a href="#">
                            <img class="a2-1" style="border: 2px solid #312f2c;float: left;height: 324px;width: 576px;" src="<%=c.getProductImage()%>" alt="" >
                        </a>
                    </div>

                    <div class="as" style="margin-left:3rem;">

                        <p style="font-size: 28px;padding-left:729px;background-color:rgba(0,0,0,0.4);;border-top-right-radius: 45px;">Thông Tin Liên Hệ<p>
                        <div>
                            <div style="border: 2px solid #00c6d7;border-top-right-radius: 23px"><p style="padding-left:591px;font-size:18px;"><i class="far fa-caret-square-up"></i><strong>Tiêu Đề</strong><span style="margin-left:166px;"><%=c.getProductName()%></span> </p></div>                                 
                            <div style="border: 2px solid #00c6d7;border-top-right-radius: 23px"><p style="padding-left:591px;font-size:18px;"><i class="fab fa-acquisitions-incorporated"></i><strong>Thể Loại</strong><span style="margin-left:163px;"><%=c.getCategoryproductName()%></span></p></div>
                            <div style="border: 2px solid #00c6d7;border-top-right-radius: 23px"><p style="padding-left:591px;font-size:18px;"><i class="fas fa-adjust"></i><strong>Nguồn gốc</strong><span style="margin-left:139px;"><%=c.getProductOrigin()%></span></p></div>
                            <div style="border: 2px solid #00c6d7;border-top-right-radius: 23px"><p style="padding-left:591px;font-size:18px;"><i class="fab fa-accusoft"></i><strong>Họ Tên Người Đăng</strong><span style="margin-left:67px;"><%=c.getProductHoten()%></span></p></div>                     
                            <div style="border: 2px solid #00c6d7;border-top-right-radius: 23px"><p style="padding-left:591px;font-size:18px;"><i class="fab fa-500px"></i><strong>Số Điện Thoại</strong><span style="margin-left:117px;"><%=c.getProductSdt()%></span></p></div>
                            <div style="border: 2px solid #00c6d7;border-top-right-radius: 23px"><p style="padding-left:591px;font-size:18px;"><i class="fab fa-penny-arcade"></i><strong>Địa Điểm</strong><span style="margin-left:150px;"><%=c.getProductVitri()%></span></p></div>
                            <div style="border: 2px solid #00c6d7;border-top-right-radius: 23px"><p style="padding-left:591px;font-size:18px;"><i class="fas fa-money-bill"></i><strong>Giá</strong><span style="margin-left:197px;"><%=c.getProductPrice()%> Triệu VNĐ</span></p></div>
                            <div style="border: 2px solid #00c6d7;border-top-right-radius: 23px"><p style="padding-left:591px;font-size:18px;"><i class="fas fa-money-bill"></i><strong>Giá Cũ</strong><span style="margin-left:172px;"><%=c.getProductOldPrice()%> Triệu VNĐ</span></p></div>
                                   <div style="border: 2px solid #00c6d7;border-top-right-radius: 23px"><p style="padding-left:591px;font-size:18px;"><i class="fab fa-penny-arcade"></i><strong>Tình Trạng</strong><span style="margin-left:137px;"><%=c.getProductStock()%></span></p></div>


                        </div>

                        <div class="top-content" style="float: right;position: relative;margin-top:1rem">
                            <div class="white" style="line-height: 17px;margin-left: 383px>
                                <%
                                    Cart cart = (Cart) session.getAttribute("cart");
                                    if (!cart.getCartItems().containsKey(c.getProductID())) {
                                %>
                                <a  href="#" id="luuthongtinproduct" class="hvr-shutter-in-vertical hvr-shutter-in-vertical2 "><i class="fa fa-cart-plus" ></i>&nbsp;Đặt Hàng</a>
                                <%
                                } else {
                                %>
                                <a href=""  style="cursor:unset;background:black;line-height: 17px;margin-left: 383px;margin-top: 3px;" id="luuthongtin" class="hvr-shutter-in-vertical hvr-shutter-in-vertical2">Đã Đặt</a>
                                <%
                                    }
                                %>
                                <script type="text/javascript">
                                    $(function ()
                                    {
                                        $("#luuthongtinchothue").click(function ()
                                        {
                                            if (confirm("Chức năng Lưu ở mục Product này tạm thời khóa"))
                                            {
                                                window.location.reload(true);
                                            }
                                        });
                                    });
                                </script>
                                <div class="clearfix"></div>
                            </div>
                        </div>

                    </div>
                    <div class="clearfix"> </div>    
                </div>
                <div class="as1" style="border: 2px solid black;height: auto;background-color: #FFECB3" >
                    <p style="background:rgba(0,0,0,0.4);font-size: 25px;padding-left: 486px;padding-top: 10px;padding-bottom: 10px;">Mô tả chi tiết</p>
                    <p style="padding-left: 26px;padding-right:26px;font-size:20px"><%=c.getProductDescription()%></p>
                    <div class="clearfix"> </div>
                    <img style="border:2px; solid: #312f2c;height:508px;width:737px;margin-left:201px;margin-top:25px;margin-bottom:25px;" src="<%=c.getProductImage()%>" alt="" >
                </div>

                <div class="clearfix"> </div>
                    
                 <div id="fb-root"></div>
                <script async defer crossorigin="anonymous" src="https://connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v7.0&appId=260072498392467&autoLogAppEvents=1" nonce="u7H6ttlE"></script>
                <div style="margin-top: 56px;border: 1px solid white;background: rgba(255,255,255, 0.3);">
                <div class="fb-comments" data-href="http://localhost:8082/ThuCung/MoHinhProduct.jsp?ProductID=<%=request.getParameter("productID")%>" data-numposts="5" data-width=""></div>
                </div>
                

                <!--start cung khoang gia-->    
                <div id="in-line" class="container" style="margin-top: 60px;margin-left: -138px;width: 1303px;">
                    <div class="content">
                        <div class="content-top" style="float:left;">
                            <h3 class="future">Bài Đăng Cùng Khoảng Giá</h3>
                            <div class="content-top-in" style="width:932px;">
                                <%
                                    request.setCharacterEncoding("UTF-8");
                                    response.setCharacterEncoding("UTF-8");
                                    for (Product cc : ProductDAO.getProductSamePrice(c.getProductPrice())) {
                                %>
                                <div class="col-md-3 md-col" style="margin-top:30px;width: 285px;">
                                    <div  class="col-md" style="background:rgba(0,0,0,0.4)">
                                        <div><i class="fas fa-home"  ><%=c.getCategoryproductName()%></i><span><i style="padding-left: 53px;float: right;color: white;" class="far fa-calendar-alt"><%=c.getProductNgaydang()%></i></span></div>
                                        <div class="clearfix"></div> 
                                        <a href="single.jsp?ProductID=<%=cc.getProductID()%>"><img  src="<%=cc.getProductImage()%>" style="height: 253px;" alt="<%=cc.getProductName()%>" /></a>	
                                        <div class="top-content">
                                            <h5><a  href="single.jsp?ProductID=<%=cc.getProductID()%>"><%=cc.getProductName()%></a></h5>
                                            <h5 style="padding: 0px;margin-top: -9px;"><i class="fas fa-compass" ><%=cc.getProductVitri()%></i></h5>
                                            <h5 style="padding: 0px;margin-top: 4px;"><i class="fab fa-laravel" style="padding: 0px;margin-top: -9px;"><%=cc.getProductOrigin()%></i></h5>
                                            <%
                                                Users users = null;
                                                if (session.getAttribute("user") != null) {
                                                    users = (Users) session.getAttribute("user");
                                                }
                                                if (users != null) {
                                            %>
                                            <div class="white">
                                                <%
                                                    if (!cart.getCartItems().containsKey(c.getProductID())) {
                                                %>
                                                <a href="#" id="luuthongtinproduct" class="hvr-shutter-in-vertical hvr-shutter-in-vertical2">Đặt Hàng</a>
                                                <%
                                                } else {
                                                %>
                                                <a href="#" style="cursor:unset;background:black;" id="luuthongtin" class="hvr-shutter-in-vertical hvr-shutter-in-vertical2">Đã Đặt</a>
                                                <%
                                                    }
                                                %>
                                                <p class="dollar"><span><%=cc.getProductPrice()%></span><span>Triệu</span><span class="in-dollar">VNĐ</span></p>
                                                <div class="clearfix" ></div>
                                            </div>
                                            <%
                                                }
                                            %>
                                            <script type="text/javascript">
                                                $(function ()
                                                {
                                                    $("#luuthongtinchothue").click(function ()
                                                    {
                                                        if (confirm("Chức năng Lưu ở mục Product này tạm thời khóa"))
                                                        {
                                                            window.location.reload(true);
                                                        }
                                                    });
                                                });
                                            </script>
                                        </div>							
                                    </div>
                                </div>
                                <%
                                    }
                                %>

                                <div class="clearfix" style="background-color: 
#FFB74D;padding: 3rem"></div>
                            </div>
                        </div>                    
                                <div id="fb-root"></div>
                                 <script async defer crossorigin="anonymous" src="https://connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v7.0&appId=260072498392467&autoLogAppEvents=1" nonce="3jprSt4h"></script>

                                <div class="fb-page" data-href="https://www.facebook.com/Doanh-Nghi%E1%BB%87p-A3V-Chuy%C3%AAn-th%C3%BA-c%C6%B0ng-v%C3%A0-S%E1%BA%A3n-ph%E1%BA%A9m-th%C3%BA-c%C6%B0ng-c%C3%A1c-lo%E1%BA%A1i-113666123723173" data-tabs="timeline" data-width="" data-height="" data-small-header="false" data-adapt-container-width="true" data-hide-cover="false" data-show-facepile="true"><blockquote cite="https://www.facebook.com/Doanh-Nghi%E1%BB%87p-A3V-Chuy%C3%AAn-th%C3%BA-c%C6%B0ng-v%C3%A0-S%E1%BA%A3n-ph%E1%BA%A9m-th%C3%BA-c%C6%B0ng-c%C3%A1c-lo%E1%BA%A1i-113666123723173" class="fb-xfbml-parse-ignore"><a href="https://www.facebook.com/Doanh-Nghi%E1%BB%87p-A3V-Chuy%C3%AAn-th%C3%BA-c%C6%B0ng-v%C3%A0-S%E1%BA%A3n-ph%E1%BA%A9m-th%C3%BA-c%C6%B0ng-c%C3%A1c-lo%E1%BA%A1i-113666123723173">Doanh Nghiệp A3V - Chuyên thú cưng và Sản phẩm thú cưng các loại</a></blockquote></div>

                </div>
                <!--end-->
                <!--start cùng loại-->
                <div class="container" style="margin-top: 60px;">
                    <div class="content">
                        <div class="content-top">
                            <h3 class="future">Bài Đăng Cùng Loại</h3>
                            <div class="content-top-in">
                                <%
                                    request.setCharacterEncoding("UTF-8");
                                    response.setCharacterEncoding("UTF-8");
                                    for (Product c2 : ProductDAO.getProductSameTieuDe(c.getProductName())) {
                                %>
                                <div class="col-md-3 md-col" style="margin-top:30px;">
                                    <div  class="col-md" style="background:rgba(0,0,0,0.4)">
                                        <div><i class="fas fa-home"><%=c2.getCategoryproductName()%></i><span><i style="padding-left: 53px;float: right;color: white;" class="far fa-calendar-alt"><%=c2.getProductNgaydang()%></i></span></div>
                                        <div class="clearfix"></div> 
                                        <a href="single.jsp?ProductID=<%=c2.getProductID()%>"><img  src="<%=c2.getProductImage()%>" style="height: 253px;" alt="<%=c2.getProductName()%>" /></a>	
                                        <div class="top-content">
                                            <h5><a href="single.jsp?ProductID=<%=c2.getProductID()%>"><%=c2.getProductName()%></a></h5>
                                            <h5 style="padding: 0px;margin-top: -9px;"><i class="fas fa-compass" ><%=c2.getProductVitri()%></i></h5>
                                            <h5 style="padding: 0px;margin-top: 4px;"><i class="fab fa-laravel" style="padding: 0px;margin-top: -9px;"><%=c2.getProductOrigin()%></i></h5>
                                            <%
                                                Users users = null;
                                                if (session.getAttribute("user") != null) {
                                                    users = (Users) session.getAttribute("user");
                                                }
                                                if (users != null) {
                                            %>
                                            <div class="white">
                                                <%
                                                    if (!cart.getCartItems().containsKey(c.getProductID())) {
                                                %>
                                                <a href="#" id="luuthongtinproduct" class="hvr-shutter-in-vertical hvr-shutter-in-vertical2">Đặt Hàng</a>
                                                <%
                                                } else {
                                                %>
                                                <a href="#" style="cursor:unset;background:black;" id="luuthongtin" class="hvr-shutter-in-vertical hvr-shutter-in-vertical2">Đã Đặt</a>
                                                <%
                                                    }
                                                %>
                                                <p class="dollar"><span><%=c2.getProductPrice()%></span><span>Triệu</span><span class="in-dollar">VNĐ</span></p>
                                                <div class="clearfix"></div>
                                            </div>
                                            <%
                                                }
                                            %>
                                            <script type="text/javascript">
                                                $(function ()
                                                {
                                                    $("#luuthongtinchothue").click(function ()
                                                    {
                                                        if (confirm("Chức năng Lưu ở mục Product này tạm thời khóa"))
                                                        {
                                                            window.location.reload(true);
                                                        }
                                                    });
                                                });
                                            </script>
                                        </div>							
                                    </div>
                                </div>
                                <%
                                    }
                                %>
                                <div class="clearfix" style="background-color: 
#FFB74D;padding: 3rem"></div>
                            </div>
                        </div>
                    </div>
                </div>
                <!--end-->
                <!--Controll-->
                <div>
                    <div id="dialogCont" class="dlg-container">
                        <div class="dlg-header"><i class="fas fa-exclamation-triangle">Xác Nhận Bài Duyệt</i></div>
                        <div id="dlgBody" class="dlg-body">Duyệt bài này?</div>
                        <div class="dlg-footer">
                            <a href="DuyetBaiProduct?command=duyet&ProductID=<%=request.getParameter("ProductID")%>" style="margin-left: 4px;" ><i class="fas fa-user-times" style="margin-left:2px;">Duyệt</i></a>
                            <a href="DuyetBaiProduct?command=xoa&ProductID=<%=request.getParameter("ProductID")%>" style="margin-left: 56px;" ><i class="fas fa-times-circle">Hủy Bỏ</i></a>
                        </div>
                    </div>
                </div>
                <style>
                    .dlg-container
                    {
                        position:fixed;
                        bottom : -64px;
                        right: -80px;
                        transform: translateX(-50%) translateY(-50%);
                        width:300px;
                        overflow: hidden;
                        background:#fff;
                        padding:10px;
                        border:2px solid #ddd;
                        box-shadow:1px 1px 5px 1px #ccc;
                        border-radius:10px;
                        opacity:1;
                        transition:all 0.3 linear 0s;
                        z-index: 2;
                        background: rgba(0,0,0,0.2);
                    }
                    .dlg-container:hover
                    {
                        border:1px solid #00a0df;

                    }

                    .dlg-header
                    {
                        padding: 10px;
                        font-weight: bold;
                        background: rgba(0,0,0,0.5);
                        color: #f6f7f8;
                        border: 1px solid white;
                        border-radius: 10px;

                    }
                    .dlg-body
                    {
                        padding:10px;
                        line-height:30px;
                        color: white;
                    }
                    .dlg-footer
                    {
                        text-align:center;
                        padding : 3px 0;
                    }
                    .dlg-footer a
                    {
                        display:inline-block;
                        width:100px;
                        padding:5px 0;
                        border-radius:10px;
                        background: rgba(0,0,0,0.3);
                        cursor : pointer;
                        border: 1px solid;
                        color: white;
                        transition: 0.9s ease;
                    }
                    .dlg-footer a:active
                    {
                        box-shadow: inset 2px 2px 4px 0 #ccc;
                        color:#666;
                    }
                </style>

                <!---->
            </div>
        </div>
    </div>
</div>
</div>
<jsp:include page="footer.jsp"></jsp:include>

</body>
</html>
