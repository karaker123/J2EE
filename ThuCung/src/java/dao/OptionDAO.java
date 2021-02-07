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
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import model.Option;

/**
 *
 * @author Hp
 */
public class OptionDAO {
    
    public static int fkosdf() throws SQLException
    {
        Boolean con = DBConnect.getConnection().prepareStatement("").executeQuery().next();
        
        return 0;
    }
    
    public static ArrayList<Option> getListOptionByCategory(int category_id) throws SQLException
    {
        Connection connection = DBConnect.getConnection();
        String sql ="SELECT * FROM thucung.option where option_category_id='"+category_id+"' ";
        PreparedStatement ps = connection.prepareStatement(sql);
        ResultSet rs = ps.executeQuery();
        ArrayList<Option> list = new ArrayList<>();
        while(rs.next())
        {
            Option option = new Option();
            option.setOptionID(rs.getInt("option_id"));
            option.setCategoryoptionID(rs.getInt("option_category_id"));
            option.setOptionName(rs.getString("option_name"));
            option.setOptionOrigin(rs.getString("option_origin"));
            option.setOptionImage(rs.getString("option_image"));
            option.setOptionOldPrice(rs.getDouble("option_oldprice"));
            option.setOptionPrice(rs.getDouble("option_price"));
            option.setOptionDescription(rs.getString("option_description"));
            option.setOptionStock(rs.getString("option_stock"));
            option.setOptionNgaydang(new SimpleDateFormat("dd-MM-yyyy").format(rs.getDate("option_ngaydang")) );
          
            list.add(option);
        }
        return list;
    }
    
     // hiển thị chi tiết sản phẩm
    public static Option getOption(int optionID) throws SQLException
    {
        Connection con = DBConnect.getConnection();
        java.sql.PreparedStatement ps = con.prepareStatement("SELECT * FROM thucung.option WHERE option_id='"+optionID+"' ");
        ResultSet rs = ps.executeQuery();
        Option p = new Option();
        ArrayList<Option> list = new ArrayList<>();
        while(rs.next())
        {          
            p.setOptionID(rs.getInt("option_id"));
            p.setCategoryoptionID(rs.getInt("option_category_id"));
            p.setCategoryoptionName(rs.getString("option_category_name"));
            p.setOptionName(rs.getString("option_name"));
            p.setOptionOrigin(rs.getString("option_origin"));
            p.setOptionOldPrice(rs.getDouble("option_oldprice"));
            p.setOptionImage(rs.getString("option_image"));
            p.setOptionPrice(rs.getDouble("option_price"));
            p.setOptionDescription(rs.getString("option_description"));
            p.setOptionSdt(rs.getString("option_sdt"));       
            p.setOptionHoten(rs.getString("option_hoten"));
            p.setOptionVitri(rs.getString("option_vitri"));
            p.setOptionNgaydang(new SimpleDateFormat("dd-MM-yyyy").format(rs.getDate("option_ngaydang")) );
            p.setOptionStock(rs.getString("option_stock"));
            p.setOptionStatus(rs.getInt("option_status"));
            list.add(p);
        }
        return p;
    }
    public static ArrayList<Option> getOptionSamePrice(Double d) throws SQLException
    {
        Connection con = DBConnect.getConnection();
        Double d1 = d - 0.5;Double d2 = d + 0.5;
        java.sql.PreparedStatement ps = con.prepareStatement("SELECT * FROM thucung.option WHERE option_price >= '"+d1+"' and option_price<='"+d2+"' limit 6");
        ResultSet rs = ps.executeQuery();
        
        ArrayList<Option> list = new ArrayList<>();
        while(rs.next())
        {   
            Option p = new Option();        
            p.setOptionID(rs.getInt("option_id"));
            p.setCategoryoptionID(rs.getInt("option_category_id"));
            p.setCategoryoptionName(rs.getString("option_category_name"));
            p.setOptionName(rs.getString("option_name"));
            p.setOptionOrigin(rs.getString("option_origin"));
            p.setOptionOldPrice(rs.getDouble("option_oldprice"));
            p.setOptionImage(rs.getString("option_image"));
            p.setOptionPrice(rs.getDouble("option_price"));
            p.setOptionDescription(rs.getString("option_description"));
            p.setOptionSdt(rs.getString("option_sdt"));       
            p.setOptionHoten(rs.getString("option_hoten"));
            p.setOptionVitri(rs.getString("option_vitri"));
            p.setOptionNgaydang(new SimpleDateFormat("dd-MM-yyyy").format(rs.getDate("option_ngaydang")) );
            p.setOptionStock(rs.getString("option_stock"));
            p.setOptionStatus(rs.getInt("option_status"));           
            list.add(p);
        }
        return list;
    }
    
