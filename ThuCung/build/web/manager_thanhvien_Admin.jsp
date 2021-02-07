

<%@page import="dao.UsersDAO"%>
<%@page import="model.Users"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Quản Lý Thành Viên</title>
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
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.4.2/css/all.css" />
        <style>
            #baidang {
                font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
                border-collapse: collapse;
                width: 100%;
            }

            #baidang td, #customers th {
                border: 1px solid #ddd;
                padding: 8px;
            }

            #baidang trtd:nth-child(even){background-color: #f2f2f2;}

            #baidang tr:hover {background-color: rgba(0,0,0,0.5);}

            #baidang th
            {   
                padding-top: 12px;
                padding-bottom: 12px;
                text-align: left;
                background-color: rgba(0, 0, 0, 0.34);
                color:  white;
                border-right: 1px solid white;
            }
        </style>
    </head>
    <body style="background:url(video/bann.jpg) fixed">

        <jsp:include page="header_Admin.jsp" ></jsp:include>
        <%

            Users u = (Users) session.getAttribute("admin");
            if (u == null) {
                response.sendRedirect("404.jsp");
            }
        %>
        <div id="content" style="background:rgba(0,0,0,0)">
            <!--breadcrumbs-->
            <div id="content-header">
                <div id="breadcrumb"> <a href="index.html" title="Go to Home" class="tip-bottom"><i class="icon-home"></i> Home</a></div>
            </div>
            <div >
                <div >
                    <%
                        Users user = null;
                        String xoa = (String) request.getAttribute("delete");
                        if (session.getAttribute("user") != null) {
                            user = (Users) session.getAttribute("users");
                        }
                    %>
                    <%if (user != null) {%>
                    <span style="color:red;">Đã Thêm Tài Khoản Của <%= user.getHovaten()%></span>
                    <%  }%>
                    <%
                        if (xoa != null) {
                    %>
                    <span style="color:red;"><%out.println(xoa); %></span>
                    <% }%>
                    <h3 style="color:white;">Quản Lý Thành Viên</h3>
                    <a href="insert_thanhvien_Admin.jsp" style="color:white">Thêm Thành Viên</a>

                    <table id="baidang">
                        <tr>
                            <th>STT</th>
                            <th>Họ Và Tên</th>
                            <th>Loại Thành Viên</th>
                            <th>UserName</th>
                            <th>Email</th>
                            <th>Công Cụ</th>
                        </tr>
                        <%
                            int countt = 0;
                            for (Users u1 : UsersDAO.getListUsers()) {
                                countt++;
                        %>
                        <tr style="color:white;">

                            <td><%=countt%></td>
                            <td><%=u1.getHovaten()%><span><a href="update_thanhvien_ten_Admin.jsp?lenhsql=suaten&userID=<%=u1.getStt()%>"><i class="far fa-edit"></i></a></span></td>
                            <%
                                if(u1.getUser_role() ==1 )
                                {
                            %>
                            <td>Admin<span><a href=""><i class="fas fa-male"></i></a></span></td>
                            <%
                                }else{
                            %>
                            <td>Member<span><a href=""><i class="fas fa-male"></i></a></span></td>
                            <%
                                }
                            %>
                            <td><%=u1.getUserName()%><span><a href="update_thanhvien_username_Admin.jsp?lenhsql=suausername&userID=<%=u1.getStt()%>"><i class="far fa-edit"></i></a></span></td>
                            <td><%=u1.getUserEmail()%><span><a href="update_thanhvien_email_Admin.jsp?lenhsql=suaemail&userID=<%=u1.getStt()%>"><i class="far fa-edit"></i></a></span></td>
                            <td><span><a href="QuanLyThanhVien?lenhsql=delete&userID=<%=u1.getStt()%>"><i class="fas fa-trash-alt"></i></a></span></td>
                        </tr>
                        <%}%>
                    </table>
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
