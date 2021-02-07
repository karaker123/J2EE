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
public class blogthucung {
    
    private int blogthucung_id;
    private String blogthucung_title;
    private String blogthucung_noidung;
    private String blogthucung_image;

    public blogthucung() {
         
    }

    public int getBlogthucung_id() {
        return blogthucung_id;
    }

    public void setBlogthucung_id(int blogthucung_id) {
        this.blogthucung_id = blogthucung_id;
    }

    public String getBlogthucung_title() {
        return blogthucung_title;
    }

    public void setBlogthucung_title(String blogthucung_title) {
        this.blogthucung_title = blogthucung_title;
    }

    public String getBlogthucung_noidung() {
        return blogthucung_noidung;
    }

    public void setBlogthucung_noidung(String blogthucung_noidung) {
        this.blogthucung_noidung = blogthucung_noidung;
    }

    public String getBlogthucung_image() {
        return blogthucung_image;
    }

    public void setBlogthucung_image(String blogthucung_image) {
        this.blogthucung_image = blogthucung_image;
    }

    public blogthucung(int blogthucung_id, String blogthucung_title, String blogthucung_noidung, String blogthucung_image) {
        this.blogthucung_id = blogthucung_id;
        this.blogthucung_title = blogthucung_title;
        this.blogthucung_noidung = blogthucung_noidung;
        this.blogthucung_image = blogthucung_image;
    }
    
    
}
