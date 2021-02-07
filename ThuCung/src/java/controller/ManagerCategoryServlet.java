package controller;

import dao.CategoryDAO;
import java.io.IOException;
import java.util.Date;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Category;

@WebServlet(name = "ManagerCategoryServlet", urlPatterns = {"/ManagerCategoryServlet"})
public class ManagerCategoryServlet extends HttpServlet {

    CategoryDAO categoryDAO = new CategoryDAO();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");
        String command = request.getParameter("command");
        String category_id = request.getParameter("category_id");
        String tenDanhMuc = request.getParameter("tenDanhMuc");
        String url = "";

        try {
            switch (command) 
            {
                case "update":
                    categoryDAO.capnhatProduct(tenDanhMuc, category_id);
                    url = "/manager_category_Admin.jsp";
                    break;
                case "delete":
                    categoryDAO.deleteCategoryProduct(Integer.parseInt(category_id));
                    url = "/manager_category_Admin.jsp";
                    break;
            }
        } catch (Exception ex) {

        }
        RequestDispatcher rd = getServletContext().getRequestDispatcher(url);
        rd.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");
        String command = request.getParameter("command");
        String tenDanhMuc = request.getParameter("tenDanhMuc");

        String url = "", error = "";
        if (tenDanhMuc.equals("")) {
            error = "vui lòng nhập tên danh mục";
            request.setAttribute("error", error);
        }
        try {
            if (error.length() == 0)
            {
                switch (command) 
                {
                    case "insert":
                        if (categoryDAO.insertCategoryProduct(new Category((int) new Date().getTime(), tenDanhMuc))) {
                            url = "/manager_category_Admin.jsp";
                        }
                        break;
                }
            } else {
                url = "/insert_category_Admin.jsp";
                request.setAttribute("err","Chưa Nhập?");
            }
        } catch (Exception e) {

        }
        RequestDispatcher rd = getServletContext().getRequestDispatcher(url);
        rd.forward(request, response);

    }

}
