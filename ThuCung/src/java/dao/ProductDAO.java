
package dao;

import java.sql.PreparedStatement;
import connect.DBConnect;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import model.PostMua;
import model.Product;

public class ProductDAO 
{   
   
    public static int fkosdf() throws SQLException
    {
        Boolean con = DBConnect.getConnection().prepareStatement("").executeQuery().next();
        
        return 0;
    }
    
    public static int countbaidangmua() throws SQLException
    {
      Connection con = DBConnect.getConnection();
      java.sql.PreparedStatement ps = con.prepareStatement("select*from thucung.dangtinmua ");
      int count = 0;
      ResultSet rs = ps.executeQuery();
      PostMua p = new PostMua();
      while(rs.next() )
      {
          p.setStt(rs.getInt("stt"));
          count++;
      }
      return count;
    }
    public static int countbaidangban() throws SQLException
    {
      Connection con = DBConnect.getConnection();
      java.sql.PreparedStatement ps = con.prepareStatement("select*from thucung.product ");
      int count = 0;
      ResultSet rs = ps.executeQuery();
      PostMua p = new PostMua();
      while(rs.next() )
      {
          p.setStt(rs.getInt("product_id"));
          count++;
      }
      return count;
    }
    
    public static ArrayList<Product> getListProductByChapNhan() throws SQLException
    {
        Connection con = DBConnect.getConnection();
        PreparedStatement ps = con.prepareStatement("SELECT * FROM thucung.product where product_status = 1 limit 20");
        ResultSet rs = ps.executeQuery();
        ArrayList<Product> list = new ArrayList<>();    
        while(rs.next())
        {         
            Product p = new Product();        
            p.setProductID(rs.getInt("product_id"));
            p.setCategoryproductID(rs.getInt("product_category_id"));
            p.setCategoryproductName(rs.getString("product_category_name"));
            p.setProductName(rs.getString("product_name"));
            p.setProductOrigin(rs.getString("product_origin"));
            p.setProductOldPrice(rs.getDouble("product_oldprice"));
            p.setProductImage(rs.getString("product_image"));
            p.setProductPrice(rs.getDouble("product_price"));
            p.setProductDescription(rs.getString("product_description"));
            p.setProductSdt(rs.getString("product_sdt"));       
            p.setProductHoten(rs.getString("product_hoten"));
            p.setProductVitri(rs.getString("product_vitri"));
            p.setProductNgaydang(new SimpleDateFormat("dd-MM-yyyy").format(rs.getDate("product_ngaydang")) );
            p.setProductStock(rs.getString("product_stock"));
            p.setProductStatus(rs.getInt("product_status"));           
            list.add(p);
        }
        return list;
    }
    public static ArrayList<Product> getListProductByChapNhan(int product_category_id) throws SQLException
    {
        Connection con = DBConnect.getConnection();
        PreparedStatement ps = (PreparedStatement) con.prepareStatement("SELECT * FROM thucung.product where product_status = 1 and product_category_id ='" +product_category_id+ "' ");
        ResultSet rs = ps.executeQuery();
        ArrayList<Product> list = new ArrayList<>();    
        while(rs.next())
        {         
            Product p = new Product();        
            p.setProductID(rs.getInt("product_id"));
            p.setCategoryproductID(rs.getInt("product_category_id"));
            p.setCategoryproductName(rs.getString("product_category_name"));
            p.setProductName(rs.getString("product_name"));
            p.setProductOrigin(rs.getString("product_origin"));
            p.setProductOldPrice(rs.getDouble("product_oldprice"));
            p.setProductImage(rs.getString("product_image"));
            p.setProductPrice(rs.getDouble("product_price"));
            p.setProductDescription(rs.getString("product_description"));
            p.setProductSdt(rs.getString("product_sdt"));       
            p.setProductHoten(rs.getString("product_hoten"));
            p.setProductVitri(rs.getString("product_vitri"));
            p.setProductNgaydang(new SimpleDateFormat("dd-MM-yyyy").format(rs.getDate("product_ngaydang")) );
            p.setProductStock(rs.getString("product_stock"));
            p.setProductStatus(rs.getInt("product_status"));           
            list.add(p);
        }
        return list;
    }
    
