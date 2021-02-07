
package dao;

import connect.DBConnect;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Category;
import model.PostMua;
import model.Product;


public class PostMuaDAO 
{
    //phuong thuc them vao mysql
    public static void ThemPostMua(PostMua p) throws SQLException
    {
        Connection con = DBConnect.getConnection();
        PreparedStatement ps = con.prepareStatement("insert into dangtinmua values(?,?,?,?)");
        ps.setString(1, p.getTen());
        ps.setString(2, p.getSdt() );
        ps.setString(3, p.getTieude());
        ps.setString(4, p.getNoidung());
        ps.executeUpdate();
    }
    
    public static boolean DangMua(PostMua p)
    {
        Connection con = DBConnect.getConnection();
        PreparedStatement ps;
        try {
            ps = con.prepareStatement("insert into dangtinmua values(?,?,?,?,?)");
            ps.setInt(1, p.getStt() );
            ps.setString(2, p.getTen());
            ps.setString(3, p.getSdt() );
            ps.setString(4, p.getTieude());
            ps.setString(5, p.getNoidung());
            return ps.executeUpdate() == 1;
        } catch (SQLException ex) 
        {
            System.out.println("Loi " + ex.getMessage());
        }
        return false;
    }
    //xoa
    public static boolean delete(int id)
    {
        Connection con = DBConnect.getConnection();
        try 
        {
            com.mysql.jdbc.PreparedStatement ps = (com.mysql.jdbc.PreparedStatement) con.prepareStatement("delete from dangtinmua where stt='"+id+"' ");
            
            return ps.executeUpdate()==1;
        } catch (SQLException ex)
        {
            System.out.println("Loi "+ ex.getMessage());
        }
        return false;
    }
    //lon
    public static void suaten(String ten,String id)
    {
        Connection con = DBConnect.getConnection();
        try {
            PreparedStatement ps = con.prepareStatement("UPDATE dangtinmua SET ten='"+ten+"' where stt='"+id+"'  ");
            ps.executeUpdate();
            ps.close();
            con.close();
        } catch (SQLException ex) {
            System.out.println("Loi " +ex.getMessage());
        }
    }
    public static boolean suaTenCLMM(String ten,String id)
    {
       
        Connection con = DBConnect.getConnection();
        try {
            PreparedStatement ps = con.prepareStatement("update dangtinmua set ten='"+ten+"' where stt='"+id+"'  ");
            return  ps.executeUpdate() == 1;
            
        } catch (SQLException ex) {
            System.out.println("Loi " +ex.getMessage());
        }
        
        return false;
    }
    
    //phuong thuc cap nhat theo sdt
    public static boolean updatesdt(String sdt,String id)
    {
        Connection con = DBConnect.getConnection();
        try {
            PreparedStatement ps = con.prepareStatement("update dangtinmua set sdt='"+sdt+"' where stt='"+id+"' ");
            return ps.executeUpdate()==1;
        } catch (SQLException ex) 
        {
            System.out.println("");
        }
        return false;
    }
    //phuong thuc cap nhat theo tieude
    public static boolean updatetieude(String tieude,int id)
    {
        Connection con = DBConnect.getConnection();
        try {
            PreparedStatement ps = con.prepareStatement("update dangtinmua set title='"+tieude+"' where stt='"+id+"' ");
            return ps.executeUpdate()==1;
        } catch (SQLException ex) 
        {
            System.out.println("");
        }
        return false;
    }
    //phuong thuc cap nhat theo noidung
    public static boolean updatenoidung(String noidung,int id)
    {
        Connection con = DBConnect.getConnection();
        try {
            PreparedStatement ps = con.prepareStatement("update dangtinmua set noidung='"+noidung+"' where stt='"+id+"' ");
            return ps.executeUpdate()==1;
        } catch (SQLException ex) 
        {
            System.out.println("");
        }
        return false;
    }
    //phuong thuc hien tat ca danh sach rao tin  mua
    public static ArrayList<PostMua> getListPostMua() throws SQLException
    {
        Connection con = DBConnect.getConnection();
        PreparedStatement ps = con.prepareStatement("select * from dangtinmua ");
        ResultSet rs = ps.executeQuery();
        ArrayList<PostMua> list = new ArrayList<>();
        while(rs.next())
        {
            PostMua p = new PostMua();
            p.setStt(rs.getInt("stt") );
            p.setTen(rs.getString("ten"));
            p.setSdt(rs.getString("sdt"));
            p.setTieude(rs.getString("title"));
            p.setNoidung(rs.getString("noidung"));
            list.add(p);
        }
        return list;
    }
    public static PostMua getChiTiet(int id) throws SQLException
    {
        Connection con = DBConnect.getConnection();
        PreparedStatement ps = con.prepareStatement("select*from dangtinmua where stt='" + id + "' ");
        ResultSet rs = ps.executeQuery();
        PostMua pm = new PostMua();
        while (rs.next()) {
            pm.setStt(rs.getInt("stt"));
            pm.setTen(rs.getString("ten"));
            pm.setSdt(rs.getString("sdt"));
            pm.setTieude(rs.getString("title"));
            pm.setNoidung(rs.getString("noidung"));
        }
        return pm;
    }
}
