/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import model.cachnuoi;
import dao.DuyetBaiDAO;
import dao.blogthucungDAO;
import dao.cachnuoiDAO;
import java.io.File;
import java.io.IOException;
import java.sql.SQLException;
import java.util.Date;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import model.Category;
import model.blogthucung;

/**
 *
 * @author Administrator
 */
@WebServlet(name = "QuanLyBlog", urlPatterns = {"/quan-ly-blog"})
@MultipartConfig(maxFileSize = 1024 * 1024 * 2)
public class QuanLyBlog extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String command = request.getParameter("command");
        String blogID = request.getParameter("blogID");
        String url = "";
        blogthucung c = null;
        try {
            c = blogthucungDAO.getChitietblogthucung(Integer.parseInt(blogID));
        } catch (SQLException ex) {
            System.out.println("Lỗi " + ex.getMessage());
        }

        switch (command) {
            case "xoa": {
                try {
                    if (blogthucungDAO.xoaBlog(Integer.parseInt(blogID))) {
                        request.setAttribute("xoa", "Đã Xóa Bài " + c.getBlogthucung_title());
                        url = "/quan_ly_blog.jsp";
                        break;
                    } else {
                        url = "/quan_ly_blog.jsp";
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
        
        String id = request.getParameter("blogID");
        int blogID = -1;
        if (!"".equals(id) && id != null) {
            blogID = Integer.parseInt(id);
        }
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
       
        
        
        String command = request.getParameter("command");
        String title = request.getParameter("title");
        String content = request.getParameter("content");
        String url = "", error = "";
        if (title.equals("")) {
            error = "vui lòng nhập tên Blog";
            request.setAttribute("error", error);
        }
        if (content.equals("")) {
            error = "vui lòng nhập nội dung blog";
            request.setAttribute("error", error);
        }
        try {
            if (error.length() == 0)
            {
                switch (command) 
                {
                    case "insert":
                        blogthucung pi = new blogthucung();
                        pi.setBlogthucung_noidung(content);
                        pi.setBlogthucung_title(title);
                        pi.setBlogthucung_image("images/" + fileName);
                        if (blogthucungDAO.taoBlog(pi)) {
                            url = "/quan_ly_blog.jsp";
                        } else {
                            url = "/tao_blog_admin.jsp";
                        }
                        break;
                    case "update":
                        blogthucung p = blogthucungDAO.getChitietblogthucung(blogID);
                        p.setBlogthucung_noidung(content);
                        p.setBlogthucung_title(title);
                        p.setBlogthucung_image("images/blog/" + fileName);
                        if (blogthucungDAO.capnhatBlog(p)) {
                                url = "/quan_ly_blog.jsp";
                        } else {
                            url = "/update_blog_admin.jsp";
                        }
                        break;
                }
            } else {
                url = "/quan_ly_blog.jsp";
                request.setAttribute("err", "Chưa Nhập?");
            }
        } catch (Exception e) {

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