    public static ArrayList<Option> getOptionSameTieuDe(String tieude) throws SQLException
    {
        Connection con = DBConnect.getConnection();
        
        java.sql.PreparedStatement ps = con.prepareStatement("SELECT * FROM thucung.option where option_name like '%"+tieude+"%' limit 6");
        ResultSet rs = ps.executeQuery();
        ArrayList<Option> list = new ArrayList<>();
        while(rs.next())
        {   
            Option p = new Option();        
            p.setOptionID(rs.getInt("option_id"));
            p.setCategoryoptionID(rs.getInt("option_category_id"));
            p.setCategoryoptionName(rs.getString("option_category_name"));
            p.setOptionName(rs.getString("option_name"));
            p.setOptionOrigin(rs.getString("option_origin"));
            p.setOptionOldPrice(rs.getDouble("option_oldprice"));
            p.setOptionImage(rs.getString("option_image"));
            p.setOptionPrice(rs.getDouble("option_price"));
            p.setOptionDescription(rs.getString("option_description"));
            p.setOptionSdt(rs.getString("option_sdt"));       
            p.setOptionHoten(rs.getString("option_hoten"));
            p.setOptionVitri(rs.getString("option_vitri"));
            p.setOptionNgaydang(new SimpleDateFormat("dd-MM-yyyy").format(rs.getDate("option_ngaydang")) );
            p.setOptionStock(rs.getString("option_stock"));
            p.setOptionStatus(rs.getInt("option_status"));           
            list.add(p);
        }
        return list;
    }
    
    public static void main(String[] args) throws SQLException
    {
        for(Option p :OptionDAO.getOptionSamePrice(2.2) )
        {
            System.out.println(p.getOptionID() );
        }
                
    }
    
     public static void mainProduct(String[] args) throws SQLException {
        for (Option c : OptionDAO.getOptionSameTieuDe("Cho")) {
            System.out.println(c.getOptionName() );
        }
    }
    //hien thi tat ca san pham
    public static ArrayList<Option> getListOption() throws SQLException
    {
        Connection con = DBConnect.getConnection();
        PreparedStatement ps = con.prepareStatement("SELECT * FROM thucung.option");
        ResultSet rs = ps.executeQuery();
        ArrayList<Option> list = new ArrayList<>();
        while(rs.next())
        {         
            Option p = new Option();        
            p.setOptionID(rs.getInt("option_id"));
            p.setCategoryoptionID(rs.getInt("option_category_id"));
            p.setCategoryoptionName(rs.getString("option_category_name"));
            p.setOptionName(rs.getString("option_name"));
            p.setOptionOrigin(rs.getString("option_origin"));
            p.setOptionOldPrice(rs.getDouble("option_oldprice"));
            p.setOptionImage(rs.getString("option_image"));
            p.setOptionPrice(rs.getDouble("option_price"));
            p.setOptionDescription(rs.getString("option_description"));
            p.setOptionSdt(rs.getString("option_sdt"));       
            p.setOptionHoten(rs.getString("option_hoten"));
            p.setOptionVitri(rs.getString("option_vitri"));
            p.setOptionNgaydang(new SimpleDateFormat("dd-MM-yyyy").format(rs.getDate("option_ngaydang")) );
            p.setOptionStock(rs.getString("option_stock"));
            p.setOptionStatus(rs.getInt("option_status"));           
            list.add(p);
        }
        Collections.sort(list,new Comparator<Option>()
        {
            @Override
            public int compare(Option t, Option t1) 
            {
                return t1.getOptionNgaydang().compareTo(t.getOptionNgaydang());
            }
            
        });
        return list;
    }
    
