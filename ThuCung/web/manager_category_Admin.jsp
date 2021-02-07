

<%@page import="model.Users"%>
<%@page import="model.Category"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dao.CategoryDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Quản Lý Danh Mục</title>
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
            #danhmuc {
                font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
                border-collapse: collapse;
                width: 100%;
            }

            #danhmuc td, #danhmuc th {
                border: 1px solid #ddd;
                padding: 8px;
            }

            #danhmuc tr:nth-child(even){background-color: #f2f2f2;}

            #danhmuc tr:hover {background-color: #ddd;}

            #danhmuc th {
                padding-top: 12px;
                padding-bottom: 12px;
                text-align: left;
                background-color: #2E363F;
                color: white;
            }
            .fas
            {
                font-size:20px;
            }
        </style>
    </head>
    <body style="background:url(video/bann.jpg) fixed">
        <%
            CategoryDAO categoryDAO = new CategoryDAO();
            ArrayList<Category> listCategory = categoryDAO.getListCategoryProduct();
        %>

        <jsp:include page="header_Admin.jsp" ></jsp:include>
        <%
            Users u = (Users) session.getAttribute("admin");
            if (u == null) {
                response.sendRedirect("404.jsp");
            }
        %>
        <!--main-container-part-->
        <div id="content" style="background:rgba(0,0,0,0)">
            <!--breadcrumbs-->
            <div id="content-header">
                <div id="breadcrumb"> <a href="index_Admin.jsp" title="Go to Home" class="tip-bottom"><i class="icon-home"></i> Home</a></div>
            </div>
            <!--End-breadcrumbs-->
            <!--Start-->
            <div>
                <h3 style="color:white;">Danh Mục Bán Thú Cưng</h3>
                <table id="danhmuc">
                    <a href="insert_category.jsp"><i class="fas fa-plus-square" style="color:white;">Thêm Danh Mục</i></a>
                    <tr>
                        <th>Số Thứ Tự</th>
                        <th>Tên Danh Mục</th>
                        <th>Công Cụ</th>
                    </tr>
                    <%
                        int countt = 0;
                        for (Category cd : listCategory) {
                            countt++;
                    %>
                    <tr>
                        <td><%=countt%></td>
                        <td><%=cd.getCategoryName()%></td>
                        <td><span><a href="update_category_Admin.jsp?command=update&category_id=<%=cd.getCategoryID()%>"><i class="far fa-edit"></i></a></span>|||<span><a href="ManagerCategoryServlet?command=delete&category_id=<%=cd.getCategoryID()%>"><i class="fas fa-trash-alt"></i></a></span></td>
                    </tr>
                    <% }%>
                </table>
            </div>
                <div class="clear"></div>
            
            <!--End-->
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
