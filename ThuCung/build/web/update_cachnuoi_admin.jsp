
<%@page import="model.Users"%>
<%@page import="model.cachnuoi"%>
<%@page import="dao.cachnuoiDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sửa Cách Nuôi</title>
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
        <%
            String error = "";
            if (request.getParameter("error") != null) {
                error = request.getParameter("error");
            }
        %>
        <%
            Users u = (Users) session.getAttribute("admin");
            if (u == null) {
                response.sendRedirect("404.jsp");
            }
        %>
        <jsp:include page="header_Admin.jsp" ></jsp:include>
            <!--main-container-part-->
            
            <div id="content">
                <!--breadcrumbs-->
                <div id="content-header">
                    <div id="breadcrumb"> <a href="index.html" title="Go to Home" class="tip-bottom"><i class="icon-home"></i> Home</a></div>
                </div>
                <div style="width: 100%; padding: 1rem; box-sizing: border-box;">
                    <h3>Cập Nhật Cách nuôi</h3>
                <% cachnuoi ct = cachnuoiDAO.getChitietcachnuoi(Integer.parseInt(request.getParameter("cachnuoiID").toString()));  %>
                    <form action="quan-ly-cach-nuoi" method="post" enctype="multipart/form-data">
                        <table width="100%">
                            <tr><td width="125px" style="float:right;"><b>Tiêu đề<%=error%></b></td>
                                <td width="100%"><input style="width: 100%;" type="text" class="sedang" name="title" value="<%=ct.getCachnuoi_title()%>"></td>
                        </tr>
                     <tr>
                                <td><b style="">Hình Ảnh:(*)</b></td>
                                <td><input required="required" style="width: 100%; height: 47px;margin-top: 3px;padding-top: 10px;padding-left: 13px;" type="file" name="hinhanh" multiple></td>
                            </tr>
                            <tr><td width="125px" style="float:right;"><b>Nội dung<%=error%></b></td><td><textarea style="width: 100%" type="text" name="content" rows="10"><%=ct.getCachnuoi_noidung()%></textarea></td></tr>
                        <tr><td></td><td>
                                <input type="hidden" name="command" value="update">
                                <input type="hidden" name="cachnuoiID" value="<%=request.getParameter("cachnuoiID")%>">
                                <input  style="background-color: #27A9E3; color: #fff; border: none; border-radius: 2px; padding: .5rem 1rem; box-shadow: 0 0 8px rgba(0, 0, 0, 0.1);" type="submit" class="button" value="Lưu Dữ Liệu">
                            </td></tr>
                    </table>
                </form>
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
