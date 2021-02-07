/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.util.HashMap;
import java.util.Map;

/**
 *
 * @author Hieu
 */
public class CartOpts {
    private HashMap<Integer, ItemOption> cartItems;
    public CartOpts()
    {
        cartItems = new HashMap<>();
    }
    
    public CartOpts(HashMap<Integer, ItemOption> cartItems)
    {
        this.cartItems = cartItems;
    }
    
    public HashMap<Integer, ItemOption> getCartItems()
    {
        return cartItems;
    }
    
    public void plusToCart(Integer Key, ItemOption item)
    {
        if (cartItems.containsKey(Key))
        {
            int quantity_old = item.getQuantity();
            item.setQuantity(quantity_old + 1);
            cartItems.put(Key, item);
        }
        else
        {
            cartItems.put(Key, item);   
        }
    }
    
    public void subToCart(Integer Key,ItemOption item)
    {
        boolean check = cartItems.containsKey(Key);
        if (check)
        {
            int quantity_old = item.getQuantity();
            if(quantity_old <= 1)
            {
                cartItems.remove(Key);
            }
            else
            {
                item.setQuantity(quantity_old -1);
                cartItems.put(Key, item);
            }
        }
        else
        {
            cartItems.put(Key, item);   
        }
    }
    
    public void removeCart(Integer Key)
    {
        boolean check = cartItems.containsKey(Key);
        if(check)
        {
            cartItems.remove(Key);
        }
    }
    
    public int countItem()
    {
        return  cartItems.size();
    }
    //sum total 
    public double totalCart()
    {   
        double count = 0;
        //count  = prce * quantity;
        for(Map.Entry<Integer,ItemOption> list:cartItems.entrySet())
        {
            count += list.getValue().getOption().getOptionPrice()* list.getValue().getQuantity();
        }
        return count;
    }
}
