<%@page import="model.Users"%>
<%@page import="model.PostMua"%>
<%@page import="dao.PostMuaDAO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dao.CategoryDAO"%>
<%@page import="model.Category"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Quản Lý Bài Đăng</title>
        <c:set var="root" value="${pageContext.request.contextPath}"/>
        <link href="${root}/css/mos-style.css" rel='stylesheet' type='text/css' />
    </head>
    <body>

        <jsp:include page="header_1.jsp" ></jsp:include>
        <%

            Users u = (Users) session.getAttribute("admin");
            if (u == null) {
                response.sendRedirect("404.jsp");
            }
        %>
        <div id="wrapper">
            <jsp:include page="menu.jsp" ></jsp:include>
                <div  class="container">
                    <div class="form_dang_mua" class="container">
                        <div  class="account">
                            <h2 class="account-in">Đăng Tin Mua Thú Cưng</h2>
                            <form  action="QuanLyBaiDangAdmin" method="get">
                                <div>
                                    <p>Tên Của Bạn (*)</p>
                                    <input style="width: 100%" type="text" name="ten">
                                </div> 	
                                <div> 
                                    <p class="word">Số điện thoại (*)</p>
                                    <input style="width: 100%" type="text" name="sdt">
                                </div>
                                <div> 
                                    <p class="word">Tiêu đề: </p>
                                    <input style="width: 100%" type="text" name="tieude">
                                </div>
                                <div>
                                    <p class="word">Nội Dung:</p>
                                    <textarea style="height: 100px" class="textarea" name="noidung"></textarea>
                                </div>
                                <input type="submit" value="Đăng Bài"> 
                            </form>
                        </div>
                    </div>
                </div>
                <div class="clear"></div>
            <jsp:include page="footer_1.jsp" ></jsp:include>
        </div>
    </body>
</html>
s