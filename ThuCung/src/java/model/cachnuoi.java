/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author Hp
 */
public class cachnuoi {
    
    private int cachnuoi_id;
    private String cachnuoi_title;
    private String cachnuoi_noidung;
    private String cachnuoi_image;

    public cachnuoi(){
        
    }
    
    public int getCachnuoi_id() {
        return cachnuoi_id;
    }

    public void setCachnuoi_id(int cachnuoi_id) {
        this.cachnuoi_id = cachnuoi_id;
    }

    public String getCachnuoi_title() {
        return cachnuoi_title;
    }

    public void setCachnuoi_title(String cachnuoi_title) {
        this.cachnuoi_title = cachnuoi_title;
    }

    public String getCachnuoi_noidung() {
        return cachnuoi_noidung;
    }

    public void setCachnuoi_noidung(String cachnuoi_noidung) {
        this.cachnuoi_noidung = cachnuoi_noidung;
    }

    public String getCachnuoi_image() {
        return cachnuoi_image;
    }

    public void setCachnuoi_image(String cachnuoi_image) {
        this.cachnuoi_image = cachnuoi_image;
    }

    public cachnuoi(int cachnuoi_id, String cachnuoi_title, String cachnuoi_noidung, String cachnuoi_image) {
        this.cachnuoi_id = cachnuoi_id;
        this.cachnuoi_title = cachnuoi_title;
        this.cachnuoi_noidung = cachnuoi_noidung;
        this.cachnuoi_image = cachnuoi_image;
    }
    
    
}
