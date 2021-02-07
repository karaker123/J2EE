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
import model.cachnuoi;

/**
 *
 * @author Hp
 */
public class cachnuoiDAO {
     public static ArrayList<cachnuoi> getListcachnuoi() throws SQLException {
        Connection con = DBConnect.getConnection();
        PreparedStatement ps = con.prepareStatement("select*from cachnuoi");
        ResultSet rs = ps.executeQuery();
        ArrayList<cachnuoi> list = new ArrayList<>();
        while (rs.next()) {
            cachnuoi n = new cachnuoi();
            n.setCachnuoi_id(rs.getInt("cachnuoi_id"));
            n.setCachnuoi_image(rs.getString("cachnuoi_image"));
            n.setCachnuoi_title(rs.getString("cachnuoi_title"));
            n.setCachnuoi_noidung(rs.getString("cachnuoi_noidung"));
            list.add(n);
        }
        return list;
    }

    //phuong thuc hien chi tiet theo id parameter
    public static cachnuoi getChitietcachnuoi(int id) throws SQLException {
        Connection con = DBConnect.getConnection();
        PreparedStatement ps = con.prepareStatement("select*from cachnuoi where cachnuoi_id='" + id + "' ");
        ResultSet rs = ps.executeQuery();
        cachnuoi n = new cachnuoi();
        while (rs.next()) {
            n.setCachnuoi_id(rs.getInt("cachnuoi_id"));
            n.setCachnuoi_image(rs.getString("cachnuoi_image"));
            n.setCachnuoi_title(rs.getString("cachnuoi_title"));
            n.setCachnuoi_noidung(rs.getString("cachnuoi_noidung"));
        }
        return n;
    }
    //test
    public static void main(String[] args) throws SQLException 
    {
        System.out.println(cachnuoiDAO.getChitietcachnuoi(1).getCachnuoi_title() );
    }
    
    
    
    public static boolean taoCachnuoi(cachnuoi c) throws SQLException {
        Connection con = DBConnect.getConnection();
        PreparedStatement ps;
        try {
            ps = con.prepareStatement("insert into thucung.cachnuoi(cachnuoi_title, cachnuoi_noidung, cachnuoi_image) values(?,?,?)");
            ps.setString(1, c.getCachnuoi_title());
            ps.setString(2, c.getCachnuoi_noidung());
            ps.setString(3, c.getCachnuoi_image());
            return ps.executeUpdate() == 1;
        } catch (SQLException ex) 
        {
            System.out.println("Loi " + ex.getMessage());
        }
        return false;
    }
    
    public static boolean capnhatCachnuoi(cachnuoi c) {
        Connection con = DBConnect.getConnection();
        try {
            PreparedStatement ps = con.prepareStatement("UPDATE cachnuoi SET cachnuoi_title='"+c.getCachnuoi_title()+"', cachnuoi_noidung='"+c.getCachnuoi_noidung()+"', cachnuoi_image='"+c.getCachnuoi_image()+"' where cachnuoi_id='"+c.getCachnuoi_id()+"'  ");
            ps.executeUpdate();
            ps.close();
            con.close();
        } catch (SQLException ex) {
            System.out.println("Loi " +ex.getMessage());
            return false;
        }
        return true;
    }
    
    public static boolean xoaCachnuoi(int id) throws SQLException {
        Connection con = DBConnect.getConnection();
        PreparedStatement ps = null;
        try {
            ps = con.prepareStatement("delete from thucung.cachnuoi where cachnuoi_id='" + id + "'");
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
