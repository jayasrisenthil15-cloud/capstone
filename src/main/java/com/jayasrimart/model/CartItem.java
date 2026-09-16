package com.jayasrimart.model;

public class CartItem {
    private int id;
    private int userId;
    private int productId;
    private int quantity;
    
    // UI-இல் காட்ட கூடுதல் விவரங்கள்
    private String productName;
    private double price;

    public CartItem() {}

    public int getId() { return id; }
    public void setId(int id) { this.id = id; }

    public int getUserId() { return userId; }
    public void setUserId(int userId) { this.userId = userId; }

    public int getProductId() { return productId; }
    public void setProductId(int productId) { this.productId = productId; }

    public int getQuantity() { return quantity; }
    public void setQuantity(int quantity) { this.quantity = quantity; }

    public String getProductName() { return productName; }
    public void setProductName(String productName) { this.productName = productName; }

    public double getPrice() { return price; }
    public void setPrice(double price) { this.price = price; }
}
