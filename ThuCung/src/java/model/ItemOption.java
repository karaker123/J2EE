/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author Hieu
 */
public class ItemOption {
    private Option option;
    private int quantity;
    
    public ItemOption() {
        
    }
    
    public ItemOption(Option option, int quantity) {
        this.option = option;
        this.quantity = quantity;
    }
    
    public Option getOption() {
        return option;
    }
    
    public void setOption(Option option) {
        this.option = option;
    }
    
    public int getQuantity() {
        return this.quantity;
    }
    
    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }
}
