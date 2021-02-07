/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;


import dao.DuyetBaiDAO;
import java.io.IOException;
import java.sql.SQLException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Option;

/**
 *
 * @author Administrator
 */
@WebServlet(name = "DuyetBaiOption", urlPatterns = {"/DuyetBaiOption"})
public class DuyetBaiOption extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String command = request.getParameter("command");
        String OptionID = request.getParameter("OptionID");
        String url = "";
        Option c = null;
        try {
            c = DuyetBaiDAO.getOption(Integer.parseInt(OptionID));
        } catch (SQLException ex) {
            System.out.println("Lỗi " + ex.getMessage());
        }

        switch (command) {
            case "duyet": {
                try {
                    if (DuyetBaiDAO.ChapNhanBaiDangOption(Integer.parseInt(OptionID))) {
                        request.setAttribute("daduyet", "Đã Duyệt Bài Của " + c.getOptionHoten());
                        url = "/manager_product_option.jsp";
                        break;
                    } else {
                        url = "/MoHinh.jsp";
                        break;
                    }
                } catch (SQLException ex) {
                    System.out.println("Lỗi" + ex.getMessage());
                }
            }
            case "xoa": {
                try {
                    if (DuyetBaiDAO.xoaBaiDangOption(Integer.parseInt(OptionID))) {
                        request.setAttribute("xoa", "Đã Xóa Bài Của " + c.getOptionHoten());
                        url = "/manager_product_option.jsp";
                        break;
                    } else {
                        url = "/MoHinh.jsp";
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
