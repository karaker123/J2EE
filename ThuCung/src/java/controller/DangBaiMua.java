
package controller;

import dao.PostMuaDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.PostMua;


@WebServlet(name = "DangBaiMua", urlPatterns = {"/DangBaiMua"})
public class DangBaiMua extends HttpServlet {
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
      
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException
    {   
       request.setCharacterEncoding("utf-8");
       response.setCharacterEncoding("utf-8");
       String ten = request.getParameter("ten");
       String sdt = request.getParameter("sdt");
       String tieude = request.getParameter("tieude");
       String noidung = request.getParameter("noidung");
       
       PostMua pDAO = new PostMua();
       
       pDAO.setTen(ten);pDAO.setSdt(sdt);pDAO.setTieude(tieude);pDAO.setNoidung(noidung);
       if(PostMuaDAO.DangMua(pDAO))
       {
            request.setAttribute("dangbaimua", "Đăng Tin Thành Công!");
            RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
            rd.forward(request, response);
       }
       else
       {
           request.setAttribute("dangbaimua", "Đã xảy ra lỗi, vui lòng thử lại!");
           response.sendRedirect("PostMua.jsp"); 
       }
        
    }
}
