/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.5.34
 * Generated at: 2020-06-22 05:41:27 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import model.Users;

public final class menu_005fAdmin_jsp extends org.apache.jasper.runtime.HttpJspBase
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
    _jspx_imports_classes.add("model.Users");
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Menu</title>\n");
      out.write("        <style>\n");
      out.write("            .stat-boxes li a:hover, .quick-actions li a:hover, .quick-actions-horizontal li a:hover, .stat-boxes li:hover, .quick-actions li:hover, .quick-actions-horizontal li:hover\n");
      out.write("            {\n");
      out.write("                background: rgba(0,0,0,0);\n");
      out.write("/*                top: 0;\n");
      out.write("                left: 0;\n");
      out.write("                display: block;*/\n");
      out.write("            }\n");
      out.write("        </style>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        ");


            Users u = (Users) session.getAttribute("admin");
            if (u == null) {
                response.sendRedirect("404.jsp");
            }
        
      out.write("\n");
      out.write("        <!--sidebar-menu-->\n");
      out.write("        <div id=\"sidebar\" style=\"margin-top:-654px;\" ><a href=\"#\" class=\"visible-phone\"><i class=\"icon icon-home\"></i> Thống Kê</a>\n");
      out.write("            <ul>\n");
      out.write("                <li class=\"active\"><a href=\"index_Admin.jsp\"><i class=\"icon icon-home\" style=\"color: white;\"></i> <span style=\"color: white;\">Home</span></a> </li>\n");
      out.write("                <li> <a href=\"#\"><i class=\"icon icon-signal\" style=\"color: white;\"></i> <span style=\"color: white;\">Biểu Đồ</span></a> </li>\n");
      out.write("                <li> <a href=\"#\"><i class=\"icon icon-inbox\" style=\"color: white;\"></i> <span style=\"color: white;\">Tiện Ích</span></a> </li>\n");
      out.write("                <li><a href=\"manager_category_Admin.jsp\"><i class=\"icon icon-th\" style=\"color: white;\"></i> <span style=\"color: white;\">Quản Lý Danh Mục Bán Thú Cưng</span></a></li>\n");
      out.write("                <li><a href=\"manager_category_option_Admin.jsp\"><i class=\"icon icon-th\" style=\"color: white;\"></i> <span style=\"color: white;\">Quản Lý Danh Mục Bán Sản Phẩm Thú Cưng</span></a></li>\n");
      out.write("                <li><a href=\"manager_product.jsp\"><i class=\"icon icon-th\" style=\"color: white;\"></i> <span style=\"color: white;\">Quản Lý Đăng Bài Bán Thú Cưng</span></a></li>\n");
      out.write("                <li><a href=\"manager_product_option.jsp\"><i class=\"icon icon-th\" style=\"color: white;\"></i> <span style=\"color: white;\">Quản Lý Đăng Bài Bán Sản Phẩm Thú Cưng</span></a></li>\n");
      out.write("                <li><a href=\"manager_thanhvien_Admin.jsp\"><i class=\"icon icon-th\" style=\"color: white;\"></i> <span style=\"color: white;\">Quản Lý Thành Viên</span></a></li>\n");
      out.write("                <li><a href=\"#\"><i class=\"icon icon-fullscreen\" style=\"color: white;\"></i> <span style=\"color: white;\">Mở Rộng Mô Hình</span></a></li>\n");
      out.write("                <li><a href=\"#\"><i class=\"icon icon-tint\" style=\"color: white;\"></i> <span style=\"color: white;\">Ý Tưởng Cho Web</span></a></li>\n");
      out.write("                <li><a href=\"#\"><i class=\"icon icon-pencil\" style=\"color: white;\"></i> <span style=\"color: white;\">Lưu Công Việc</span></a></li>\n");
      out.write("                <li class=\"submenu\"> <a href=\"#\"><i class=\"icon icon-file\" style=\"color: white;\"></i> <span style=\"color: white;\">Mục Tiêu</span> <span class=\"label label-important\"></span></a>\n");
      out.write("                </li>\n");
      out.write("                <li class=\"content\"> <span>Monthly Bandwidth Transfer</span>\n");
      out.write("                    <div class=\"progress progress-mini progress-danger active progress-striped\">\n");
      out.write("                        <div style=\"width: 77%;\" class=\"bar\"></div>\n");
      out.write("                    </div>\n");
      out.write("                    <span class=\"percent\">77%</span>\n");
      out.write("                    <div class=\"stat\">10050.94 / 14000 MB</div>\n");
      out.write("                </li>\n");
      out.write("                <li class=\"content\"> <span>Disk Space Usage</span>\n");
      out.write("                    <div class=\"progress progress-mini active progress-striped\">\n");
      out.write("                        <div style=\"width: 15%;\" class=\"bar\"></div>\n");
      out.write("                    </div>\n");
      out.write("                    <span class=\"percent\">15%</span>\n");
      out.write("                    <div class=\"stat\">604.44 / 4000 MB</div>\n");
      out.write("                </li>\n");
      out.write("            </ul>\n");
      out.write("        </div>\n");
      out.write("        <!--sidebar-menu-->\n");
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