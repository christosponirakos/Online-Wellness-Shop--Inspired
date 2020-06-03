    package com.mycompany.productinspired.entities;

import java.io.Serializable;
import java.util.Objects;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import org.springframework.transaction.annotation.Transactional;

@Entity
@Transactional
@Table(name = "products", catalog = "wellness", schema = "")
public class Product implements Serializable {

    private static final long serialVersionUID = 1L;
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name= "id")
    private int productId;
    

    private String title;
    

    private double price;
    

    @Column(name = "short_description")
    private String shortDescription;
    

    private String details;
    

    private int duration;
    

    private String category;

   
    public Product() {
    }

    public Product(Integer productId) {
        this.productId = productId;
    }

    public Product(int productId, String title, double price, String shortDescription, String details, int duration, String category) {
        this.productId = productId;
        this.title = title;
        this.price = price;
        this.shortDescription = shortDescription;
        this.details = details;
        this.duration = duration;
        this.category = category;
    }

    public Product(String title, double price, String shortDescription, String details, int duration, String category) {
        this.title = title;
        this.price = price;
        this.shortDescription = shortDescription;
        this.details = details;
        this.duration = duration;
        this.category = category;
        
    }

    public int getProductId() {
        return productId;
    }

    public void setProductId(int productId) {
        this.productId = productId;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public String getShortDescription() {
        return shortDescription;
    }

    public void setShortDescription(String shortDescription) {
        this.shortDescription = shortDescription;
    }

    public String getDetails() {
        return details;
    }

    public void setDetails(String details) {
        this.details = details;
    }

    public int getDuration() {
        return duration;
    }

    public void setDuration(int duration) {
        this.duration = duration;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    @Override
    public int hashCode() {
        int hash = 5;
        hash = 29 * hash + this.productId;
        hash = 29 * hash + Objects.hashCode(this.title);
        hash = 29 * hash + (int) (Double.doubleToLongBits(this.price) ^ (Double.doubleToLongBits(this.price) >>> 32));
        hash = 29 * hash + Objects.hashCode(this.shortDescription);
        hash = 29 * hash + Objects.hashCode(this.details);
        hash = 29 * hash + this.duration;
        hash = 29 * hash + Objects.hashCode(this.category);
        return hash;
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null) {
            return false;
        }
        if (getClass() != obj.getClass()) {
            return false;
        }
        final Product other = (Product) obj;
        if (this.productId != other.productId) {
            return false;
        }
        if (Double.doubleToLongBits(this.price) != Double.doubleToLongBits(other.price)) {
            return false;
        }
        if (this.duration != other.duration) {
            return false;
        }
        if (!Objects.equals(this.title, other.title)) {
            return false;
        }
        if (!Objects.equals(this.shortDescription, other.shortDescription)) {
            return false;
        }
        if (!Objects.equals(this.details, other.details)) {
            return false;
        }
        if (!Objects.equals(this.category, other.category)) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "Product{" + "productId=" + productId + ", title=" + title + ", price=" + price + ", shortDescription=" + shortDescription + ", details=" + details + ", duration=" + duration + ", category=" + category + '}';
    }


    
        
            
}