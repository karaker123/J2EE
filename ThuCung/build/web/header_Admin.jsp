
<%@page import="model.Users"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Page</title>
    </head>
    <body>
        <%

            Users u = (Users) session.getAttribute("admin");
            if (u == null) {
                response.sendRedirect("404.jsp");
            }
        %>
        <!--Header-part-->
        <div id="header" style="background: rgba(0,0,0,0)">
            <h1><a href="index_Admin.jsp">Admin</a></h1>
        </div>
        <!--close-Header-part--> 
        <!--top-Header-menu-->
        <div id="user-nav" class="navbar navbar-inverse">
            <ul class="nav">
                <li  class="dropdown" id="profile-messages" ><a title="" href="#" data-toggle="dropdown" data-target="#profile-messages" class="dropdown-toggle"><i class="icon icon-user"></i>  <span class="text">Welcome,Administrator</span><b class="caret"></b></a>
                    <ul class="dropdown-menu">
                        <li><a href="#"><i class="icon-user"></i>Tài Khoản Của Tôi</a></li>
                        <li class="divider"></li>
                        <li><a href="DangXuat"><i class="icon-key"></i>Đăng Xuất</a></li>
                    </ul>
                </li>
                <li class=""><a title="" href="DangXuat"><i class="icon icon-share-alt"></i> <span class="text">Đăng Xuất</span></a></li>
            </ul>
        </div>
        <!--close-top-Header-menu-->
        <!--start-top-serch-->
        <div id="search">
            <input type="text" placeholder="Tìm Kiếm..." style="background: rgba(0,0,0,0.2);" />
            <button type="submit" class="tip-bottom" title="Search"><i class="icon-search icon-white"></i></button>
        </div>
        <!--close-top-serch-->

    </body>
</html>
