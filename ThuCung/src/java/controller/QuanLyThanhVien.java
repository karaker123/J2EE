package controller;

import dao.UsersDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Users;

@WebServlet(name = "QuanLyThanhVien", urlPatterns = {"/QuanLyThanhVien"})
public class QuanLyThanhVien extends HttpServlet {

    UsersDAO usersDAO = new UsersDAO();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");

        String lenhsql = request.getParameter("lenhsql");
        String stt = request.getParameter("userID");
        String suaten = request.getParameter("suatenn");
        String username = request.getParameter("username");
        String userpass = request.getParameter("userpass");
        String email = request.getParameter("email");

        Long stt2 = Long.parseLong(stt);

        String url = "";
        switch (lenhsql) {
            case "delete": {
                try {
                    if (usersDAO.xoaTK(stt2)) {
                        request.setAttribute("delete", "Đã Xóa Tài Khoản");
                        url = "manager_thanhvien_Admin.jsp";
                        break;
                    }
                } catch (SQLException ex) {
                    System.out.println("Loi " + ex.getMessage());
                }
            }
            case "suaten": {
                try {
                    if (usersDAO.suaTen(suaten, stt2)) {
                        request.setAttribute("suaten", "Đã Sửa Tên");
                        url = "manager_thanhvien_Admin.jsp";
                        break;
                    }
                } catch (SQLException ex) {
                    System.out.println("Loi " + ex.getMessage());
                }
            }
            case "suausername": {
                try {
                    if (usersDAO.suaUserName(username, stt2)) {
                        request.setAttribute("suaten", "Đã Sửa Tên");
                        url = "manager_thanhvien_Admin.jsp";
                        break;
                    }
                } catch (SQLException ex) {
                    System.out.println("Loi " + ex.getMessage());
                }
            }
            case "suauserpass": {
                try {
                    if (usersDAO.suaUserPass(userpass, stt2)) {
                        request.setAttribute("suaten", "Đã Sửa Tên");
                        url = "manager_thanhvien_Admin.jsp";
                        break;
                    }
                } catch (SQLException ex) {
                    System.out.println("Loi " + ex.getMessage());
                }
            }
            case "suaemail": {
                try {
                    if (usersDAO.suaEmail(email, stt2)) {
                        request.setAttribute("suaten", "Đã Sửa Tên");
                        url = "manager_thanhvien_Admin.jsp";
                        break;
                    }
                } catch (SQLException ex) {
                    System.out.println("Loi " + ex.getMessage());
                }
            }
        }
        response.sendRedirect(url);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");
        String command = request.getParameter("command");
        String url = "";
        Users users = new Users();
        HttpSession session = request.getSession();
        switch (command) {
            case "them": {
                try {
                    if (usersDAO.kiemtra(request.getParameter("username")) || request.getParameter("username").equals("") ) 
                    {
                        if (request.getParameter("username").equals("")
                                || request.getParameter("pass").equals("")
                                || request.getParameter("email").equals("")
                                || request.getParameter("hovaten").equals("")) 
                        {
                            request.setAttribute("error4", "Không Được Để Trống");
                        }
                            if (usersDAO.kiemtraemail(request.getParameter("email"))) {
                                request.setAttribute("error2", "Email Đã Tồn Tại!,Vui Lòng Sử Dụng Email Khác");
                                if (request.getParameter("pass").length() < 8) {
                                    request.setAttribute("error3", "Độ Dài Mật Khẩu Lớn Hơn 8 Ký Tự");
                                }
                            }
                        
                        request.setAttribute("error", "Tài Khoản Đã Tồn Tại,Hoặc Bị Để Trống!");
                        url = "/insert_thanhvien_Admin.jsp";
                        break;
                    }
                    
                    else {
                        users.setStt(new Date().getTime());
                        users.setHovaten(request.getParameter("hovaten"));
                        users.setUserEmail(request.getParameter("email"));
                        users.setUserName(request.getParameter("username"));
                        users.setUserPass(request.getParameter("pass"));
                        {
                            try 
                            {
                                usersDAO.themTK(users);
                            } catch (SQLException ex)
                            {
                                System.out.println("Loi " + ex.getMessage());
                            }
                        }
                        session.setAttribute("users", users);
                        url = "/manager_thanhvien_Admin.jsp";
                        break;
                    }
                } catch (SQLException ex) {
                    Logger.getLogger(QuanLyThanhVien.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
        }
        RequestDispatcher rd = getServletContext().getRequestDispatcher(url);
        rd.forward(request, response);
    }
}
