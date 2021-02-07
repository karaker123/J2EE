
package model;

public class Users {
    
    private String hovaten;
    private String userName;
    private String userEmail;
    private String userPass;
    private Long stt;
    private String sdt;
    private String diachi;
    private int user_role;
    private int user_kichhoat;
    private String user_code;
    
    public Users() {
    }

    public Users(String hovaten, String userName, String userEmail, String userPass, String sdt, String diachi, int user_role,int user_kichhoat,String user_code) {
        this.hovaten = hovaten;
        this.userName = userName;
        this.userEmail = userEmail;
        this.userPass = userPass;
        this.sdt = sdt;
        this.diachi = diachi;
        this.user_role = user_role;
        this.user_kichhoat = user_kichhoat;
    }
    
    
    
    public Users(String hovaten, String userName, String userEmail, String userPass, Long stt, String sdt, String diachi, int user_role) {
        this.hovaten = hovaten;
        this.userName = userName;
        this.userEmail = userEmail;
        this.userPass = userPass;
        this.stt = stt;
        this.sdt = sdt;
        this.diachi = diachi;
        this.user_role = user_role;
    }

    public String getHovaten() {
        return hovaten;
    }

    public void setHovaten(String hovaten) {
        this.hovaten = hovaten;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getUserEmail() {
        return userEmail;
    }

    public void setUserEmail(String userEmail) {
        this.userEmail = userEmail;
    }

    public String getUserPass() {
        return userPass;
    }

    public void setUserPass(String userPass) {
        this.userPass = userPass;
    }

    public Long getStt() {
        return stt;
    }

    public void setStt(Long stt) {
        this.stt = stt;
    }

    public String getSdt() {
        return sdt;
    }

    public void setSdt(String sdt) {
        this.sdt = sdt;
    }

    public String getDiachi() {
        return diachi;
    }

    public void setDiachi(String diachi) {
        this.diachi = diachi;
    }

    public int getUser_role() {
        return user_role;
    }

    public void setUser_role(int user_role) {
        this.user_role = user_role;
    }

    public int getUser_kichhoat() {
        return user_kichhoat;
    }

    public void setUser_kichhoat(int user_kichhoat) {
        this.user_kichhoat = user_kichhoat;
    }

    public String getUser_code() {
        return user_code;
    }

    public void setUser_code(String user_code) {
        this.user_code = user_code;
    }
    
    
    
}