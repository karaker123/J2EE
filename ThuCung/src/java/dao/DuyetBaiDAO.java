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
import model.Option;
import model.Product;

/**
 *
 * @author Administrator
 */
public class DuyetBaiDAO {

    //phuong thuc set chothue_status = 1 = duyet bai
    public static boolean ChapNhanBaiDangOption(int id) throws SQLException {
        Connection con = DBConnect.getConnection();
        PreparedStatement ps = null;
        try {
            ps = con.prepareStatement("update thucung.option set option_status =1 where option_id='" + id + "'");
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
    
    public static boolean ChapNhanBaiDangProduct(int id) throws SQLException {
        Connection con = DBConnect.getConnection();
        PreparedStatement ps = null;
        try {
            ps = con.prepareStatement("update thucung.product set product_status =1 where product_id='" + id + "'");
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
    

    public static Option getOption(int id) throws SQLException {
        Connection con = DBConnect.getConnection();
        PreparedStatement ps = null;
        ResultSet rs = null;
        Option c = new Option();
        try 
        {
            ps = con.prepareStatement("select option_hoten from thucung.option where option_id='"+id+"' ");
            rs = ps.executeQuery();
            while(rs.next())
            {
                c.setOptionHoten(rs.getString("option_hoten"));
            }
        } catch (Exception ex) {
            if (ps != null) {
                ps.close();
            }
        } finally {
            ps.close();
            con.close();
        }
        return c;

    }
    
    public static Product getProduct(int id) throws SQLException {
        Connection con = DBConnect.getConnection();
        PreparedStatement ps = null;
        ResultSet rs = null;
        Product c = new Product();
        try 
        {
            ps = con.prepareStatement("select product_hoten from thucung.product where product_id='"+id+"' ");
            rs = ps.executeQuery();
            while(rs.next())
            {
                c.setProductHoten(rs.getString("product_hoten"));
            }
        } catch (Exception ex) {
            if (ps != null) {
                ps.close();
            }
        } finally {
            ps.close();
            con.close();
        }
        return c;

    }
    
    public static void main(String[] args) throws SQLException {
        System.out.println(DuyetBaiDAO.getOption(4).getOptionHoten());  
    }
    
     public static void mainProduct(String[] args) throws SQLException {
        System.out.println(DuyetBaiDAO.getProduct(4).getProductHoten());  
    } 
    //phuong thuc xoa bai viet
    public static boolean xoaBaiDangOption(int id) throws SQLException {
        Connection con = DBConnect.getConnection();
        PreparedStatement ps = null;
        try {
            ps = con.prepareStatement("delete from thucung.option where option_id='" + id + "'");
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
    public static boolean xoaBaiDangProduct(int id) throws SQLException {
        Connection con = DBConnect.getConnection();
        PreparedStatement ps = null;
        try {
            ps = con.prepareStatement("delete from thucung.product where product_id='" + id + "'");
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

}
