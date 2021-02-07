package controller;

import dao.ProductDAO;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Cart;
import model.Item;
import model.Product;

@WebServlet(name = "CartServlet", urlPatterns = {"/CartServlet"})
public class CartServlet extends HttpServlet
{

    private ProductDAO productDAO = new ProductDAO();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException 
    {
        doPost(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException 
    {
        HttpSession session = request.getSession();
        String productID = request.getParameter("productID");
        String command = request.getParameter("command");
        Cart cart = (Cart) session.getAttribute("cart");
       
        try 
        {
            Integer idProduct = Integer.parseInt(productID);
            Product product =  ProductDAO.getProduct(idProduct);
            
            switch(command)
            {
                case "plus":
                    if(cart.getCartItems().containsKey(cart) )
                    {
                        cart.plusToCart(idProduct, new Item(product,cart.getCartItems().get(idProduct).getQuantity() ));
                    }
                    
                    else
                    {
                        cart.plusToCart(idProduct, new Item(product,1));
                    }
                        break;
                case "remove":
                    cart.removeCart(idProduct);
            }
        } 
        catch (Exception ex) 
        {
            ex.printStackTrace();
        }
        session.setAttribute("cart", cart);
        response.sendRedirect("ThongTinProductDaLuu.jsp");
    }
}
