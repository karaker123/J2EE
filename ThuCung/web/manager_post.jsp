

<%@page import="model.cachnuoi"%>
<%@page import="dao.cachnuoiDAO"%>
<%@page import="model.Users"%>
<%@page import="model.Category"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dao.CategoryDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Quản Lý Bài Đăng Cách Nuôi</title>
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
        <script type="text/javascript" src="js/jquery-1.7.2.min.js" ></script>
        <script type="text/javascript" src="js/jquery.min.js" ></script>
        <style>
            #content {
                background: #fff !important;
            }
            #contentWrapper{
                padding: 1rem;
                box-sizing: border-box;
            }
            .button {
                padding: .5rem 1rem;
                display: flex;
                align-items: center;
                justify-content: space-around;
                margin: .5rem 0rem;
                margin-top: 2rem;
                width: max-content;
                background-color: #27A9E3;
                color: #fff;
                font-weight: 400;
                border-radius: 2px;
                box-shadow: 0px 0px 8px rgba(0,0,0,0.1);
            }
            .button-image {
                margin-right: .5rem;
            }
            .button-tools {
                display: flex;
                width: 24px;
                height: 24px;
                display: flex;
                justify-content: center;
                align-items: center;
                padding-right: 0;
                margin-right: 0px;
                a {
                    width: 100% !important;
                    height: 100% !important;
                }
            }
            #danhmuc {
                font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
                border-collapse: collapse;
                width: 100%;
                box-shadow: 0px 0px 8px rgba(0,0,0,0.1);
            }

            #danhmuc td, #danhmuc th {
                border: 1px solid #ddd;
                padding: 8px;
                border: none;
                color: #535353;
            }

            #danhmuc tr:nth-child(even){background-color: #f2f2f2;}

            #danhmuc tr:hover {background-color: #ddd;}

            #danhmuc th {
                padding-top: 12px;
                padding-bottom: 12px;
                text-align: left;
                background-color: #27A9E3;
                color: white;
            }
            .fas
            {
                font-size:20px;
            }
            .dlg-container
            {
                position:absolute;
                left:50%;
                top:30%;
                transform: translateX(-50%) translateY(-50%);
                width:400px;
                background:#fff;
                padding:10px;
                border:2px solid #ddd;
                box-shadow:1px 1px 5px 1px #ccc;
                border-radius:10px;
                opacity:1;
                transition:all 0.3 linear 0s;
                z-index: 2;
                display:none;
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
            .freeze-layer
            {
                position: fixed;
                top: 0;
                left:0;
                width:100%;
                height:100%;
                background:rgba(0,0,0,0.9);
                z-index:1;
            }
        </style>

    </head>
    <body style="background:url(video/bann.jpg) fixed;color:white;">
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
            <div id="contentWrapper">   
                <center>
                    
                    <%
                        String daduyet = (String)request.getAttribute("daduyet");
                        if(daduyet != null )
                        {
                    %>
                    <center style="width: 296px;color: aqua;"><span><img style="float:left;margin-top: 11px;" src="img/available.png" /></span><span><h3><%out.print(daduyet); %></h3></span></center>
                    <%
                        }
                    %>
                    <%
                        String xoa = (String)request.getAttribute("xoa");
                        if(xoa != null )
                        {
                    %>cac
                    <h3 style="background:url(img/not-available.png) no-repeat;color:red;"><%out.print(xoa); %></h3>
                    <%
                        }
                    %>
                    
                </center>
                <h3 style="color: #535353;">Danh Sách Bài Đăng Cách Nuôi</h3>
                <table id="danhmuc">
                    <tr>
                        <th width="150px">Số Thứ Tự</th>
                        <th>Tiêu đề</th>
                        <th>Nội dung</th>
                        <th width="70px">Công Cụ</th>
                    </tr>
                    
                    <tr> <a class="button" href="tao_cachnuoi_admin.jsp?command=insert"><i class="button-image far fa-edit"></i> Tạo bài đăng cách nuôi</a></tr>
                    <%
                        int countt = 0;
                        for (cachnuoi ct : cachnuoiDAO.getListcachnuoi()) {
                            countt++;
                    %>
                    
                    <tr>
                        <td><%=countt%></td>
                        <td width="200px"><img style="width:100px;height:50px;" src="<%=ct.getCachnuoi_image()%>" >
                            <span><%=ct.getCachnuoi_title()%></span>
                        </td>
                        <td style="max-height: 200px; overflow: auto; display: block; padding: 1rem; box-sizing: border-box;"><%=ct.getCachnuoi_noidung()%></td>
                        <td>
                            <div style="display: flex; align-items: center;">
                            <a class="button-tools" href="update_cachnuoi_admin.jsp?command=update&cachnuoiID=<%=ct.getCachnuoi_id()%>"><i class="far fa-edit"></i></a>
                            <a class="button-tools" href="quan-ly-cach-nuoi?command=xoa&cachnuoiID=<%=ct.getCachnuoi_id()%>"><i class="fas fa-trash-alt"></i></a>
                        </td>
                    </tr>
                    <%
                        }
                    %>
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
