
package model;


public class PostMua {
    private String ten;
    private String sdt;
    private String tieude;
    private String noidung;
    private int stt;
    
    public PostMua() {
    }

    public PostMua(String ten, String sdt, String tieude, String noidung, int stt) {
        this.ten = ten;
        this.sdt = sdt;
        this.tieude = tieude;
        this.noidung = noidung;
        this.stt = stt;
    }

    public int getStt() {
        return stt;
    }

    public void setStt(int stt) {
        this.stt = stt;
    }

    

   
    public String getTen() {
        return ten;
    }

    public void setTen(String ten) {
        this.ten = ten;
    }

    public String getSdt() {
        return sdt;
    }

    public void setSdt(String sdt) {
        this.sdt = sdt;
    }

    public String getTieude() {
        return tieude;
    }

    public void setTieude(String tieude) {
        this.tieude = tieude;
    }

    public String getNoidung() {
        return noidung;
    }

    public void setNoidung(String noidung) {
        this.noidung = noidung;
    }

}
