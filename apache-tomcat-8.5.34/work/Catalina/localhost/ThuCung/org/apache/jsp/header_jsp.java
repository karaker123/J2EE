/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.5.34
 * Generated at: 2020-06-22 05:40:31 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import model.Item;
import java.util.Map;
import model.Cart;
import dao.PostMuaDAO;
import model.PostMua;
import model.Users;
import model.Category;
import dao.CategoryDAO;

public final class header_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = new java.util.HashSet<>();
    _jspx_imports_classes.add("model.Category");
    _jspx_imports_classes.add("dao.CategoryDAO");
    _jspx_imports_classes.add("dao.PostMuaDAO");
    _jspx_imports_classes.add("java.util.Map");
    _jspx_imports_classes.add("model.Item");
    _jspx_imports_classes.add("model.Cart");
    _jspx_imports_classes.add("model.Users");
    _jspx_imports_classes.add("model.PostMua");
  }

  private volatile javax.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public java.util.Set<java.lang.String> getPackageImports() {
    return _jspx_imports_packages;
  }

  public java.util.Set<java.lang.String> getClassImports() {
    return _jspx_imports_classes;
  }

  public javax.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
      throws java.io.IOException, javax.servlet.ServletException {

    final java.lang.String _jspx_method = request.getMethod();
    if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method) && !javax.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
      response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSPs only permit GET POST or HEAD");
      return;
    }

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Header</title>\n");
      out.write("        <script src='https://www.google.com/recaptcha/api.js?render=6Ldy2YMUAAAAAG2CYNQEAeWH3iVAMPKALvw2enf1'></script>\n");
      out.write("        <link href=\"css/style.css\" rel=\"stylesheet\" type=\"text/css\" media=\"all\" />\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width,height=device-height,user-scalable=yes, initial-scale=1, minimum-scale=1.0, maximum-scale=3.0\" >\n");
      out.write("        <link href='http://fonts.googleapis.com/css?family=Exo:100,200,300,400,500,600,700,800,900' rel='stylesheet' type='text/css'>\n");
      out.write("\n");
      out.write("        <script>(function (d, s, id) {\n");
      out.write("                var js, fjs = d.getElementsByTagName(s)[0];\n");
      out.write("                if (d.getElementById(id))\n");
      out.write("                    return;\n");
      out.write("                js = d.createElement(s);\n");
      out.write("                js.id = id;\n");
      out.write("                js.src = 'https://connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v3.2&appId=271903206793496&autoLogAppEvents=1';\n");
      out.write("                fjs.parentNode.insertBefore(js, fjs);\n");
      out.write("            }(document, 'script', 'facebook-jssdk'));\n");
      out.write("        </script>\n");
      out.write("        <script>\n");
      out.write("            window.fbAsyncInit = function () {\n");
      out.write("                FB.init({\n");
      out.write("                    appId: '{your-app-id}',\n");
      out.write("                    cookie: true,\n");
      out.write("                    xfbml: true,\n");
      out.write("                    version: '{api-version}'\n");
      out.write("                });\n");
      out.write("\n");
      out.write("                FB.AppEvents.logPageView();\n");
      out.write("\n");
      out.write("            };\n");
      out.write("\n");
      out.write("            (function (d, s, id) {\n");
      out.write("                var js, fjs = d.getElementsByTagName(s)[0];\n");
      out.write("                if (d.getElementById(id)) {\n");
      out.write("                    return;\n");
      out.write("                }\n");
      out.write("                js = d.createElement(s);\n");
      out.write("                js.id = id;\n");
      out.write("                js.src = \"https://connect.facebook.net/en_US/sdk.js\";\n");
      out.write("                fjs.parentNode.insertBefore(js, fjs);\n");
      out.write("            }(document, 'script', 'facebook-jssdk'));\n");
      out.write("        </script>\n");
      out.write("        \n");
      out.write("        <script type=\"text/javascript\">\n");
      out.write("\n");
      out.write("            jQuery(document).ready(function ($)\n");
      out.write("            {\n");
      out.write("                $(\".scroll\").click(function (event)\n");
      out.write("                {\n");
      out.write("                    event.preventDefault();\n");
      out.write("                    $('html,body').animate({scrollTop: $(this.hash).offset().top}, 1000);\n");
      out.write("                });\n");
      out.write("            });\n");
      out.write("        </script>\n");
      out.write("        <script>\n");
      out.write("            $(function ()\n");
      out.write("            {\n");
      out.write("                $(\"#slider1\").responsiveSlides\n");
      out.write("                        ({\n");
      out.write("                            auto: true,\n");
      out.write("                            speed: 100,\n");
      out.write("                            namespace: \"callbacks\",\n");
      out.write("                            pager: true,\n");
      out.write("                        });\n");
      out.write("            });\n");
      out.write("        </script>\n");
      out.write("        <script>\n");
      out.write("            $(document).ready(function (c)\n");
      out.write("            {\n");
      out.write("                $('.alert-close').on('click', function (c)\n");
      out.write("                {\n");
      out.write("                    $('.message').fadeOut('slow', function (c)\n");
      out.write("                    {\n");
      out.write("                        $('.message').remove();\n");
      out.write("                    });\n");
      out.write("                });\n");
      out.write("            });\n");
      out.write("        </script>\n");
      out.write("        <script>\n");
      out.write("            $(document).ready(function (c)\n");
      out.write("            {\n");
      out.write("                $('.alert-close1').on('click', function (c)\n");
      out.write("                {\n");
      out.write("                    $('.message1').fadeOut('slow', function (c)\n");
      out.write("                    {\n");
      out.write("                        $('.message1').remove();\n");
      out.write("                    });\n");
      out.write("                });\n");
      out.write("            });\n");
      out.write("        </script>\n");
      out.write("        <style>\n");
      out.write("            #menu\n");
      out.write("            {\n");
      out.write("                color:white;\n");
      out.write("            }\n");
      out.write("            #s:hover\n");
      out.write("            {\n");
      out.write("                border : 1px solid #00c6d7;\n");
      out.write("                box-shadow: 0 10px 6px -6px #777;\n");
      out.write("                color: #00c6d7;\n");
      out.write("                background:#00c6d7;\n");
      out.write("            }\n");
      out.write("        </style>\n");
      out.write("    </head>\n");
      out.write("    <body >\n");
      out.write("        ");

            CategoryDAO CategoryDAO = new CategoryDAO();
            Users users = null;
            if (session.getAttribute("user") != null) {
                users = (Users) session.getAttribute("user");
            }
            Cart cart = (Cart) session.getAttribute("cart");

            if (cart == null) {
                cart = new Cart();
                session.setAttribute("cart", cart);
            }
        
      out.write("\n");
      out.write("\n");
      out.write("        <div class=\"header\">\n");
      out.write("            <div class=\"header-top\" style=\"background: rgba(0,0,0,0.4);\">\n");
      out.write("                <div class=\"container\">\t\n");
      out.write("                    <div class=\"header-top-in\">\t\t\t\n");
      out.write("                        <div class=\"logo\">\n");
      out.write("                            <a href=\"index.jsp\"><i class=\"fas fa-home\"></i></a>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"header-in\">\n");
      out.write("                            <ul class=\"icon1 sub-icon1\">\n");
      out.write("                                ");

                                    if (users != null) {
                                
      out.write("\n");
      out.write("                                <li ><a href=\"index.jsp\">Xin Chào,Bạn ");
      out.print(users.getHovaten());
      out.write("</a> </li>\n");
      out.write("\n");
      out.write("                                <li ><a href=\"#\">Tài Khoản Của Tôi</a></li>\n");
      out.write("                                <li  > <a href=\"ThongTinProductDaLuu.jsp\" style=\"    border-top: 3px solid black;border-left:3px solid black;border-bottom: 3px solid black;height: 43px;\">Thông Tin Sản Phẩm Đã Lưu</a></li>\n");
      out.write("                                <li ><div class=\"cart\" style=\"border-right: 3px solid black;border-top:3px solid black;border-bottom: 3px solid black;\">\n");
      out.write("                                        <a href=\"#\" class=\"cart-in\"></a>\n");
      out.write("                                        <span>");
 cart.countItem(); 
      out.write("</span>\n");
      out.write("                                    </div>\n");
      out.write("                                    <ul class=\"sub-icon1 list\" style=\"width:319px;top:46px;background:rgba(0,0,0,0.4)\">\n");
      out.write("                                        <h3 style=\"color:#fdfaf9;border-bottom: 2px solid white;\">Thông Tin Sản Phẩm Đã Lưu</h3>\n");
      out.write("                                        <div class=\"shopping_cart\">\n");
      out.write("                                            ");

                                                for (Map.Entry<Integer, Item> list : cart.getCartItems().entrySet()) {
                                            
      out.write("\n");
      out.write("                                            <div class=\"cart_box\">\n");
      out.write("                                                <div class=\"message\">\n");
      out.write("                                                    <div class=\"alert-close\"> </div> \n");
      out.write("                                                    <div class=\"list_img\" style=\"width: 98px;height:81px;\"><img style=\"width:100%;height:100%;\" src=\"");
      out.print(list.getValue().getProduct().getProductImage());
      out.write("\" class=\"img-responsive\" alt=\"\"></div>\n");
      out.write("                                                    <div class=\"list_desc\"><h4><a href=\"single.jsp?ProductID=");
      out.print(list.getValue().getProduct().getProductID());
      out.write("\" style=\"border-bottom: 2px solid white\"><label style=\"color:white\">");
      out.print(list.getValue().getProduct().getProductName());
      out.write("</label></a></h4>\n");
      out.write("                                                    </div>\n");
      out.write("                                                    <div class=\"list_desc\"><h4><a style=\"color:red;\" href=\"CartServlet?command=remove&ProductID=");
      out.print(list.getValue().getProduct().getProductID());
      out.write("\"><label style=\"color:white;cursor:pointer\">Xóa</label></a></h4></div>\n");
      out.write("                                                    <div class=\"clearfix\"></div>\n");
      out.write("                                                </div>\n");
      out.write("                                            </div>\n");
      out.write("                                            ");

                                                }
                                            
      out.write("\n");
      out.write("                                        </div>\n");
      out.write("                                        <div class=\"login_buttons\">\n");
      out.write("                                            ");
      out.write("\n");
      out.write("                                            <div class=\"clearfix\"></div>\n");
      out.write("                                        </div>\n");
      out.write("                                        <div class=\"clearfix\"></div>\n");
      out.write("                                    </ul>\n");
      out.write("                                </li>\n");
      out.write("                                ");
 }
      out.write("\n");
      out.write("                                <li><a href=\"PostBanProduct.jsp\">Đăng Tin Bán Thú Cưng</a></li>\n");
      out.write("                                <li><a href=\"PostMua.jsp\">Trao Đổi Thông Tin</a></li>\n");
      out.write("                                <li><a href=\"PostBanOption.jsp\">Đăng Tin Bán Sản Phẩm Thú Cưng</a></li>\n");
      out.write("                                \n");
      out.write("\n");
      out.write("                                ");
 if (users != null) { 
      out.write("<li><a href=\"DangXuat\">Thoát Tài Khoản</a></li>");
 }
      out.write("\n");
      out.write("                                <ul class=\"sub-icon1 list\">\n");
      out.write("                                    <div class=\"clearfix\"></div>\n");
      out.write("                                    </div>\n");
      out.write("                                    </div>\n");
      out.write("                                    </div>\n");
      out.write("                                    </div>\n");
      out.write("                                    </div>\n");
      out.write("                                    <div class=\"clearfix\"></div>\n");
      out.write("                                </ul>\n");
      out.write("                                </li>\n");
      out.write("                            </ul>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"clearfix\"> </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"header-bottom\">\n");
      out.write("                <div class=\"container\">\n");
      out.write("                    <div class=\"h_menu4\">\n");
      out.write("                        <a  class=\"toggleMenu\" href=\"#\" >Menu</a>\n");
      out.write("                        <ul class=\"nav\">\n");
      out.write("                            <li id=\"s\" class=\"active\" style=\"background:rgba(0,0,0,0.4)\" ><a href=\"index.jsp\" id=\"menu\" ><i> </i>TRANG CHỦ</a></li>\n");
      out.write("                            <li id=\"s\" ><a id=\"menu\" href=\"#\" >THÚ CƯNG CÁC LOẠI</a>\n");
      out.write("                                <ul class=\"drop\" style=\"background:rgba(0,0,0,0.4);\">\n");
      out.write("                                    ");

                                        for (Category c : CategoryDAO.getListCategoryProduct()) {
                                    
      out.write("\n");
      out.write("                                    <li id=\"s\" style=\"background:rgba(0,0,0,0.4);\"><a id=\"menu\" href=\"product.jsp?category=");
      out.print(c.getCategoryID());
      out.write("&pages=1\">");
      out.print(c.getCategoryName());
      out.write("</a></li>\n");
      out.write("                                        ");

                                            }
                                        
      out.write("            \n");
      out.write("                                </ul>\n");
      out.write("                            </li> \t\t\t\t\t\t\n");
      out.write("                            <li id=\"s\" style=\"background:rgba(0,0,0,0.4);color:white;\"><a id=\"menu\" href=\"#\"  >THỨC ĂN VÀ PHỤ KIỆN</a>\n");
      out.write("                                <ul class=\"drop\" style=\"background:rgba(0,0,0,0.4);\">\n");
      out.write("                                    ");

                                        for (Category c : CategoryDAO.getListCategoryOption()) {
                                    
      out.write("\n");
      out.write("                                    <li id=\"s\" style=\"background:rgba(0,0,0,0.4);\"><a id=\"menu\" href=\"product_option.jsp?category=");
      out.print(c.getCategoryID());
      out.write('"');
      out.write('>');
      out.print(c.getCategoryName());
      out.write("</a></li>\n");
      out.write("                                        ");

                                            }
                                        
      out.write("            \n");
      out.write("                                </ul>\n");
      out.write("                            </li> \t\t\t\t\t\t  \t\t\t\t \n");
      out.write("                            <li id=\"s\" ><a id=\"menu\" href=\"tintuc.jsp\" >DIỄN ĐÀN TIN TỨC</a></li>\n");
      out.write("                            <li id=\"s\" style=\"background:rgba(0,0,0,0.4);color:white;\" ><a id=\"menu\" href=\"blogthucung.jsp\"  >BLOG THÚ CƯNG </a></li>\n");
      out.write("                            <li id=\"s\" ><a id=\"menu\" href=\"cachnuoi.jsp\" >CÁCH NUÔI THÚ CƯNG</a></li>\n");
      out.write("                            <li id=\"s\" style=\"background:rgba(0,0,0,0.4);color:white;\" ><a id=\"menu\" href=\"lienhe.jsp\" >LIÊN HỆ</a></li>\n");
      out.write("                            <!--<li id=\"s\" ><a  id=\"menu\" href=\"lienhe.jsp\">Liên Hệ</a></li>-->\n");
      out.write("                        </ul>\n");
      out.write("                        <script type=\"text/javascript\" src=\"js/nav.js\"></script>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"header-bottom-in\" style=\"background: rgba(0,0,0,0.4);\">\n");
      out.write("                <div class=\"container\">\n");
      out.write("                    ");

                        if (users == null) {
                    
      out.write("\n");
      out.write("                    <div class=\"header-bottom-on\">\n");
      out.write("                        <p class=\"wel\" style=\"color:#white;\" ><span style=\"color:white;\">Xin Chào,Bạn Nên Đăng Nhập Để Hiển Thị Chức Năng <i class=\"fas fa-sign-in-alt\"></i></span><a href=\"login.jsp\" style=\"color: #white;\"><span style=\"color:aqua;\">Đăng Nhập</span></a><span style=\"color:white;\"> Hoặc </span><i class=\"fas fa-sign-in-alt\"></i><a href=\"register.jsp\" style=\"color: #white;\"><span style=\"color:aqua;\">Tạo Tài Khoản Mới.</span></a></p>\n");
      out.write("\n");
      out.write("                        <div class=\"header-can\">\n");
      out.write("                            <ul class=\"social-in\">\n");
      out.write("                                <li><a href=\"#\"><i> </i></a></li>\n");
      out.write("                                <li><a href=\"#\"><i class=\"facebook\"> </i></a></li>\n");
      out.write("                                <li><a href=\"#\"><i class=\"twitter\"></i></a></li>\t\t\t\t\t\n");
      out.write("                                <li><a href=\"#\"><i class=\"skype\"> </i></a></li>\n");
      out.write("                            </ul>\n");
      out.write("                            ");

                                }
                            
      out.write("\n");
      out.write("                            <div class=\"search\">\n");
      out.write("                                <form action=\"timkiem.jsp?page=1\" method=\"get\">\n");
      out.write("                                    <input type=\"text\" value=\"Tìm Kiếm\" name=\"tim\" onfocus=\"this.value = '';\" onblur=\"if (this.value == '')\n");
      out.write("                                            {\n");
      out.write("                                                this.value = 'Tìm Kiếm';\n");
      out.write("                                            }\" >\n");
      out.write("                                    <input type=\"submit\" value=\"\">\n");
      out.write("                                </form>\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"clearfix\"> </div>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"clearfix\"></div>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"header-bottom-on\">\n");
      out.write("                        ");
 String err = (String) request.getAttribute("dangbaibanproduct");
                            if (err != null) {
                        
      out.write("\n");
      out.write("                        <p class=\"on\" style=\"margin:6px auto;margin-left:450px;background:url(images/back1.png) no-repeat;\" >");
out.print(err); 
      out.write("</p>\n");
      out.write("                        <div class=\"clearfix\"></div>\n");
      out.write("                        ");

                            }
                        
      out.write("\n");
      out.write("\n");
      out.write("                        ");
 String option = (String) request.getAttribute("dangbaibanoption");
                            if (option != null) {
                        
      out.write("\n");
      out.write("                        <p class=\"on\" style=\"margin:6px auto;margin-left:450px;background:rgba(0,0,0,0);\" ><i class=\"fas fa-male\" style=\"color:white;\"></i>");
out.print(option); 
      out.write("</p>\n");
      out.write("                        <div class=\"clearfix\"></div>\n");
      out.write("                        ");

                            }
                        
      out.write("\n");
      out.write("                        <style>\n");
      out.write("                            @-webkit-keyframes my {\n");
      out.write("                                0% { color: red;  } \n");
      out.write("                                50% { color: white;  }\n");
      out.write("                                100% { color: red;  }  \n");
      out.write("                            }\n");
      out.write("                            @-moz-keyframes my { \n");
      out.write("                                0% { color: red;  } \n");
      out.write("                                50% { color: white;  }\n");
      out.write("                                100% { color: red;  }  \n");
      out.write("                            }\n");
      out.write("                            @-o-keyframes my { \n");
      out.write("                                0% { color: red;  } \n");
      out.write("                                50% { color: white;  }\n");
      out.write("                                100% { color: red;  }  \n");
      out.write("                            }\n");
      out.write("                            @keyframes my { \n");
      out.write("                                0% { color: red;  } \n");
      out.write("                                50% { color: white;  }\n");
      out.write("                                100% { color: red;  } \n");
      out.write("                            } \n");
      out.write("                            .on\n");
      out.write("                            {\n");
      out.write("                                -webkit-animation: my 1000ms infinite;\n");
      out.write("                                -moz-animation: my 1000ms infinite; \n");
      out.write("                                -o-animation: my 1000ms infinite; \n");
      out.write("                                animation: my 1000ms infinite;\n");
      out.write("                            }\n");
      out.write("\n");
      out.write("                        </style>\n");
      out.write("                    </div>    \n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}