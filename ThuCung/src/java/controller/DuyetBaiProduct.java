/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import model.Product;
import dao.DuyetBaiDAO;
import java.io.IOException;
import java.sql.SQLException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Administrator
 */
@WebServlet(name = "DuyetBaiProduct", urlPatterns = {"/DuyetBaiProduct"})
public class DuyetBaiProduct extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String command = request.getParameter("command");
        String ProductID = request.getParameter("ProductID");
        String url = "";
        Product c = null;
        try {
            c = DuyetBaiDAO.getProduct(Integer.parseInt(ProductID));
        } catch (SQLException ex) {
            System.out.println("Lỗi " + ex.getMessage());
        }

        switch (command) {
            case "duyet": {
                try {
                    if (DuyetBaiDAO.ChapNhanBaiDangProduct(Integer.parseInt(ProductID))) {
                        request.setAttribute("daduyet", "Đã Duyệt Bài Của " + c.getProductHoten());
                        url = "/manager_product.jsp";
                        break;
                    } else {
                        url = "/MoHinhProduct.jsp";
                        break;
                    }
                } catch (SQLException ex) {
                    System.out.println("Lỗi" + ex.getMessage());
                }
            }
            case "xoa": {
                try {
                    if (DuyetBaiDAO.xoaBaiDangProduct(Integer.parseInt(ProductID))) {
                        request.setAttribute("xoa", "Đã Xóa Bài Của " + c.getProductHoten());
                        url = "/manager_product.jsp";
                        break;
                    } else {
                        url = "/MoHinhProduct.jsp";
                        break;
                    }
                } catch (SQLException ex) {
                    System.out.println("Lỗi" + ex.getMessage());
                }
            }
        }
        RequestDispatcher rd = request.getRequestDispatcher(url);
        rd.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

}