    public static ArrayList<Product> getListProductByNav(int category_id,int firstResult,int maxResult) throws SQLException
    {
        Connection con = DBConnect.getConnection();
        PreparedStatement ps = con.prepareStatement("select*from thucung.product where product_category_id='"+category_id+"' limit ? ,? ");
        ps.setInt(1, firstResult);
        ps.setInt(2, maxResult);
        ResultSet rs = ps.executeQuery();
        ArrayList<Product> list = new ArrayList<>();
        while(rs.next())
        {
            Product p = new Product();
            p.setProductID(rs.getInt("product_id"));
            p.setCategoryproductID(rs.getInt("product_category_id"));
            p.setCategoryproductName(rs.getString("product_category_name"));
            p.setProductName(rs.getString("product_name"));
            p.setProductOrigin(rs.getString("product_origin"));
            p.setProductOldPrice(rs.getDouble("product_oldprice"));
            p.setProductImage(rs.getString("product_image"));
            p.setProductPrice(rs.getDouble("product_price"));
            p.setProductDescription(rs.getString("product_description"));
            p.setProductSdt(rs.getString("product_sdt"));       
            p.setProductHoten(rs.getString("product_hoten"));
            p.setProductVitri(rs.getString("product_vitri"));
            p.setProductNgaydang(new SimpleDateFormat("dd-MM-yyyy").format(rs.getDate("product_ngaydang")) );
            p.setProductStock(rs.getString("product_stock"));
            p.setProductStatus(rs.getInt("product_status"));
            
            list.add(p);
        }
        return list;
    }
    //tinh tong san pham cua danh muc
    public static int countProductByCategory(int CategoryID) throws SQLException
    {
        Connection con = DBConnect.getConnection();
        PreparedStatement ps = con.prepareStatement("select*from thucung.product where product_category_id='"+CategoryID+"' ");
        ResultSet rs = ps.executeQuery();
        int count = 0 ;
        while(rs.next())
        {
            int k = rs.getInt("product_id");
            count++;
        }
        return count;
    }
    //tim kiem theo ten bai product
    public static ArrayList<Product> getTimKiem(String ten) throws SQLException
    {
        Connection con = DBConnect.getConnection();
        PreparedStatement ps = con.prepareStatement("select*from thucung.product where product_name like '%"+ten+"%' ");
        ResultSet rs = ps.executeQuery();
        ArrayList<Product> list = new ArrayList<>();
        while(rs.next())
        {
            Product p = new Product();
            p.setProductID(rs.getInt("product_id"));
            p.setProductName(rs.getString("product_name"));
            p.setProductImage(rs.getString("product_image"));
            p.setProductPrice(rs.getDouble("product_price"));
            p.setProductDescription(rs.getString("product_description"));
            list.add(p);
        }
        return list;
    }
    //Đưa Tât Cả Sản Phẩm Từ Category_id ra Khi bấm vào danh mục đó
    public static ArrayList<Product> getListProductByCategory(int category_id) throws SQLException
    {
        Connection connection = DBConnect.getConnection();
        String sql ="select*from thucung.product where product_category_id='"+category_id+"' ";
        PreparedStatement ps = connection.prepareStatement(sql);
        ResultSet rs = ps.executeQuery();
        ArrayList<Product> list = new ArrayList<>();
        while(rs.next())
        {
            Product product = new Product();
            product.setProductID(rs.getInt("product_id"));
            product.setCategoryproductID(rs.getInt("product_category_id"));
            product.setProductName(rs.getString("product_name"));
            product.setProductOrigin(rs.getString("product_origin"));
            product.setProductImage(rs.getString("product_image"));
            product.setProductOldPrice(rs.getDouble("product_oldprice"));
            product.setProductPrice(rs.getDouble("product_price"));
            product.setProductDescription(rs.getString("product_description"));
            product.setProductStock(rs.getString("product_stock"));
            product.setProductNgaydang(new SimpleDateFormat("dd-MM-yyyy").format(rs.getDate("product_ngaydang")) );
          
            list.add(product);
        }
        return list;
    }
    
