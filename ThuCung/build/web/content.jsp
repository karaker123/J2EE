

<%@page import="model.CartOpts"%>
<%@page import="dao.OptionDAO"%>
<%@page import="model.Option"%>
<%@page import="java.util.HashMap"%>
<%@page import="model.Item"%>
<%@page import="java.util.Map"%>
<%@page import="model.Users"%>
<%@page import="model.Cart"%>
<%@page import="dao.PostMuaDAO"%>
<%@page import="model.PostMua"%>
<%@page import="model.Product"%>
<%@page import="dao.ProductDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>content</title>
        <script type="text/javascript" src="js/jquery.flexisel.js"></script>
        <style>
            .col-md:hover
            {
                border : 1px solid #00c6d7;
                box-shadow: 2px 2px 16px 0px violet;
            }
            ul.callbacks_tabs.callbacks1_tabs
            {
                left: 45%;
            }
            .col-md{
                transition:1s all ease;
                perspective: 600px;
            }
            .col-md_img{
                overflow: hidden;
            }
            .col-md a img{
                transition: 2s all ease;
            }
            .col-md:hover{
                transform : rotate(5deg);
                box-shadow: 2px 2px 16px 0px violet!important;
            }
            .col-md:hover a img{
                transform: scale(1.2);
            }
        </style>

        <script type="text/javascript">
            $(document).ready(function ()
            {
                $("#luuthongtin").click(function ()
                {

                    $("#luuthongtin").html("Đã Đặt");
                    $("#luuthongtin").css('cursor', 'unset');
                });
            });
        </script>
    </head>
    <body>


        <!---->
        <%
            request.setCharacterEncoding("UTF-8");
            response.setCharacterEncoding("UTF-8");
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
        <div class="container" style="margin-top: 60px;">
            <div class="content">
                <div class="content-top">
                    <h3 class="future sub-title" style="color:black;font-size:25px; text-align: center" >Thú Cưng Các Loại</h3>
                    <div class="content-top-in">
                        <%
                            request.setCharacterEncoding("UTF-8");
                            response.setCharacterEncoding("UTF-8");
                            for (Product p : ProductDAO.getListProductByChapNhan()) {
                        %>
                        <div class="col-md-3 md-col" style="margin-top:30px">
                            <div  class="col-md" style="background:rgba(0,0,0,0.4);box-shadow:2px 2px 16px 0px black">
                                <div><i class="fas fa-home" style="color: white;" ><%=p.getCategoryproductName()%></i><span><i style="float: right;color: white;" class="far fa-calendar-alt"><%=p.getProductNgaydang()%></i></span></div>
                                <div class="clearfix">

                                </div>
                                <div class="col-md_img">
                                    <a href="single.jsp?productID=<%=p.getProductID()%>">
                                        <img  src="<%=p.getProductImage()%>" style="height: 253px;" alt="<%=p.getProductName()%>" />
                                    </a>
                                </div>	
                                <div class="top-content">
                                    <h5><a style="color:white;" href="single.jsp?productID=<%=p.getProductID()%>"><%=p.getProductName()%></a></h5>
                                    <h5 style="padding: 0px;margin-top: -9px;"><i class="fas fa-compass" style="color: white;"><%=p.getProductVitri()%></i></h5>
                                    <p class="dollar"><span><%=p.getProductPrice() %></span><span>Triệu</span><span class="in-dollar">VNĐ</span></p>
                                    <%
                                        Users users = null;
                                        if (session.getAttribute("user") != null) {
                                            users = (Users) session.getAttribute("user");
                                        }
                                        if (users != null) {
                                    %>
                                    <div class="white">
                                        <%
                                            if (!cart.getCartItems().containsKey(p.getProductID())) {
                                        %>
                                        <a href="CartServlet?command=plus&productID=<%=p.getProductID()%>" id="luuthongtin" class="hvr-shutter-in-vertical hvr-shutter-in-vertical2">Đặt Hàng</a>
                                        <%
                                        } else {
                                        %>
                                        <a href="" style="cursor:unset;background:black;" id="luuthongtin" class="hvr-shutter-in-vertical hvr-shutter-in-vertical2">Đã Đặt</a>
                                        <%
                                            }
                                        %>
                                        <p class="dollar"><span><%=p.getProductPrice()%></span><span>Triệu</span><span class="in-dollar">VNĐ</span></p>
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
            </div>
        </div>
        <ul class="start" style="margin-left: 564px;margin-top: 32px;">
            <li ><a href="#"><i></i></a></li>
            <li><span>1</span></li>
            <li ><a href="#"><i  class="next"> </i></a></li>
        </ul>
        <!--Nơi Bán Option-->
        <div class="container" style="margin-top: 60px;">
            <div class="content">
                <div class="content-top">
                    <h3 class="future" style="color:black;font-size:25px; text-align: center" >Thức Ăn Và Phụ Kiện</h3>
                    <div class="content-top-in">
                        <%
                            request.setCharacterEncoding("UTF-8");
                            response.setCharacterEncoding("UTF-8");
                            for (Option c : OptionDAO.getListOptionByChapNhan()) {
                        %>
                        <div class="col-md-3 md-col" style="margin-top:30px;">
                            <div  class="col-md" style="background:rgba(0,0,0,0.4)">
                                <div><i class="fas fa-home" style="color: white;" ><%=c.getCategoryoptionName()%></i><span><i style="padding-left: 53px;float: right;color: white;" class="far fa-calendar-alt"><%=c.getOptionNgaydang()%></i></span></div>
                                <div class="col-md_img">
                                <a href="singleOption.jsp?optionID=<%=c.getOptionID()%>">
                                    <img  src="<%=c.getOptionImage()%>" style="height: 253px;" alt="<%=c.getOptionName()%>" /></a>
                                </div> 
                                <div class="top-content">
                                    <h5><a style="color:white;" href="singleOption.jsp?optionID=<%=c.getOptionID()%>"><%=c.getOptionName()%></a></h5>
                                    <h5 style="padding: 0px;margin-top: -9px;"><i class="fas fa-compass" style="color: white;"><%=c.getOptionVitri()%></i></h5>
                                    <p class="dollar"><span><%=c.getOptionPrice() %></span><span>Triệu</span><span class="in-dollar">VNĐ</span></p>
                                    <%
                                        Users users = null;
                                        if (session.getAttribute("user") != null) {
                                            users = (Users) session.getAttribute("user");
                                        }
                                        if (users != null) {
                                    %>
                                    <div class="white">
                                        <%
                                            if (!cart.getCartItems().containsKey(c.getOptionID())) {
                                        %>
                                        <a href="CartOption?command=plus&optionID=<%=c.getOptionID()%>" class="hvr-shutter-in-vertical hvr-shutter-in-vertical2">Đặt Hàng</a>
                                        <%
                                        } else {
                                        %>
                                        <a href="" style="cursor:unset;background:black;" id="luuthongtin" class="hvr-shutter-in-vertical hvr-shutter-in-vertical2">Đã Đặt</a>
                                        <%
                                            }
                                        %>
                                        <p class="dollar"><span><%=c.getOptionPrice()%></span><span>Triệu</span><span class="in-dollar">VNĐ</span></p>
                                        <div class="clearfix"></div>
                                    </div>
                                    <%
                                        }
                                    %>
<!--                                    <script type="text/javascript">
                                        $(function ()
                                        {
                                            $("#luuthongtinoption").click(function ()
                                            {
                                                if (confirm("Chức năng Lưu ở mục Option này tạm thời khóa"))
                                                {
                                                    window.location.reload(true);
                                                }
                                            });
                                        });
                                    </script>-->
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
        <ul class="start" style="margin-left: 564px;margin-top: 32px;">
            <li ><a href="#"><i></i></a></li>
            <li><span>1</span></li>
            <li ><a href="#"><i  class="next"> </i></a></li>
        </ul>

    </body>
</html>
