package dao;

import connect.DBConnect;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Users;

public class UsersDAO {
    
    
    public static boolean kichhoat_taikhoan(long id) throws SQLException
    {
        Connection con = DBConnect.getConnection();
        PreparedStatement ps = con.prepareStatement("update thucung.users set user_kichhoat = 1 where stt='"+id+"'");
        return ps.executeUpdate() == 1;
    }
    public static void main(String[] args) throws SQLException {
        
        System.out.println(UsersDAO.kichhoat_taikhoan(5));
    }
    //tim tai khoan boi email
    public static Users getUser(String email) throws SQLException
    {
        Connection con = DBConnect.getConnection();
        PreparedStatement ps = con.prepareStatement("select*from thucung.users where user_Email='"+email+"'");
        ResultSet rs = ps.executeQuery();
        Users u = new Users();
        while(rs.next() )
        {
            u.setStt(rs.getLong("stt"));
            u.setHovaten(rs.getString("hovaten"));
            u.setUserName(rs.getString("user_Name"));
            u.setUserPass(rs.getString("user_Pass"));
            u.setUserEmail(rs.getString("user_Email"));
            u.setUser_role(rs.getInt("user_role"));
            u.setUser_kichhoat(rs.getInt("user_kichhoat"));
            u.setUser_code(rs.getString("user_code"));
        }
        return u;
    }
    
    
    
    public static int countuser() throws SQLException {
        Connection con = DBConnect.getConnection();
        PreparedStatement ps = con.prepareStatement("select*from thucung.users ");
        int count = 0;
        ResultSet rs = ps.executeQuery();
        Users u = new Users();
        while (rs.next()) {
            u.setStt(rs.getLong("stt"));
            count++;
        }
        return count;
    }

    //phuong thuc sua userEmail theo ID
    public boolean suaEmail(String email, Long stt) throws SQLException {
        Connection con = DBConnect.getConnection();
        PreparedStatement ps = con.prepareStatement("update thucung.users set user_Email='" + email + "' where  stt='" + stt + "' ");
        return ps.executeUpdate() == 1;
    }

    //phuong thuc sua userPass theo ID
    public boolean suaUserPass(String pass, Long stt) throws SQLException {
        Connection con = DBConnect.getConnection();
        PreparedStatement ps = con.prepareStatement("update thucung.users set user_Pass='" + pass + "' where  stt='" + stt + "' ");
        return ps.executeUpdate() == 1;
    }

    //phuong thuc sua username theo ID
    public boolean suaUserName(String username, Long stt) throws SQLException {
        Connection con = DBConnect.getConnection();
        PreparedStatement ps = con.prepareStatement("update thucung.users set user_Name='" + username + "' where  stt='" + stt + "' ");
        return ps.executeUpdate() == 1;
    }

    //phuong thuc sua ten theo ID tu web--->database
    public boolean suaTen(String ten, Long stt) throws SQLException {
        Connection con = DBConnect.getConnection();
        PreparedStatement ps = con.prepareStatement("update thucung.users set hovaten='" + ten + "' where  stt='" + stt + "' ");
        return ps.executeUpdate() == 1;
    }

    //phuong thuc xoa user ra web -->database
    public boolean xoaTK(Long stt) throws SQLException {
        Connection con = DBConnect.getConnection();
        PreparedStatement ps = con.prepareStatement("delete from thucung.users where stt='" + stt + "' ");
        return ps.executeUpdate() == 1;
    }

    //hien thi tat ca user ra web
    public static ArrayList<Users> getListUsers() throws SQLException {
        Connection con = DBConnect.getConnection();
        PreparedStatement ps = con.prepareStatement("select*from thucung.users");
        ResultSet rs = ps.executeQuery();
        ArrayList<Users> list = new ArrayList<>();
        while (rs.next()) {
            Users user = new Users();
            user.setStt(rs.getLong("stt"));
            user.setHovaten(rs.getString("hovaten"));
            user.setUserName(rs.getString("user_Name"));
            user.setUserPass(rs.getString("user_Pass"));
            user.setUserEmail(rs.getString("user_Email"));
            user.setUser_role(rs.getInt("user_role"));
            list.add(user);
        }
        return list;
    }

