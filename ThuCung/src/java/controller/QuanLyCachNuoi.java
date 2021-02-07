/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import model.cachnuoi;
import dao.cachnuoiDAO;
import java.io.File;
import java.io.IOException;
import java.sql.SQLException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 *
 * @author Administrator
 */
@WebServlet(name = "QuanLyCachNuoi", urlPatterns = {"/quan-ly-cach-nuoi"})
@MultipartConfig(maxFileSize = 1024 * 1024 * 2)
public class QuanLyCachNuoi extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String command = request.getParameter("command");
        String cachnuoiID = request.getParameter("cachnuoiID");
        String url = "";
        cachnuoi c = null;
        try {
            c = cachnuoiDAO.getChitietcachnuoi(Integer.parseInt(cachnuoiID));
        } catch (SQLException ex) {
            System.out.println("Lỗi " + ex.getMessage());
        }

        switch (command) {
            case "xoa": {
                try {
                    if (cachnuoiDAO.xoaCachnuoi(Integer.parseInt(cachnuoiID))) {
                        request.setAttribute("xoa", "Đã Xóa Bài " + c.getCachnuoi_title());
                        url = "/manager_post.jsp";
                        break;
                    } else {
                        url = "/manager_post.jsp";
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
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");
        String id = request.getParameter("cachnuoiID");
        int cachnuoiID = -1;
       
        if (!"".equals(id) && id != null) {
            cachnuoiID = Integer.parseInt(id);
        }
        String command = request.getParameter("command");
        String title = request.getParameter("title");
        String content = request.getParameter("content");

        Part filePart = request.getPart("hinhanh");
        String fileName = extractFileName(filePart);
        String appPath = request.getServletContext().getRealPath("");
        String savePath = null;
        if (appPath.endsWith(File.separator)) {
            savePath = appPath + "images" + File.separator + fileName;
        } else {
            savePath = appPath + File.separator + "images" + File.separator + fileName;
        }
        File fileSaveDir = new File(savePath);
        filePart.write(savePath + File.separator);

        String url = "", error = "";
        if (title.equals("")) {
            error = "vui lòng nhập tên danh mục";
            request.setAttribute("error", error);
            return;
        }
        if (content.equals("")) {
            error = "vui lòng nhập tên danh mục";
            request.setAttribute("error", error);
            return;
        }
        try {
            if (error.length() == 0) {
                switch (command) {
                    case "insert":
                        cachnuoi pi = new cachnuoi();
                        pi.setCachnuoi_noidung(content);
                        pi.setCachnuoi_title(title);
                        pi.setCachnuoi_image("images/" + fileName);
                        if (cachnuoiDAO.taoCachnuoi(pi)) {
                            url = "/manager_post.jsp";
                        } else {
                            url = "/tao_cachnuoi_admin.jsp";
                        }
                        break;
                    case "update":
                        if (cachnuoiID != -1) {
                            cachnuoi p = cachnuoiDAO.getChitietcachnuoi(cachnuoiID);
                            p.setCachnuoi_noidung(content);
                            p.setCachnuoi_title(title);
                            p.setCachnuoi_image("images/"+ fileName);
                            if (cachnuoiDAO.capnhatCachnuoi(p)) {
                                url = "/manager_post.jsp";
                            } else {
                                url = "/update_cachnuoi_admin.jsp";
                            }
                        }
                        break;
                }
            } else {
                url = "/manager_post.jsp";
                request.setAttribute("err", "Chưa Nhập?");
            }
        } catch (Exception e) {
            System.out.println("Loi"+e.getMessage());
        }
        RequestDispatcher rd = getServletContext().getRequestDispatcher(url);
        rd.forward(request, response);

    }

    private String extractFileName(Part part) {
        String contenDisp = part.getHeader("content-disposition");
        String[] items = contenDisp.split(";");
        for (String s : items) {
            if (s.trim().startsWith("filename")) {
                return s.substring(s.indexOf("=") + 2, s.length() - 1);
            }
        }
        return "";
    }
}
