

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

        </style>
    </head>
    <body  fixed>
        <%

            ProductDAO p = new ProductDAO();
            Product p2 = new Product();
            String productID2 = "";
            if (request.getParameter("productID") != null) {
                productID2 = request.getParameter("productID");
                p2 = ProductDAO.getProductById(Integer.parseInt(productID2));
            }
            
        %>
        <jsp:include page="header.jsp"></jsp:include>
            <div class="a1">
                <div class="a2">
                    <div style="float: right;position: relative;margin-top: 23px;margin-right: 6px;font-size: 20px;">
                        <p><i style="padding-left: 53px;float: right;color: white;" class="far fa-calendar-alt">Ngày Đăng Bài:<%=p2.getProductNgaydang()%></i></span></p>
                </div>
                <div class="single">
                    <div>
                        <a href="#">
                            <img class="a2-1" style="border: 2px solid #312f2c;float: left;height: 324px;width: 576px;" src="<%=p2.getProductImage()%>" alt="" >
                        </a>
                    </div>

                    <div class="as" style="margin-left:3rem;" >

                        <p style="font-size: 28px;color: white;padding-left:729px;background-color:rgba(0,0,0,0.4);;border-top-right-radius: 45px;">Thông Tin Liên Hệ<p>
                        <div class="product-item">
                            <div ><p ><i class="far fa-caret-square-up"></i><strong>&nbsp;Tiêu Đề</strong><span style="margin-left:166px;"><%=p2.getProductName()%></span> </p></div>
                            <div ><p ><i class="fab fa-accusoft"></i><strong>&nbsp;Thể Loại</strong><span style="margin-left:153px;"><%=p2.getCategoryproductName()%></span> </p></div>
                            <div ><p ><i class="fas fa-money-bill"></i><strong>&nbsp;Giá Cũ</strong><span style="margin-left:178px;"><%=p2.getProductOldPrice()%> Triệu VNĐ</span></p></div>
                            <div ><p ><i class="fas fa-money-bill"></i><strong>&nbsp;Giá</strong><span style="margin-left:197px;"><%=p2.getProductPrice()%> Triệu VNĐ</span></p></div>                       
                            <div ><p ><i class="fab fa-laravel"></i><strong>&nbsp;Nguồn Gốc</strong><span style="margin-left:133px;"><%=p2.getProductOrigin()%></span></p></div>
                            <div><p ><i class="fas fa-address-book"></i><strong>&nbsp;Họ Tên Người Đăng</strong><span style="margin-left:72px;"><%=p2.getProductHoten()%></span></p></div>
                            <div ><p ><i class="fas fa-phone-square"></i><strong>&nbsp;Số Điện Thoại</strong><span style="margin-left:118px;"><%=p2.getProductSdt()%></span></p></div>
                            <div ><p ><i class="fas fa-compass"></i><strong>&nbsp;Địa Điểm</strong><span style="margin-left:155px;"><%=p2.getProductVitri()%></span></p></div>
                            <div ><p ><i class="fab fa-d-and-d"></i><strong>&nbsp;Tình Trạng</strong><span style="margin-left:138px;"><%=p2.getProductStock()%></span></p></div>
                        </div>

                        <div class="top-content" style="float: right;position: relative;margin-top: 1rem;">
                            <div class="white" style="line-height: 17px;margin-left: 383px;">
                                <%
                                    Cart cart = (Cart) session.getAttribute("cart");
                                    if (!cart.getCartItems().containsKey(p2.getProductID())) {
                                %>
                                <a  href="CartServlet?command=plus&productID=<%=p2.getProductID()%>" class="hvr-shutter-in-vertical hvr-shutter-in-vertical2 "><i class="fa fa-cart-plus" ></i>&nbsp;Đặt Hàng</a>
                                <%
                                } else {
                                %>
                                <a href=""  style="cursor:unset;background:black;line-height: 17px;margin-left: 383px;margin-top: 3px;" id="luuthongtin" class="hvr-shutter-in-vertical hvr-shutter-in-vertical2">Đã Đặt</a>
                                <%
                                    }
                                %>

                                <div class="clearfix"></div>
                            </div>
                        </div>

                    </div>              
                </div>
                <div class="as1" style="border: 2px solid black;height: auto;background-color: #FFECB3" >
                    <p style="background:rgba(0,0,0,0.4);color: white;font-size: 25px;padding-left: 486px;padding-top: 10px;padding-bottom: 10px;">Mô tả chi tiết</p>
                    <p style="padding-left: 26px;padding-right:26px;font-size:20px;color:black;"><%=p2.getProductDescription()%></p>
                    <div class="clearfix"> </div>
                    <img style="border:2px solid #312f2c;height:508px;width:737px;margin-left:201px;margin-top:25px;margin-bottom:25px;" src="<%=p2.getProductImage()%>" alt="" >
                </div>
                                              
                <div id="fb-root"></div>
                <script async defer crossorigin="anonymous" src="https://connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v7.0&appId=260072498392467&autoLogAppEvents=1" nonce="QU7F74QA"></script>
                <div style="margin-top: 56px;border: 1px solid white;background: rgba(255,255,255, 0.3);">
                <div class="fb-comments" data-href="http://localhost:8082/ThuCung/single.jsp?ProductID=<%=request.getParameter("productID")%>" data-numposts="5" data-width=""></div>
                </div>
                
                <!--start cung khoang gia-->    
                <div id="in-line" class="container" style="margin-top: 60px;margin-left: -138px;width: 1303px;">
                    <div class="content">
                        <div class="content-top" style="float:left;">
                            <h3 class="future" style="color:black;">Bài Đăng Cùng Khoảng Giá</h3>
                            <div class="content-top-in" style="width:932px;">
                                <%
                                    request.setCharacterEncoding("UTF-8");
                                    response.setCharacterEncoding("UTF-8");
                                    for (Product pp : ProductDAO.getProductSamePrice(p2.getProductPrice() )) {
                                %>
                                <div class="col-md-3 md-col" style="margin-top:30px;width: 285px;">
                                    <div  class="col-md" style="background:rgba(0,0,0,0.4)">
                                        <div><i class="fas fa-home" style="color: white;" ><%=pp.getCategoryproductName() %></i><span><i style="padding-left: 53px;float: right;color: white;" class="far fa-calendar-alt"><%=pp.getProductNgaydang() %></i></span></div>
                                        <div class="clearfix"></div> 
                                        <a href="single.jsp?productID=<%=pp.getProductID() %>"><img  src="<%=pp.getProductImage()%>" style="height: 253px;" alt="<%=pp.getProductName() %>" /></a>	
                                        <div class="top-content">
                                            <h5><a style="color:white;" href="single.jsp?productID=<%=pp.getProductID() %>"><%=pp.getProductName()%></a></h5>
                                            <h5 style="padding: 0px;margin-top: -9px;"><i class="fas fa-compass" style="color: white;"><%=pp.getProductVitri() %></i></h5>
                                            <h5 style="padding: 0px;margin-top: 4px;"><i class="fab fa-laravel" style="color:white;padding: 0px;margin-top: -9px;"><%=pp.getProductOrigin() %></i></h5>
                                            <%
                                                Users users = null;
                                                if (session.getAttribute("user") != null) {
                                                    users = (Users) session.getAttribute("user");
                                                }
                                                if (users != null) {
                                            %>
                                            <div class="white">
                                                <%
                                                    if (!cart.getCartItems().containsKey(p2.getProductID())) {
                                                %>
                                                <a href="#" id="luuthongtinproduct" class="hvr-shutter-in-vertical hvr-shutter-in-vertical2">Đặt Hàng</a>
                                                <%
                                                } else {
                                                %>
                                                <a href="#" style="cursor:unset;background:black;" id="luuthongtin" class="hvr-shutter-in-vertical hvr-shutter-in-vertical2">Đã Đặt</a>
                                                <%
                                                    }
                                                %>
                                                <p class="dollar"><span><%=pp.getProductPrice() %></span><span>Triệu</span><span class="in-dollar">VNĐ</span></p>
                                                <div class="clearfix"></div>
                                            </div>
                                            
                                            <%
                                                }
                                            %>
                                           
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
                                
                    </div>
                </div>
                <!--end-->    


                <div class="clearfix"></div>
                <!--start cùng loại-->
                <div class="container" style="margin-top: 60px;">
                    <div class="content">
                        <div class="content-top">
                            <h3 class="future" style="color:black;">Bài Đăng Cùng Loại</h3>
                            <div class="content-top-in">
                                <%
                                    request.setCharacterEncoding("UTF-8");
                                    response.setCharacterEncoding("UTF-8");
                                    for (Product pp : ProductDAO.getProductSameTieuDe(p2.getProductName())) {
                                %>
                                <div class="col-md-3 md-col" style="margin-top:30px;">
                                    <div  class="col-md" style="background:rgba(0,0,0,0.4)">
                                        <div><i class="fas fa-home" style="color: white;" ><%=pp.getCategoryproductName() %></i><span><i style="padding-left: 53px;float: right;color: white;" class="far fa-calendar-alt"><%=pp.getProductNgaydang()%></i></span></div>
                                        <div class="clearfix"></div> 
                                        <a href="single.jsp?productID=<%=pp.getProductID() %>"><img  src="<%=pp.getProductImage() %>" style="height: 253px;" alt="<%=pp.getProductName() %>" /></a>	
                                        <div class="top-content">
                                            <h5><a style="color:white;" href="single.jsp?productID=<%=pp.getProductID() %>""><%=pp.getProductName()%></a></h5>
                                            <h5 style="padding: 0px;margin-top: -9px;"><i class="fas fa-compass" style="color: white;"><%=pp.getProductVitri() %></i></h5>
                                            <h5 style="padding: 0px;margin-top: 4px;"><i class="fab fa-laravel" style="color:white;padding: 0px;margin-top: -9px;"><%=pp.getProductOrigin() %></i></h5>
                                            <%
                                                Users users = null;
                                                if (session.getAttribute("user") != null) {
                                                    users = (Users) session.getAttribute("user");
                                                }
                                                if (users != null) {
                                            %>
                                            <div class="white">
                                                <%
                                                    if (!cart.getCartItems().containsKey(p2.getProductID() )) {
                                                %>
                                                <a href="#" id="luuthongtinproduct" class="hvr-shutter-in-vertical hvr-shutter-in-vertical2">Đặt Hàng</a>
                                                <%
                                                } else {
                                                %>
                                                <a href="#" style="cursor:unset;background:black;" id="luuthongtin" class="hvr-shutter-in-vertical hvr-shutter-in-vertical2">Đã Đặt</a>
                                                <%
                                                    }
                                                %>
                                                <p class="dollar"><span><%=pp.getProductPrice() %></span><span>Triệu</span><span class="in-dollar">VNĐ</span></p>
                                                <div class="clearfix"></div>
                                            </div>
                                            <%
                                                }
                                            %>
                                            <script type="text/javascript">
                                                $(function ()
                                                {
                                                    $("#luuthongtinproduct").click(function ()
                                                    {
                                                        if (confirm("Chức năng Lưu ở mục Option này tạm thời khóa"))
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
#FFB74D;padding: 3rem" ></div>                               
                            </div>
                        </div>
                    </div>
                </div>
                <!--end--> 
            </div>

        </div>
        <jsp:include page="footer.jsp"></jsp:include>

    </body>
</html>
