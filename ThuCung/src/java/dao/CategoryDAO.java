
package dao;

import com.mysql.jdbc.PreparedStatement;
import connect.DBConnect;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Category;

public class CategoryDAO 
{
    public ArrayList<Category> getListCategoryProduct() throws SQLException
    {
        Connection connection = DBConnect.getConnection();
        String sql = "select*from category_product";
        PreparedStatement ps = (PreparedStatement) connection.prepareStatement(sql);
        ResultSet rs = ps.executeQuery();
        
        ArrayList<Category> list = new ArrayList<>();
        while(rs.next())
        {
            list.add(new Category(rs.getInt("category_product_id"),rs.getString("category_product_name")));
        }
        return list;
    }
    public ArrayList<Category> getListCategoryOption() throws SQLException
    {
        Connection connection = DBConnect.getConnection();
        String sql = "select*from category_option";
        PreparedStatement ps = (PreparedStatement) connection.prepareStatement(sql);
        ResultSet rs = ps.executeQuery();
        
        ArrayList<Category> list = new ArrayList<>();
        while(rs.next())
        {
            list.add(new Category(rs.getInt("category_option_id"),rs.getString("category_option_name")));
        }
        return list;
    }
    public static void main(String[] args) throws SQLException 
    {
        
        
    }
    //them moi du lieu
    public boolean insertCategoryProduct(Category c)
    {
        Connection con = DBConnect.getConnection();
        try 
        {
            PreparedStatement ps = (PreparedStatement) con.prepareStatement("insert into category_product values(?,?)");
            ps.setInt(1, (int) c.getCategoryID());
            ps.setString(2,c.getCategoryName());
            return ps.executeUpdate() ==1;
        } catch (SQLException ex) 
        {
            System.out.println("Loi" +ex.getMessage());
        }
        return false;
    }
    
    public boolean insertCategoryOption(Category c)
    {
        Connection con = DBConnect.getConnection();
        try 
        {
            PreparedStatement ps = (PreparedStatement) con.prepareStatement("insert into category_option values(?,?)");
            ps.setInt(1, (int) c.getCategoryID());
            ps.setString(2,c.getCategoryName());
            return ps.executeUpdate() ==1;
        } catch (SQLException ex) 
        {
            System.out.println("Loi" +ex.getMessage());
        }
        return false;
    }
    //cap nhat
    public boolean updateCategoryProduct(Category c)
    {
        Connection con = DBConnect.getConnection();
        try {
            PreparedStatement ps = (PreparedStatement) con.prepareStatement("update category_product set category_product_name=? where category_product_id=? ");
            ps.setInt(1, (int) c.getCategoryID());
            ps.setString(2,c.getCategoryName());
            return ps.executeUpdate() ==1;
        } catch (SQLException ex)
        {
            System.out.println("Loi "+ ex.getMessage());
        }
        return false;
    }
    
    public boolean updateCategoryOption(Category c)
    {
        Connection con = DBConnect.getConnection();
        try {
            PreparedStatement ps = (PreparedStatement) con.prepareStatement("update category_option set category_option_name=? where category_option_id=? ");
            ps.setInt(1, (int) c.getCategoryID());
            ps.setString(2,c.getCategoryName());
            return ps.executeUpdate() ==1;
        } catch (SQLException ex)
        {
            System.out.println("Loi "+ ex.getMessage());
        }
        return false;
    }
    //cap nhat 2 
    public static void capnhatProduct(String name,String id)
    {
        Connection con = DBConnect.getConnection();
        try {
            PreparedStatement ps = (PreparedStatement) con.prepareStatement("update category_product set category_product_name='"+name+"' where category_product_id='"+id+"' ");
            ps.executeUpdate();
        } catch (SQLException ex) {
            System.out.println("Loi " +ex.getMessage());
        }
    }
     public static void capnhatOption(String name,String id)
    {
        Connection con = DBConnect.getConnection();
        try {
            PreparedStatement ps = (PreparedStatement) con.prepareStatement("update category_option set category_option_name='"+name+"' where category_option_id='"+id+"' ");
            ps.executeUpdate();
        } catch (SQLException ex) {
            System.out.println("Loi " +ex.getMessage());
        }
    }
    
    //xoa 
    public boolean deleteCategoryProduct(int category_id)
    {
        Connection con = DBConnect.getConnection();
        try 
        {
            PreparedStatement ps = (PreparedStatement) con.prepareStatement("delete from category_product where category_product_id=?  ");
            ps.setInt(1, category_id);
            return ps.executeUpdate()==1;
        } catch (SQLException ex)
        {
            System.out.println("Loi "+ ex.getMessage());
        }
        return false;
    }
    
    public boolean deleteCategoryOption(int category_option_id)
    {
        Connection con = DBConnect.getConnection();
        try 
        {
            PreparedStatement ps = (PreparedStatement) con.prepareStatement("delete from category_option where category_option_id=?  ");
            ps.setLong(1, category_option_id);
            return ps.executeUpdate()==1;
        } catch (SQLException ex)
        {
            System.out.println("Loi "+ ex.getMessage());
        }
        return false;
    }
}