     // hiển thị chi tiết sản phẩm
    public static Product getProduct(int productID) throws SQLException
    {
        Connection con = DBConnect.getConnection();
        PreparedStatement ps = con.prepareStatement("select*from thucung.product WHERE product_id='"+productID+"' ");
        ResultSet rs = ps.executeQuery();
        Product p = new Product();
        ArrayList<Product> list = new ArrayList<>();
        while(rs.next())
        {          
            p.setProductID(rs.getInt("product_id"));
            p.setCategoryproductID(rs.getInt("product_category_id"));
            p.setCategoryproductName(rs.getString("product_category_name"));
            p.setProductName(rs.getString("product_name"));
            p.setProductOrigin(rs.getString("product_origin"));
            p.setProductOldPrice(rs.getDouble("product_oldprice"));
            p.setProductImage(rs.getString("product_image"));
            p.setProductPrice(rs.getDouble("product_price"));
            p.setProductDescription(rs.getString("product_description"));
            p.setProductSdt(rs.getString("product_sdt"));       
            p.setProductHoten(rs.getString("product_hoten"));
            p.setProductVitri(rs.getString("product_vitri"));
            p.setProductNgaydang(new SimpleDateFormat("dd-MM-yyyy").format(rs.getDate("product_ngaydang")) );
            p.setProductStock(rs.getString("product_stock"));
            p.setProductStatus(rs.getInt("product_status"));
            list.add(p);
        }
        return p;
    }
    public static ArrayList<Product> getProductSamePrice(Double d) throws SQLException
    {
        Connection con = DBConnect.getConnection();
        Double d1 = d - 2.5;Double d2 = d + 2.5;
        PreparedStatement ps = con.prepareStatement("select*from thucung.product WHERE product_price >= '"+d1+"' and product_price<='"+d2+"' limit 6");
        ResultSet rs = ps.executeQuery();
        
        ArrayList<Product> list = new ArrayList<>();
        while(rs.next())
        {   
            Product p = new Product();        
            p.setProductID(rs.getInt("product_id"));     
            p.setCategoryproductID(rs.getInt("product_category_id"));
            p.setCategoryproductName(rs.getString("product_category_name"));
            p.setProductName(rs.getString("product_name"));
            p.setProductOrigin(rs.getString("product_origin"));
            p.setProductOldPrice(rs.getDouble("product_oldprice"));
            p.setProductImage(rs.getString("product_image"));
            p.setProductPrice(rs.getDouble("product_price"));
            p.setProductDescription(rs.getString("product_description"));
            p.setProductSdt(rs.getString("product_sdt"));       
            p.setProductHoten(rs.getString("product_hoten"));
            p.setProductVitri(rs.getString("product_vitri"));
            p.setProductNgaydang(new SimpleDateFormat("dd-MM-yyyy").format(rs.getDate("product_ngaydang")) );
            p.setProductStock(rs.getString("product_stock"));
            p.setProductStatus(rs.getInt("product_status"));
            list.add(p);
        }
        return list;
    }
    
    public static ArrayList<Product> getProductSameTieuDe(String tieude) throws SQLException
    {
        Connection con = DBConnect.getConnection();
        
        PreparedStatement ps = con.prepareStatement("select*from thucung.product where product_name like '%"+tieude+"%' limit 6");
        ResultSet rs = ps.executeQuery();
        ArrayList<Product> list = new ArrayList<>();
        while(rs.next())
        {   
            Product p = new Product();
            p.setProductID(rs.getInt("product_id"));   
            p.setCategoryproductID(rs.getInt("product_category_id"));
            p.setCategoryproductName(rs.getString("product_category_name"));
            p.setProductName(rs.getString("product_name"));
            p.setProductOrigin(rs.getString("product_origin"));
            p.setProductOldPrice(rs.getDouble("product_oldprice"));
            p.setProductImage(rs.getString("product_image"));
            p.setProductPrice(rs.getDouble("product_price"));
            p.setProductDescription(rs.getString("product_description"));
            p.setProductSdt(rs.getString("product_sdt"));       
            p.setProductHoten(rs.getString("product_hoten"));
            p.setProductVitri(rs.getString("product_vitri"));
            p.setProductNgaydang(new SimpleDateFormat("dd-MM-yyyy").format(rs.getDate("product_ngaydang")) );
            p.setProductStock(rs.getString("product_stock"));
            p.setProductStatus(rs.getInt("product_status"));
            list.add(p);
        }
        return list;
    }
    
    public static void main(String[] args) throws SQLException
    {
        for(Product p :ProductDAO.getProductSamePrice(2.2) )
        {
            System.out.println(p.getProductID() );
        }
                
    }
    
