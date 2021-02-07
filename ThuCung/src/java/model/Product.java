
package model;


public class Product{
    private int productID;
    private int categoryproductID;
    private String categoryproductName;
    private String productName;
    private String productImage;
    private double productOldPrice;
    private String productDescription;
    private String productSdt;
    private String productOrigin;
    private String productStock;
    private double productPrice;
    private String productHoten;
    private String productVitri;
    private String productNgaydang;
    private int productStatus;
    
    public Product()
    {
    }

    public int getProductID() {
        return productID;
    }

    public void setProductID(int productID) {
        this.productID = productID;
    }

    public int getCategoryproductID() {
        return categoryproductID;
    }

    public void setCategoryproductID(int categoryproductID) {
        this.categoryproductID = categoryproductID;
    }

    public String getCategoryproductName() {
        return categoryproductName;
    }

    public void setCategoryproductName(String categoryproductName) {
        this.categoryproductName = categoryproductName;
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public String getProductImage() {
        return productImage;
    }

    public void setProductImage(String productImage) {
        this.productImage = productImage;
    }

    public double getProductOldPrice() {
        return productOldPrice;
    }

    public void setProductOldPrice(double productOldPrice) {
        this.productOldPrice = productOldPrice;
    }

    public String getProductDescription() {
        return productDescription;
    }

    public void setProductDescription(String productDescription) {
        this.productDescription = productDescription;
    }

    public String getProductSdt() {
        return productSdt;
    }

    public void setProductSdt(String productSdt) {
        this.productSdt = productSdt;
    }

    public String getProductOrigin() {
        return productOrigin;
    }

    public void setProductOrigin(String productOrigin) {
        this.productOrigin = productOrigin;
    }

    public String getProductStock() {
        return productStock;
    }

    public void setProductStock(String productStock) {
        this.productStock = productStock;
    }

    public double getProductPrice() {
        return productPrice;
    }

    public void setProductPrice(double productPrice) {
        this.productPrice = productPrice;
    }

    public String getProductHoten() {
        return productHoten;
    }

    public void setProductHoten(String productHoten) {
        this.productHoten = productHoten;
    }

    public String getProductVitri() {
        return productVitri;
    }

    public void setProductVitri(String productVitri) {
        this.productVitri = productVitri;
    }

    public String getProductNgaydang() {
        return productNgaydang;
    }

    public void setProductNgaydang(String productNgaydang) {
        this.productNgaydang = productNgaydang;
    }

    public int getProductStatus() {
        return productStatus;
    }

    public void setProductStatus(int productStatus) {
        this.productStatus = productStatus;
    }

    public Product(int productID, int categoryproductID, String categoryproductName, String productName, String productImage, double productOldPrice, String productDescription, String productSdt, String productOrigin, String productStock, double productPrice, String productHoten, String productVitri, String productNgaydang, int productStatus) {
        this.productID = productID;
        this.categoryproductID = categoryproductID;
        this.categoryproductName = categoryproductName;
        this.productName = productName;
        this.productImage = productImage;
        this.productOldPrice = productOldPrice;
        this.productDescription = productDescription;
        this.productSdt = productSdt;
        this.productOrigin = productOrigin;
        this.productStock = productStock;
        this.productPrice = productPrice;
        this.productHoten = productHoten;
        this.productVitri = productVitri;
        this.productNgaydang = productNgaydang;
        this.productStatus = productStatus;
    }

   

    
    
    
}
