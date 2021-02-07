
<%@page import="model.Product"%>
<%@page import="dao.ProductDAO"%>
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
        <script type="text/javascript" src="js/jquery-1.7.2.min.js" ></script>
        <script type="text/javascript" src="js/jquery.min.js" ></script>
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

            #danhmuc tr:nth-child(even){background: rgba(255,255,255,0.2)}

            #danhmuc tr:hover {background-color: #ddd;}

            #danhmuc th {
                padding-top: 12px;
                padding-bottom: 12px;
                text-align: left;
                background-color: rgba(0,0,0,0.8);
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
            <div>   
                <center>
                    <h4 style="color:red;">
                        Hướng Dẫn: Các bài chưa được duyệt sẽ không được hiển thị trên trang website ;
                        Bấm vào [Đi Duyệt] để đi đến dạng Demo của bài đăng chưa được duyệt.
                        Ở đó , bấm vào <span style="color:aqua;">duyệt</span> nếu đăng lên website,
                        Và <span style="color:aqua">Hủy Bỏ</span> bài đăng để hủy bỏ bài .
                    </h4>
                    
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
                    %>
                    <h3 style="background:url(img/not-available.png) no-repeat;color:red;"><%out.print(xoa); %></h3>
                    <%
                        }
                    %>
                  
                </center>
                <h3 style="color:white;">Danh Sách Bài Đăng Sản Phẩm Của Thành Viên</h3>
                <table id="danhmuc">
                    <tr>
                        <th>Số Thứ Tự</th>
                        <th>Bài Đăng</th>
                        <th>Người Đăng</th>
                        <th>Loại</th>
                        <th>Tình Trạng</th>
                        <th>Công Cụ</th>
                    </tr>
                    <%
                        int countt = 0;
                        for (Product ct : ProductDAO.getListProduct()) {
                            countt++;
                    %>
                    <tr>
                        <td><%=countt%></td>
                        <td><img style="width:100px;height:50px;" src="<%=ct.getProductImage()%>" >
                            <span><%=ct.getProductName()%></span>
                        </td>
                        <td><%=ct.getProductHoten()%></td>
                        <td><%=ct.getCategoryproductName()%></td>
                        <%
                            if (ct.getProductStatus()== 0) {
                        %>
                        <td><a  ><span  style="border:1px solid red;border-radius: 5px;font-size: 15px;color: red;cursor: no-drop;"><i class="far fa-times-circle"></i>Chưa Duyệt</span></a> 
                        </td>
                        <%
                        } else {
                        %>
                        <td><span style="border:1px solid aqua;border-radius: 5px;font-size: 15px;color: aqua;"><i class="fas fa-check"></i>Đã Duyệt</span></td>
                        <%
                            }
                        %>
                        <td><%
                            if (ct.getProductStatus() == 0) {
                            %>
                            <span style="border: 2px dashed red;"><a style="color: rgba(122,231,0,0.8);font-size:15px;" href="MoHinhProduct.jsp?ProductID=<%=ct.getProductID()%>"><i class="fas fa-unlock-alt"></i>Đi Duyệt</a></span>
                            <%
                                }
                            %>
                            <span><a href="DuyetBaiProduct?command=xoa&ProductID=<%=request.getParameter("ProductID")%>"><i class="fas fa-trash-alt">Xóa</i></a></span></td>

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
