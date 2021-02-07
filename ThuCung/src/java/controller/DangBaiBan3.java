package controller;

import dao.ProductDAO;
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

@WebServlet(name = "DangBaiBan3", urlPatterns = {"/DangBaiBan3"})
@MultipartConfig(maxFileSize = 1024 * 1024 * 2)
public class DangBaiBan3 extends HttpServlet {

  

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
        String product_name = request.getParameter("product_name");
        Double product_gia = Double.parseDouble(
                request.getParameter("product_gia"));
        Double product_giacu = Double.parseDouble(
                request.getParameter("product_giacu"));
        String product_stock=request.getParameter("product_stock");
        String product_origin=request.getParameter("product_origin");
        String product_sdt = request.getParameter("product_sdt");       
        String product_vitri = request.getParameter("product_vitri");
        String product_description = request.getParameter("product_description");
//        String category_id = request.getParameter("category_id");
        String product_hoten=request.getParameter("product_hoten");
        String product_category_name = request.getParameter("product_category_name");
        String product_category_namefor = "";
        if (product_category_name.equals("1")) {
            product_category_namefor = "Chó Cảnh";
        } else if (product_category_name.equals("2")) {
            product_category_namefor = "Mèo Cảnh";
        } else if (product_category_name.equals("3")) {
            product_category_namefor = "Hamster";
        } else if (product_category_name.equals("4")) {
            product_category_namefor = "Thỏ";
        }
        else if (product_category_name.equals("5")) {
            product_category_namefor = "Lợn Ghi-nê";
        }
        else if (product_category_name.equals("6")) {
            product_category_namefor = "Chim cảnh";
        }
        else if (product_category_name.equals("7")) {
            product_category_namefor = "Cá cảnh";
        }
        else{
            product_category_namefor="Không xác định";
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
        //String savePath = "\\web\\images" + File.separator + fileName;
        File fileSaveDir = new File(savePath);
        filePart.write(savePath + File.separator);
        model.Product c=new model.Product();
        c.setProductName(product_name);
        c.setProductPrice(product_gia);
        c.setProductOldPrice(product_giacu);
        c.setCategoryproductName(product_category_namefor);
        c.setProductSdt(product_sdt);
        c.setProductOrigin(product_origin);
        c.setProductHoten(product_hoten);
        c.setProductDescription(product_description);
        c.setCategoryproductID((Integer.parseInt(request.getParameter("product_category_name"))));
        c.setProductStock(product_stock);
        c.setProductVitri(product_vitri);
        c.setProductImage("images/"+fileName);
        c.setProductNgaydang(new SimpleDateFormat("yyyy-MM-dd").format(new Date().getTime()));
        c.setProductStatus(0);
        System.out.println(c);
        if(ProductDAO.insert_product(c))
        {
            request.setAttribute("dangbaibanproduct", "Đang Đợi Admin Phê Duyệt!");
            RequestDispatcher rd=request.getRequestDispatcher("index.jsp");
            rd.forward(request, response);
        }
        else{
          request.setAttribute("dangbaibanproduct", "Đã xảy ra lỗi vui lòng thử lại!");
          RequestDispatcher rd= request.getRequestDispatcher("PostBanProduct.jsp");
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
