package controller;

import dao.UsersDAO;
import java.io.IOException;
import java.sql.SQLException;
import java.util.Random;
import java.util.UUID;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import tools.Captcha;
import model.Users;
import tools.SendMail;

@WebServlet(name = "UsersServlet", urlPatterns = {"/UsersServlet"})
public class UsersServlet extends HttpServlet {

    UsersDAO usersDAO = new UsersDAO();

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("utf-8");
        String command = request.getParameter("command");
        String url = "";
        Users users = new Users();

        switch (command) {
            case "them": {

                String mauEmail = "^[\\w-_.]{5,15}+\\@[\\w&&[^0-9]]{5,8}+\\.com+$";
                String mauPass = "^([\\w_\\.!@#$%^&*()([A-Z])]+){8,31}$";
                String maudienthoai = "^[0]([0-9]{9,10})$";
                Pattern pattern = Pattern.compile(mauEmail);
                Matcher matcheremail = pattern.matcher(request.getParameter("email"));
                Matcher matcherpass = Pattern.compile(mauPass).matcher(request.getParameter("pass"));
                Matcher matcherdienthoai = Pattern.compile(maudienthoai).matcher(request.getParameter("phone"));
                try {
                    HttpSession session1 = request.getSession(true);
                    if (usersDAO.kiemtra(request.getParameter("username"))
                            | usersDAO.kiemtraemail(request.getParameter("email"))
                            | request.getParameter("pass").length() < 8
                            | !request.getParameter("repass").equals(request.getParameter("pass"))
                            | !matcheremail.matches()
                            | request.getParameter("username").length() < 5 | request.getParameter("username").length() > 15
                            | !matcherpass.matches()
                            | !matcherdienthoai.matches()) {
                        if (usersDAO.kiemtraemail(request.getParameter("email"))) {
                            request.setAttribute("error", "Email Đã Tồn Tại!,Vui Lòng Sử Dụng Email Khác");
                        }
                        if (request.getParameter("pass").length() < 8) {
                            request.setAttribute("error2", "Độ Dài Mật Khẩu Lớn Hơn 8 Ký Tự");
                        }
                        if (!request.getParameter("repass").equals(request.getParameter("pass"))) {
                            request.setAttribute("error3", "Mật Khẩu Nhập Lại Bị Sai");
                        }
                        if (!matcheremail.matches()) {
                            request.setAttribute("error4", "Sai Định Dạng Email/Gmail");
                        }
                        if (!matcherpass.matches()) {
                            request.setAttribute("error5", "Mật khẩu chứa ít nhất 1 từ Hoa,1 từ thường,kèm 1 kí tự đặc biệt,Độ dài lớn hơn 8");
                        }
                        if (!matcherdienthoai.matches()) {
                            request.setAttribute("error6", "Sai Định Dạng Điện Thoại,gồm 10 hoặc 11 số và bắt đầu từ số 0");
                        }
                        url = "/register.jsp";
                        break;
                    } else {
                        String uuid = UUID.randomUUID().toString();
                        users.setHovaten(request.getParameter("hovaten"));
                        users.setUserEmail(request.getParameter("email"));
                        users.setUserName(request.getParameter("username"));
                        users.setUserPass(request.getParameter("pass"));
                        users.setSdt(request.getParameter("phone"));
                        users.setDiachi(request.getParameter("diachi"));
                        users.setUser_role(0);                      
                        users.setUser_kichhoat(0);
                        users.setUser_code(uuid);
                        {
                            try {
                                usersDAO.themTK(users);
                                String kichhoat = "http://localhost:8082/ThuCung/kichhoat.jsp?ID=" + uuid + "&TK=" + users.getUserEmail();
//                                SendMail.sendMail(request.getParameter("email"), "Hoàn Tât Quá Trinh Đăng Ký",
//                                        "Chào Ban," + users.getHovaten() + "\n"
//                                        + "Cám ơn bạn đã đăng ký tài khoản tại web site bán thú cưng của chúng tôi.Vui lòng kích hoạt xác nhận tài khoản bên dưới :\n"
//                                        + "Bạn có thể copy link và dán vào trình duyệt : \n"
//                                        + kichhoat + "\n " + "Trân Trong,\n "
//                                        + "Team chăm sóc KH,Team A3V\n" + "Nếu bạn có thắc mắc ,bạn vui lòng send email to chienthan1999@gmail.com");

                            } catch (SQLException ex) {
                                System.out.println("Loi " + ex.getMessage());
                            }
                        }
                        request.setAttribute("dangky", "Đã Đăng Ký Tài Khoản " + users.getUserName());
                        url = "/login.jsp";
                        break;
                    }
                } catch (SQLException ex) {
                    System.out.println("Loi " + ex.getMessage());
                }
            }
            case "login": {
                try {

                    if (UsersDAO.kiemtraUser_Pass(request.getParameter("username"), request.getParameter("pass"))) 
                    {
                        String gRecaptchaResponse = request.getParameter("g-recaptcha-response");
                        if (Captcha.verify(gRecaptchaResponse)) 
                        {
                            HttpSession session = request.getSession(true);
                            users = UsersDAO.login(request.getParameter("username"), request.getParameter("pass"));
                            if (users != null) {
                                if (users.getUser_kichhoat() == 1) {
                                    if (users.getUser_role() == 1) {
                                        session.setAttribute("admin", users);
                                        url = "/index_Admin.jsp";
                                        break;
                                    } else {
                                        if (users.getUser_role() == 0) {

                                            session.setAttribute("user", users);
                                            url = "/index.jsp";
                                            break;
                                        }
                                    }
                                } else {
                                    request.setAttribute("error2", users.getHovaten() + "! ,Bạn Chưa Kích Hoạt Tài Khoản,1 Hộp Thư Đã Gửi Đến Địa Chỉ Email/Gmail " + users.getUserEmail());
                                    url = "/login.jsp";
                                    break;
                                }
                            }
                        } 
                        else if(!Captcha.verify(gRecaptchaResponse))
                        {
                            request.setAttribute("error3", "Chưa Xác Nhận Captcha");
                            RequestDispatcher rd = request.getRequestDispatcher("/login.jsp");
                            rd.forward(request, response);
                        }

                    } else {
                        request.setAttribute("error", "Sai Tên Đăng Nhập Hoặc Mật Khẩu!");
                        url = "/login.jsp";
                    }

                } catch (Exception ex) {
                    System.out.println("Lỗi " + ex.getMessage());
                }
            }
            break;

        }
        RequestDispatcher rd = getServletContext().getRequestDispatcher(url);
        rd.forward(request, response);
    }
}
