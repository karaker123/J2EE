

<%@page import="model.Users"%>
<%@page import="dao.ProductDAO"%>
<%@page import="dao.UsersDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="com.google.gson.Gson"%>
<%@ page import="com.google.gson.JsonObject"%>

<%
    Gson gsonObj = new Gson();
    Map<Object, Object> map = null;
    List<Map<Object, Object>> list = new ArrayList<Map<Object, Object>>();

    map = new HashMap<Object, Object>();
    map.put("x", 10);
    map.put("y", 31);
    list.add(map);
    map = new HashMap<Object, Object>();
    map.put("x", 20);
    map.put("y", 65);
    list.add(map);
    map = new HashMap<Object, Object>();
    map.put("x", 30);
    map.put("y", 40);
    list.add(map);
    map = new HashMap<Object, Object>();
    map.put("x", 40);
    map.put("y", 84);
    map.put("indexLabel", "Highest");
    list.add(map);
    map = new HashMap<Object, Object>();
    map.put("x", 50);
    map.put("y", 68);
    list.add(map);
    map = new HashMap<Object, Object>();
    map.put("x", 60);
    map.put("y", 64);
    list.add(map);
    map = new HashMap<Object, Object>();
    map.put("x", 70);
    map.put("y", 38);
    list.add(map);
    map = new HashMap<Object, Object>();
    map.put("x", 80);
    map.put("y", 71);
    list.add(map);
    map = new HashMap<Object, Object>();
    map.put("x", 90);
    map.put("y", 54);
    list.add(map);
    map = new HashMap<Object, Object>();
    map.put("x", 100);
    map.put("y", 60);
    list.add(map);
    map = new HashMap<Object, Object>();
    map.put("x", 110);
    map.put("y", 21);
    map.put("indexLabel", "Lowest");
    list.add(map);
    map = new HashMap<Object, Object>();
    map.put("x", 120);
    map.put("y", 49);
    list.add(map);
    map = new HashMap<Object, Object>();
    map.put("x", 130);
    map.put("y", 41);
    list.add(map);

    String dataPoints = gsonObj.toJson(list);
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin's Page</title>
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
            Users u = (Users) session.getAttribute("admin");
            if (u == null) {
                response.sendRedirect("404.jsp");
            }
        %>
        <!--main-container-part-->
        <div id="content" style="background: rgba(0,0,0,0);">
            <!--breadcrumbs-->
            <div id="content-header">
                <div id="breadcrumb" style="background: rgba(0,0,0,0.4);"> <a href="index_Admin.jsp" title="Go to Home" class="tip-bottom"><i class="icon-home"></i> Home</a></div>
            </div>
            <!--End-breadcrumbs-->

            <!--Action boxes-->
            <div class="container-fluid">

                <!--End-Action boxes-->    

                <!--Chart-box-->    
                <div class="row-fluid" >
                    <div class="widget-box" style="background: rgba(0,0,0,0);" >
                        <div class="widget-title bg_lg"><span class="icon"><i class="icon-signal"></i></span>
                            <h5>Thống kê</h5>
                        </div>
                        <div class="widget-content" style="text-align: center" >
                            <div class="row-fluid" style="height: 600px;">
                                <div class="quick-actions_homepage">
                                    <ul class="quick-actions">
                                        <li class="bg_lb"> <a href="#"><i class="icon-user"></i>Số thành viên <% out.print(UsersDAO.countuser());%>  </a> </li>
                                        <li class="bg_lg span3"> <a href="#"> <i class="icon-book"></i>Tổng số bài đăng mua <% out.print(ProductDAO.countbaidangmua());%></a> </li>
                                        <li class="bg_lg span3"> <a href="#"> <i class="icon-book"></i>Tổng số bài đăng bán <%out.print(ProductDAO.countbaidangban());%></a> </li>
                                        <li class="bg_ly"> <a href="#"> <i class="icon-globe"></i>Trực tuyến 2</a> </li>
                                    </ul>
                                </div>
                                <div class="span9">
                                    <div class="chart" style="margin-top: 3rem;text-align: center" >
                                        <div id="chartContainer" style="height: 370px; width: 100%;"></div>
                                        <script src="https://canvasjs.com/assets/script/canvasjs.min.js"></script>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
                <!--End-Chart-box--> 
                <hr/>
            </div>
        </div>
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

            window.onload = function () {
                var chart = new CanvasJS.Chart("chartContainer", {
                    animationEnabled: true,
                    exportEnabled: true,
                    title: {
                        text: "Biểu đồ thống kê"
                    },
                    data: [{
                            type: "column", //change type to bar, line, area, pie, etc
                            //indexLabel: "{y}", //Shows y value on all Data Points
                            indexLabelFontColor: "#5A5757",
                            indexLabelPlacement: "outside",
                            indexLabelFontFamily:"Roboto",
                            dataPoints: <%out.print(dataPoints);%>
                        }]
                });
                chart.render();
            }
        </script>
    </body>
</html>
