package controller;

import dao.OptionDAO;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.Date;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

@WebServlet(name = "DangBaiBanOption", urlPatterns = {"/DangBaiBanOption"})
@MultipartConfig(maxFileSize = 1024 * 1024 * 2)
public class DangBaiBanOption extends HttpServlet {

  

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");

        try{
        String option_name = request.getParameter("option_name");
        Double option_gia = Double.parseDouble(
                request.getParameter("option_gia"));
        Double option_giacu = Double.parseDouble(
                request.getParameter("option_giacu"));
        String option_stock=request.getParameter("option_stock");
        String option_origin=request.getParameter("option_origin");
        String option_sdt = request.getParameter("option_sdt");       
        String option_vitri = request.getParameter("option_vitri");
        String option_description = request.getParameter("option_description");
//        String category_id = request.getParameter("category_id");
        String option_hoten=request.getParameter("option_hoten");
        String option_category_name = request.getParameter("option_category_name");
        String option_category_namefor = "";
        if (option_category_name.equals("1")) {
            option_category_namefor = "Thức Ăn";
        } else if (option_category_name.equals("2")) {
            option_category_namefor = "Phụ Kiện";
        } else if (option_category_name.equals("3")) {
            option_category_namefor = "Thời Trang";
        } 
        else{
            option_category_namefor="Không xác định";
        }
        
        Part filePart = request.getPart("hinhanh");
        String fileName = extractFileName(filePart);
        // Absolute path to root dir
        String appPath = request.getServletContext().getRealPath("");
        //
        String savePath = null;
        if (appPath.endsWith(File.separator)){
            savePath = appPath + "images" + File.separator + fileName;
        } else {
            savePath = appPath + File.separator + "images" + File.separator + fileName;
        }
        // String savePath = "D:\\J2EE\\Webthucung\\ThuCung\\web\\images" + File.separator + fileName;
        File fileSaveDir = new File(savePath);
        filePart.write(savePath + File.separator);

        model.Option c=new model.Option();
        c.setOptionName(option_name);
        c.setOptionPrice(option_gia);
        c.setOptionOldPrice(option_giacu);
        c.setCategoryoptionName(option_category_namefor);
        c.setOptionSdt(option_sdt);
        c.setOptionOrigin(option_origin);
        c.setOptionHoten(option_hoten);
        c.setOptionDescription(option_description);
        c.setCategoryoptionID((Integer.parseInt(request.getParameter("option_category_name"))));
        c.setOptionStock(option_stock);
        c.setOptionVitri(option_vitri);
        c.setOptionImage("images/"+fileName);
        c.setOptionNgaydang(new SimpleDateFormat("yyyy-MM-dd").format(new Date().getTime()));
        c.setOptionStatus(0);
        if(OptionDAO.insert_option(c))
        {
            request.setAttribute("dangbaibanoption", "Đang Đợi Admin Phê Duyệt!");
            RequestDispatcher rd=request.getRequestDispatcher("index.jsp");
            rd.forward(request, response);
        }
        else{
          request.setAttribute("dangbaibanoption", "Đã xảy ra lỗi, vui lòng thử lại!");
          RequestDispatcher rd= request.getRequestDispatcher("PostBanOption.jsp");       
          rd.forward(request, response);
            }
        }catch(SQLException ex){
            System.out.println("Lỗi" + ex.getMessage());
        }
    }

    private String extractFileName(Part part) {
        String contenDisp = part.getHeader("content-disposition");
        String[] items = contenDisp.split(";");
        for (String s : items) 
        {
            if (s.trim().startsWith("filename")) {
                return s.substring(s.indexOf("=") + 2, s.length() - 1);
            }
        }
        return "";
    }
}