    // kiểm tra người dùng tồn tại chưa
    public boolean checkEmail(String username) {
        Connection connection = DBConnect.getConnection();
        String sql = "SELECT * FROM thucung.users WHERE user_email = '" + username + "'";
        PreparedStatement ps;

        try {
            ps = connection.prepareCall(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                connection.close();
                return true;
            }
        } catch (SQLException ex) {
            System.out.println("Loi :" + ex.getMessage());
        }
        return false;
    }

    //them tk,phuong thuc tra ve void
    public boolean themTK(Users u) throws SQLException {
        Connection con = DBConnect.getConnection();
        PreparedStatement ps = con.prepareStatement("insert into thucung.users(hovaten,user_Name,user_Pass,user_Email,user_diachi,user_sdt,user_role,user_kichhoat,user_code) values(?,?,?,?,?,?,?,?,?)");
        ps.setString(1, u.getHovaten());
        ps.setString(2, u.getUserName());
        ps.setString(3, u.getUserPass());
        ps.setString(4, u.getUserEmail());
        ps.setString(5, u.getDiachi());
        ps.setString(6, u.getSdt());
        ps.setInt(7, u.getUser_role());
        ps.setInt(8, u.getUser_kichhoat());
        ps.setString(9, u.getUser_code());
        return ps.executeUpdate() == 1;
    }

    // kiểm tra đăng nhập
    public static Users login(String username, String password) throws SQLException {
        Connection conn = DBConnect.getConnection();
        PreparedStatement ps = null;
        ResultSet rs = null;
        Users u = new Users();
        try 
        {
            ps = conn.prepareStatement("select*from thucung.users where user_Name='"+username+"' and user_Pass='"+password+"'");
            rs = ps.executeQuery();
            
            while (rs.next())
            {
                u.setUser_role(rs.getInt("user_role"));
                u.setHovaten(rs.getString("hovaten"));
                u.setUserEmail(rs.getString("user_Email"));
                u.setUser_kichhoat(rs.getInt("user_kichhoat"));
            }
        } catch (Exception ex) 
        {
            if(ps != null )
            {
                ps.close();
            }
            
        } finally
        {   
            ps.close();
            rs.close();
            conn.close();
            
        }
        return u;
    }
    
    public static boolean kiemtraUser_Pass(String username, String password) throws SQLException {
        Connection conn = DBConnect.getConnection();
        PreparedStatement ps = null;
        ResultSet rs = null;
        Users u = new Users();
        try 
        {
            ps = conn.prepareStatement("select*from thucung.users where user_Name='"+username+"' and user_Pass='"+password+"'");
            rs = ps.executeQuery();
            
            while (rs.next())
            {
                u.setUser_role(rs.getInt("user_role"));
                u.setHovaten(rs.getString("hovaten"));
                return true;
            }
        } catch (Exception ex) 
        {
            if(ps != null )
            {
                ps.close();
            }
            
        } finally
        {   
            ps.close();
            rs.close();
            conn.close();
            
        }
        return false;
    }
    
    
    
    
    //kiem tra dang nhap
    public boolean kiemtra(String username) throws SQLException {
        Connection con = DBConnect.getConnection();
        PreparedStatement ps = con.prepareStatement("select * from thucung.users where user_Name='" + username + "' ");
        ResultSet rs = ps.executeQuery();
        while (rs.next()) {
            return true;
        }
        return false;
    }

    //kiem tra email ton tai chua?
    public boolean kiemtraemail(String email) throws SQLException {
        Connection con = DBConnect.getConnection();
        PreparedStatement ps = con.prepareStatement("select * from thucung.users where user_Email='" + email + "' ");
        ResultSet rs = ps.executeQuery();
        while (rs.next()) {
            return true;
        }
        return false;
    }
}
