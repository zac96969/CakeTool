/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package connect;

/**
 *
 * @author Tiến Phát
 */
public class SanPham {
    private int id;
    private String name;
    private String image;
    private double price;
    private String description;

    public SanPham() {}

public SanPham(int id, String name, String image, double price, String description) {
    this.id = id;
    this.name = name;
    this.image = image;
    this.price = price;
    this.description = description;
}

    public int getId() { return id; }
    public String getName() { return name; }
    public String getImage() { return image; }
    public double getPrice() { return price; }
    public String getDescription() { return description; }
}
