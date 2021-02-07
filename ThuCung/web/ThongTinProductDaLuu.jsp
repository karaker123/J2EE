

<%@page import="model.ItemOption"%>
<%@page import="model.CartOpts"%>
<%@page import="java.util.Map"%>
<%@page import="model.Item"%>
<%@page import="model.Cart"%>
<%@page import="model.Users"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lưu Thông Tin Sản Phẩm</title>
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
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.4.2/css/all.css" />
        <style>
            #baidang {
                font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
                border-collapse: collapse;
                width: 100%;
            }

            #baidang td, #baidang th {
                border: 1px solid #ddd;
                padding: 8px;
            }

            #baidang tr:nth-child(even){background-color: rgba(0,0,0,0.4);color:white;}

            #baidang tr:hover {background-color: #544949;}

            #baidang th {
                padding-top: 12px;
                padding-bottom: 12px;
                text-align: left;
                background-color: rgba(0,0,0,0.4);
                color: white;
            }
            .fas
            {
                font-size:20px;
            }
        </style>
    </head>
    <body fixed">
        <%
            Users users = null;
            if (session.getAttribute("user") != null) {
                users = (Users) session.getAttribute("user");
            }
            Cart cart = (Cart) session.getAttribute("cart");

            if (cart == null) {
                cart = new Cart();
                session.setAttribute("cart", cart);
            }
            
            CartOpts cartOpts = (CartOpts) session.getAttribute("cartOption");
            
            if (cartOpts == null) {
                cartOpts = new CartOpts();
                session.setAttribute("cartOption", cartOpts);
            }
        %>
        <jsp:include page="header.jsp"></jsp:include>

            <div>
                <table id="baidang">
                    <a href="index.jsp"><i style="margin-top: 1rem; margin-bottom: 1rem;" class="fas fa-sign-out-alt">Trở Laị</i></a>
                    <h3 style="margin-top: 1rem; margin-bottom: 1rem;">Giỏ hàng sản phẩm</h3>
                    
                    <tr>
                        <th>STT</th>
                        <th>Họ Và Tên Người Đăng</th>
                        <th>SĐT</th>
                        <th>Tiêu Đề</th>
                        <th>Chỉnh sửa giỏ hàng</th>
                    </tr>
                <%
                    int countt = 0;
                    for (Map.Entry<Integer, Item> list : cart.getCartItems().entrySet()) {
                        countt++;
                %>
                <tr>
                    <td><%=countt%> </td>
                    <td><%=list.getValue().getProduct().getProductHoten()%></td>
                    <td><%=list.getValue().getProduct().getProductSdt() %></td>
                    <td><%=list.getValue().getProduct().getProductName() %></td>
                    <td><span><a href="CartServlet?command=remove&productID=<%=list.getValue().getProduct().getProductID() %>"><i class="fas fa-trash-alt">[Xóa]</i></a></span><span><a href="single.jsp?productID=<%=list.getValue().getProduct().getProductID()%>"><i class="fas fa-link">Chi Tiết</i></span></a> </td>
                </tr>
                <% }%>
            </table>
            <table id="baidang" style="margin-top: 2rem;">
                <h3 style="margin-top: 1rem; margin-bottom: 1rem;">Giỏ hàng phụ kiện</h3>
                        
                <tr>
                        <th>STT</th>
                        <th>Họ Và Tên Người Đăng</th>
                        <th>SĐT</th>
                        <th>Tiêu Đề</th>
                        <th>Chỉnh sửa giỏ hàng</th>
                    </tr>
                <%
                    int counttOpts = 0;
                    for (Map.Entry<Integer, ItemOption> list : cartOpts.getCartItems().entrySet()) {
                        counttOpts++;
                %>
                <tr >
                    <td><%=countt%> </td>
                    <td><%=list.getValue().getOption().getOptionHoten()%></td>
                    <td><%=list.getValue().getOption().getOptionSdt()%></td>
                    <td><%=list.getValue().getOption().getOptionName()%></td>
                    <td><span><a href="CartOption?command=remove&optionID=<%=list.getValue().getOption().getOptionID() %>"><i class="fas fa-trash-alt">[Xóa]</i></a></span><span><a href="singleOption.jsp?optionID=<%=list.getValue().getOption().getOptionID()%>"><i class="fas fa-link" >Chi Tiết</i></span></a> </td>
                </tr>
                <% }%>
            </table>
        </div>
        <jsp:include page="footer.jsp"></jsp:include>
    </body>
</html>
