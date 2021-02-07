/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;
import dao.OptionDAO;
import java.io.IOException;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.CartOpts;
import model.ItemOption;
import model.Option;

/**
 *
 * @author Hieu
 */
@WebServlet(name = "CartOption", urlPatterns = { "/CartOption" })
public class CartOption extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doPost(request, response);
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException 
    {
        HttpSession session = request.getSession();
        String optionID = request.getParameter("optionID");
        String command = request.getParameter("command");
        CartOpts cart = (CartOpts) session.getAttribute("cartOption");
        
       
        try 
        {
            Integer idOption = Integer.parseInt(optionID);
            Option option =  OptionDAO.getOption(idOption);
            
            switch(command)
            {
                case "plus":
                    if(cart.getCartItems().containsKey(cart) )
                    {
                        cart.plusToCart(idOption, new ItemOption(option,cart.getCartItems().get(idOption).getQuantity() ));
                    }
                    
                    else
                    {
                        cart.plusToCart(idOption, new ItemOption(option,1));
                    }
                        break;
                case "remove":
                    cart.removeCart(idOption);
            }
        } 
        catch (NumberFormatException | SQLException ex) 
        {
            ex.printStackTrace();
        }
        session.setAttribute("cartOption", cart);
        response.sendRedirect("ThongTinProductDaLuu.jsp");
    }
}