    public static ArrayList<Option> getListOptionByChapNhan() throws SQLException
    {
        Connection con = DBConnect.getConnection();
        PreparedStatement ps = con.prepareStatement("SELECT * FROM thucung.option where option_status = 1 limit 20");
        ResultSet rs = ps.executeQuery();
        ArrayList<Option> list = new ArrayList<>();    
        while(rs.next())
        {         
            Option p = new Option();        
            p.setOptionID(rs.getInt("option_id"));
            p.setCategoryoptionID(rs.getInt("option_category_id"));
            p.setCategoryoptionName(rs.getString("option_category_name"));
            p.setOptionName(rs.getString("option_name"));
            p.setOptionOrigin(rs.getString("option_origin"));
            p.setOptionOldPrice(rs.getDouble("option_oldprice"));
            p.setOptionImage(rs.getString("option_image"));
            p.setOptionPrice(rs.getDouble("option_price"));
            p.setOptionDescription(rs.getString("option_description"));
            p.setOptionSdt(rs.getString("option_sdt"));       
            p.setOptionHoten(rs.getString("option_hoten"));
            p.setOptionVitri(rs.getString("option_vitri"));
            p.setOptionNgaydang(new SimpleDateFormat("dd-MM-yyyy").format(rs.getDate("option_ngaydang")) );
            p.setOptionStock(rs.getString("option_stock"));
            p.setOptionStatus(rs.getInt("option_status"));           
            list.add(p);
        }
        return list;
    }
    public static ArrayList<Option> getListOptionByChapNhan(int option_category_id) throws SQLException
    {
        Connection con = DBConnect.getConnection();
        PreparedStatement ps = (PreparedStatement) con.prepareStatement("SELECT * FROM thucung.option where option_status = 1 and option_category_id ='" +option_category_id+ "' ");
        ResultSet rs = ps.executeQuery();
        ArrayList<Option> list = new ArrayList<>();    
        while(rs.next())
        {         
            Option p = new Option();        
            p.setOptionID(rs.getInt("option_id"));
            p.setCategoryoptionID(rs.getInt("option_category_id"));
            p.setCategoryoptionName(rs.getString("option_category_name"));
            p.setOptionName(rs.getString("option_name"));
            p.setOptionOrigin(rs.getString("option_origin"));
            p.setOptionOldPrice(rs.getDouble("option_oldprice"));
            p.setOptionImage(rs.getString("option_image"));
            p.setOptionPrice(rs.getDouble("option_price"));
            p.setOptionDescription(rs.getString("option_description"));
            p.setOptionSdt(rs.getString("option_sdt"));       
            p.setOptionHoten(rs.getString("option_hoten"));
            p.setOptionVitri(rs.getString("option_vitri"));
            p.setOptionNgaydang(new SimpleDateFormat("dd-MM-yyyy").format(rs.getDate("option_ngaydang")) );
            p.setOptionStock(rs.getString("option_stock"));
            p.setOptionStatus(rs.getInt("option_status"));           
            list.add(p);
        }
        return list;
    }
    public static Option getOptionById(int optionID) throws SQLException
    {
        Connection con = DBConnect.getConnection();
        PreparedStatement ps = con.prepareStatement("SELECT * FROM thucung.option WHERE option_id='" +optionID+ "' ");
        ResultSet rs = ps.executeQuery();
        Option p = new Option();
        
        while(rs.next())
        {           
            p.setOptionID(rs.getInt("option_id"));   
            p.setCategoryoptionID(rs.getInt("option_category_id"));
            p.setCategoryoptionName(rs.getString("option_category_name"));
            p.setOptionName(rs.getString("option_name"));
            p.setOptionOrigin(rs.getString("option_origin"));
            p.setOptionOldPrice(rs.getDouble("option_oldprice"));
            p.setOptionImage(rs.getString("option_image"));
            p.setOptionPrice(rs.getDouble("option_price"));
            p.setOptionDescription(rs.getString("option_description"));
            p.setOptionSdt(rs.getString("option_sdt"));       
            p.setOptionHoten(rs.getString("option_hoten"));
            p.setOptionVitri(rs.getString("option_vitri"));
            p.setOptionNgaydang(new SimpleDateFormat("dd-MM-yyyy").format(rs.getDate("option_ngaydang")) );
            p.setOptionStock(rs.getString("option_stock"));
            p.setOptionStatus(rs.getInt("option_status"));
            
        }
        return p;
    }
    
     public static boolean insert_option(Option c) throws SQLException {
        Connection conn = DBConnect.getConnection();
        PreparedStatement ps = null;
        try {
            String query= "INSERT INTO thucung.option( option_category_id,option_category_name,option_name,"
                    + "option_image,option_price, option_oldprice,option_description,option_sdt,option_origin,option_hoten,"
                    + "option_vitri,option_ngaydang,option_stock,option_status) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
            
            ps = conn.prepareStatement(query);
            
            ps.setInt(1, c.getCategoryoptionID());
            ps.setString(2, c.getCategoryoptionName());
            ps.setString(3, c.getOptionName());
            ps.setString(4, c.getOptionImage());
            ps.setDouble(5, c.getOptionPrice());
            ps.setDouble(6, c.getOptionOldPrice());
            ps.setString(7, c.getOptionDescription());
            ps.setString(8, c.getOptionSdt());     
            ps.setString(9, c.getOptionOrigin());       
            ps.setString(10, c.getOptionHoten());
            ps.setString(11, c.getOptionVitri());   
            ps.setString(12, c.getOptionNgaydang());
            ps.setString(13, c.getOptionStock());
            ps.setInt(14, c.getOptionStatus());
           
            
            int k =ps.executeUpdate();
            if (k > 0) {
                return true;
            }
        } catch (SQLException ex) {
                System.err.println(ex.getMessage());
                ps.close();

        } finally {
            conn.close();
            ps.close();
        }
        return false;

    }
}
