/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package connect;

/**
 *
 * @author Tiến Phát
 */

public class Item {
    private SanPham product;
    private int quantity;

    public Item() {}

    public Item(SanPham product, int quantity) {
        this.product = product;
        this.quantity = quantity;
    }

    public SanPham getProduct() { return product; }
    public void setProduct(SanPham product) { this.product = product; }

    public int getQuantity() { return quantity; }
    public void setQuantity(int quantity) { this.quantity = quantity; }
}
