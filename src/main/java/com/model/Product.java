package com.model;

import lombok.*;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import java.io.Serializable;

/**
 * @author Will
 * @project WebAssignment
 * @date 7/16/2023
 */
@AllArgsConstructor
@Getter
@ToString
@Setter
@Data
@NoArgsConstructor
@Entity
public class Product implements Serializable {
    @Id
    @GeneratedValue
    private int id;
    private String name;
    private double price;
    private String img;
    private String status;

    public Product(String name, double price, String img, String status) {
        this.name = name;
        this.price = price;
        this.img = img;
        this.status = status;
    }
}