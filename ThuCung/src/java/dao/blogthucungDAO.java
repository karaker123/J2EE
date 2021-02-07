/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import connect.DBConnect;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import model.blogthucung;
/**
 *
 * @author Hp
 */
public class blogthucungDAO {
    
     public static ArrayList<blogthucung> getListblogthucung() throws SQLException {
        Connection con = DBConnect.getConnection();
        PreparedStatement ps = con.prepareStatement("select*from blogthucung");
        ResultSet rs = ps.executeQuery();
        ArrayList<blogthucung> list = new ArrayList<>();
        while (rs.next()) {
            blogthucung n = new blogthucung();
            n.setBlogthucung_id(rs.getInt("blogthucung_id"));
            n.setBlogthucung_image(rs.getString("blogthucung_image"));
            n.setBlogthucung_title(rs.getString("blogthucung_title"));
            n.setBlogthucung_noidung(rs.getString("blogthucung_noidung"));
            list.add(n);
        }
        return list;
    }
     
      public static ArrayList<blogthucung> getListblogthucungnull() throws SQLException {
        Connection con = DBConnect.getConnection();
        PreparedStatement ps = con.prepareStatement("select * from blogthucung");
        ResultSet rs = ps.executeQuery();
        ArrayList<blogthucung> list = new ArrayList<>();    
        return null;
    }

    //phuong thuc hien chi tiet theo id parameter
    public static blogthucung getChitietblogthucung(int id) throws SQLException {
        Connection con = DBConnect.getConnection();
        PreparedStatement ps = con.prepareStatement("select * from blogthucung where blogthucung_id='" + id + "' ");
        ResultSet rs = ps.executeQuery();
        blogthucung n = new blogthucung();
        while (rs.next()) {
            n.setBlogthucung_id(rs.getInt("blogthucung_id"));
            n.setBlogthucung_image(rs.getString("blogthucung_image"));
            n.setBlogthucung_title(rs.getString("blogthucung_title"));
            n.setBlogthucung_noidung(rs.getString("blogthucung_noidung"));
        }
        return n;
    }
    
   
    //test
    public static void main(String[] args) throws SQLException 
    {
        System.out.println(blogthucungDAO.getChitietblogthucung(1).getBlogthucung_title() );
    }
    public static boolean taoBlog(blogthucung c) throws SQLException {
        Connection con = DBConnect.getConnection();
        PreparedStatement ps;
        try {
            ps = con.prepareStatement("insert into thucung.blogthucung(blogthucung_title, blogthucung_noidung, blogthucung_image) values(?,?, ?)");
            ps.setString(1, c.getBlogthucung_title());
            ps.setString(2, c.getBlogthucung_noidung());
            ps.setString(3, c.getBlogthucung_image());
            return ps.executeUpdate() == 1;
        } catch (SQLException ex) 
        {
            System.out.println("Loi " + ex.getMessage());
        }
        return false;
    }
    
    public static boolean xoaBlog(int id) throws SQLException {
        Connection con = DBConnect.getConnection();
        PreparedStatement ps = null;
        try {
            ps = con.prepareStatement("delete from thucung.blogthucung where blogthucung_id='" + id + "'");
            return ps.executeUpdate() == 1;
        } catch (Exception ex) {
            if (ps != null) {
                ps.close();
            }
        } finally {
            ps.close();
            con.close();
        }
        return false;
    }
    
    public static boolean capnhatBlog(blogthucung c) {
        Connection con = DBConnect.getConnection();
        try {
            PreparedStatement ps = con.prepareStatement("UPDATE blogthucung SET blogthucung_title='"+c.getBlogthucung_title()+"', blogthucung_noidung='"+c.getBlogthucung_noidung()+"', blogthucung_image='"+c.getBlogthucung_image()+"' where blogthucung_id='"+c.getBlogthucung_id()+"' ");
            ps.executeUpdate();
            ps.close();
            con.close();
        } catch (SQLException ex) {
            System.out.println("Loi " +ex.getMessage());
            return false;
        }
        return true;
    }
}

    