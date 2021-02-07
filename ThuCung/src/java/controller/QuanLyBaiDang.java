package controller;

import dao.PostMuaDAO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "QuanLyBaiDang", urlPatterns = {"/QuanLyBaiDang"})
public class QuanLyBaiDang extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String command = request.getParameter("command");
        String dangtinID = request.getParameter("dangtinID");
        String url = "";
        switch(command)
        {
            case "delete":
                PostMuaDAO.delete(Integer.parseInt(dangtinID));
                url = "/manager_product_Admin.jsp";
                break;
                
                
        }
        RequestDispatcher rd = getServletContext().getRequestDispatcher(url);
        rd.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

}