     public static void mainProduct(String[] args) throws SQLException {
        for (Product c : ProductDAO.getProductSameTieuDe("Cho")) {
            System.out.println(c.getProductName() );
        }
    }
    //hien thi tat ca san pham
    public static ArrayList<Product> getListProduct() throws SQLException
    {
        Connection con = DBConnect.getConnection();
        PreparedStatement ps = con.prepareStatement("select*from thucung.product");
        ResultSet rs = ps.executeQuery();
        ArrayList<Product> list = new ArrayList<>();
        while(rs.next())
        {
            Product p = new Product();
            p.setProductID(rs.getInt("product_id"));   
            p.setCategoryproductID(rs.getInt("product_category_id"));
            p.setCategoryproductName(rs.getString("product_category_name"));
            p.setProductName(rs.getString("product_name"));
            p.setProductOrigin(rs.getString("product_origin"));
            p.setProductOldPrice(rs.getDouble("product_oldprice"));
            p.setProductImage(rs.getString("product_image"));
            p.setProductPrice(rs.getDouble("product_price"));
            p.setProductDescription(rs.getString("product_description"));
            p.setProductSdt(rs.getString("product_sdt"));       
            p.setProductHoten(rs.getString("product_hoten"));
            p.setProductVitri(rs.getString("product_vitri"));
            p.setProductNgaydang(new SimpleDateFormat("dd-MM-yyyy").format(rs.getDate("product_ngaydang")) );
            p.setProductStock(rs.getString("product_stock"));
            p.setProductStatus(rs.getInt("product_status"));
            list.add(p);
        }
        Collections.sort(list,new Comparator<Product>()
        {
            @Override
            public int compare(Product t, Product t1) 
            {
                return t1.getProductNgaydang().compareTo(t.getProductNgaydang());
            }
            
        });
        return list;
    }
    
    public static Product getProductById(int productID) throws SQLException
    {
        Connection con = DBConnect.getConnection();
        PreparedStatement ps = con.prepareStatement("select*from thucung.product WHERE product_id='"+productID+"' ");
        ResultSet rs = ps.executeQuery();
        Product p = new Product();
        
        while(rs.next())
        {           
            p.setProductID(rs.getInt("product_id"));
            p.setCategoryproductID(rs.getInt("product_category_id"));
            p.setCategoryproductName(rs.getString("product_category_name"));
            p.setProductName(rs.getString("product_name"));
            p.setProductOrigin(rs.getString("product_origin"));
            p.setProductOldPrice(rs.getDouble("product_oldprice"));
            p.setProductImage(rs.getString("product_image"));
            p.setProductPrice(rs.getDouble("product_price"));
            p.setProductDescription(rs.getString("product_description"));
            p.setProductSdt(rs.getString("product_sdt"));       
            p.setProductHoten(rs.getString("product_hoten"));
            p.setProductVitri(rs.getString("product_vitri"));
            p.setProductNgaydang(new SimpleDateFormat("dd-MM-yyyy").format(rs.getDate("product_ngaydang")) );
            p.setProductStock(rs.getString("product_stock"));
            p.setProductStatus(rs.getInt("product_status"));
            
        }
        return p;
    }
    
     public static boolean insert_product(Product c) throws SQLException {
        Connection conn = DBConnect.getConnection();
        PreparedStatement ps = null;
        try {
            String query= "INSERT INTO  thucung.product( product_category_id,product_category_name,product_name,"
                    + "product_image,product_price, product_oldprice,product_description,product_sdt,product_origin,product_hoten,"
                    + "product_vitri,product_ngaydang,product_stock,product_status) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
            
            ps = conn.prepareStatement(query);
            
            ps.setInt(1, c.getCategoryproductID());
            ps.setString(2, c.getCategoryproductName());
            ps.setString(3, c.getProductName());
            ps.setString(4, c.getProductImage());
            ps.setDouble(5, c.getProductPrice());
            ps.setDouble(6, c.getProductOldPrice());
            ps.setString(7, c.getProductDescription());
            ps.setString(8, c.getProductSdt());   
            ps.setString(9, c.getProductOrigin());
            ps.setString(10, c.getProductHoten());
            ps.setString(11, c.getProductVitri());   
            ps.setString(12, c.getProductNgaydang());
            ps.setString(13, c.getProductStock());
            ps.setInt(14, c.getProductStatus());
           
            
            
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
