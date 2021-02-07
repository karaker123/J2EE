

<%@page import="model.Users"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Thêm Thành Viên</title>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <link rel="stylesheet" href="css/bootstrap.min.css" />
        <link rel="stylesheet" href="css/bootstrap-responsive.min.css" />
        <link rel="stylesheet" href="css/fullcalendar.css" />
        <link rel="stylesheet" href="css/matrix-style.css" />
        <link rel="stylesheet" href="css/matrix-media.css" />
        <link href="font-awesome/css/font-awesome.css" rel="stylesheet" />
        <link rel="stylesheet" href="css/jquery.gritter.css" />
        <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,700,800' rel='stylesheet' type='text/css'>
    </head>
    <body>

        <jsp:include page="header_Admin.jsp" ></jsp:include>
        <%

            Users u = (Users) session.getAttribute("admin");
            if (u == null) {
                response.sendRedirect("404.jsp");
            }
        %>
        <div id="content">
            <!--breadcrumbs-->
            <div id="content-header">
                <div id="breadcrumb"> <a href="index_Admin.jsp" title="Go to Home" class="tip-bottom"><i class="icon-home"></i> Home</a></div>
            </div>
            <div class="clear"></div>

            <div class="">
                <div class="">
                    <div class="">
                        <h2 class="">Thêm Tài Khoản Cho Thành Viên</h2>
                        <form action="QuanLyThanhVien" method="post">
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

                            <div>
                                <span class="mail">Họ Và Tên:*</span>
                                <input type="text" name="hovaten" placeholder="Điền họ và tên...">
                            </div>
                            <div> 	
                                <span class="mail">Email*</span>
                                <input type="text" name="email" placeholder="Điền email..."> 
                            </div>    
                            <div>
                                <span>Username *</span>
                                <input type="text" name="username" placeholder="Điền tên đăng nhập...">
                            </div> 	
                            <div> 
                                <span class="word">Password *</span>
                                <input type="password" name="pass" placeholder="password...">
                            </div>			
                            <input type="hidden" value="them" name="command">
                            <input type="submit" value="Đăng Ký"> 
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <jsp:include page="menu_Admin.jsp" ></jsp:include>


        <script src="js/excanvas.min.js"></script> 
        <script src="js/jquery.min.js"></script> 
        <script src="js/jquery.ui.custom.js"></script> 
        <script src="js/bootstrap.min.js"></script> 
        <script src="js/jquery.flot.min.js"></script> 
        <script src="js/jquery.flot.resize.min.js"></script> 
        <script src="js/jquery.peity.min.js"></script> 
        <script src="js/fullcalendar.min.js"></script> 
        <script src="js/matrix.js"></script> 
        <script src="js/matrix.dashboard.js"></script> 
        <script src="js/jquery.gritter.min.js"></script> 
        <script src="js/matrix.interface.js"></script> 
        <script src="js/matrix.chat.js"></script> 
        <script src="js/jquery.validate.js"></script> 
        <script src="js/matrix.form_validation.js"></script> 
        <script src="js/jquery.wizard.js"></script> 
        <script src="js/jquery.uniform.js"></script> 
        <script src="js/select2.min.js"></script> 
        <script src="js/matrix.popover.js"></script> 
        <script src="js/jquery.dataTables.min.js"></script> 
        <script src="js/matrix.tables.js"></script> 

        <script type="text/javascript">
            // This function is called from the pop-up menus to transfer to
            // a different page. Ignore if the value returned is a null string:
            function goPage(newURL) {

                // if url is empty, skip the menu dividers and reset the menu selection to default
                if (newURL != "") {

                    // if url is "-", it is this page -- reset the menu:
                    if (newURL == "-") {
                        resetMenu();
                    }
                    // else, send page to designated URL            
                    else {
                        document.location.href = newURL;
                    }
                }
            }

            // resets the menu selection upon entry to this page:
            function resetMenu() {
                document.gomenu.selector.selectedIndex = 2;
            }
        </script>
    </body>
</html>
