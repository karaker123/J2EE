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
public class Option {
    private int optionID;
    private int categoryoptionID;
    private String categoryoptionName;
    private String optionName;
    private String optionImage;
    private double optionOldPrice;
    private String optionDescription;
    private String optionSdt;
    private String optionOrigin;
    private String optionStock;
    private double optionPrice;
    private String optionHoten;
    private String optionVitri;
    private String optionNgaydang;
    private int optionStatus;

    public int getOptionID() {
        return optionID;
    }

    public void setOptionID(int optionID) {
        this.optionID = optionID;
    }

    public int getCategoryoptionID() {
        return categoryoptionID;
    }

    public void setCategoryoptionID(int categoryoptionID) {
        this.categoryoptionID = categoryoptionID;
    }

    public String getCategoryoptionName() {
        return categoryoptionName;
    }

    public void setCategoryoptionName(String categoryoptionName) {
        this.categoryoptionName = categoryoptionName;
    }

    public String getOptionName() {
        return optionName;
    }

    public void setOptionName(String optionName) {
        this.optionName = optionName;
    }

    public String getOptionImage() {
        return optionImage;
    }

    public void setOptionImage(String optionImage) {
        this.optionImage = optionImage;
    }

    public double getOptionOldPrice() {
        return optionOldPrice;
    }

    public void setOptionOldPrice(double optionOldPrice) {
        this.optionOldPrice = optionOldPrice;
    }

    public String getOptionDescription() {
        return optionDescription;
    }

    public void setOptionDescription(String optionDescription) {
        this.optionDescription = optionDescription;
    }

    public String getOptionSdt() {
        return optionSdt;
    }

    public void setOptionSdt(String optionSdt) {
        this.optionSdt = optionSdt;
    }

    public String getOptionOrigin() {
        return optionOrigin;
    }

    public void setOptionOrigin(String optionOrigin) {
        this.optionOrigin = optionOrigin;
    }

    public String getOptionStock() {
        return optionStock;
    }

    public void setOptionStock(String optionStock) {
        this.optionStock = optionStock;
    }

    public double getOptionPrice() {
        return optionPrice;
    }

    public void setOptionPrice(double optionPrice) {
        this.optionPrice = optionPrice;
    }

    public String getOptionHoten() {
        return optionHoten;
    }

    public void setOptionHoten(String optionHoten) {
        this.optionHoten = optionHoten;
    }

    public String getOptionVitri() {
        return optionVitri;
    }

    public void setOptionVitri(String optionVitri) {
        this.optionVitri = optionVitri;
    }

    public String getOptionNgaydang() {
        return optionNgaydang;
    }

    public void setOptionNgaydang(String optionNgaydang) {
        this.optionNgaydang = optionNgaydang;
    }

    public int getOptionStatus() {
        return optionStatus;
    }

    public void setOptionStatus(int optionStatus) {
        this.optionStatus = optionStatus;
    }

    public Option(int optionID, int categoryoptionID, String categoryoptionName, String optionName, String optionImage, double optionOldPrice, String optionDescription, String optionSdt, String optionOrigin, String optionStock, double optionPrice, String optionHoten, String optionVitri, String optionNgaydang, int optionStatus) {
        this.optionID = optionID;
        this.categoryoptionID = categoryoptionID;
        this.categoryoptionName = categoryoptionName;
        this.optionName = optionName;
        this.optionImage = optionImage;
        this.optionOldPrice = optionOldPrice;
        this.optionDescription = optionDescription;
        this.optionSdt = optionSdt;
        this.optionOrigin = optionOrigin;
        this.optionStock = optionStock;
        this.optionPrice = optionPrice;
        this.optionHoten = optionHoten;
        this.optionVitri = optionVitri;
        this.optionNgaydang = optionNgaydang;
        this.optionStatus = optionStatus;
    }

    
    
    public Option(){
        
    }
}
