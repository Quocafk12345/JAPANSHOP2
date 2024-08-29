package com.general.stores.entity;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Positive;
import javax.validation.constraints.Size;

@Entity
@Table(name = "product")
public class Product {

	@Id @GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id", nullable = false, unique = true)
	private Long id;
	
	@Size(min = 3, max = 5)
	@Column(name = "code", nullable = false, unique = true)
	private String code;
	
	@NotNull(message = "Tên sản phẩm là bắt buộc.")
	@Size(min = 2, max = 50, message = "Tên sản phẩm phải từ 2 đến 50 ký tự.")
	@Column(name = "name", nullable = false)
	private String name;
	
	@NotNull(message = "Mô tả sản phẩm là bắt buộc.")
	@Size(min = 2, max = 1000, message = "Mô tả sản phẩm phải từ 2 đến 1000 ký tự.")
	@Column(name = "description", nullable = false)
	private String description;	
	
	@Positive(message="Gía MRP phải là số dương.")
	@Column(name = "mrp_price", nullable = false, precision = 10, scale = 2)
    private double mrpPrice;
	
	@Positive(message="Gía phải là số dương.")
	//@Size(min = 2, max = 10)
	@Column(name = "price", nullable = false, precision = 10, scale = 2)
    private double price;
	
    @Column(name = "Image", length = 10, nullable = true)
    private String image;
    
	@Column(name = "active", nullable = false)
	private Boolean active;
	
    @Temporal(TemporalType.TIMESTAMP)
    @Column(name = "create_date", nullable = false)
    private Date createDate;

	public Product() {}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}
	
	public double getMrpPrice() {
		return mrpPrice;
	}

	public void setMrpPrice(double mrpPrice) {
		this.mrpPrice = mrpPrice;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public Boolean getActive() {
		return active;
	}

	public void setActive(Boolean active) {
		this.active = active;
	}

	public Date getCreateDate() {
		return createDate;
	}

	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}

	@Override
	public String toString() {
		return "Product [id=" + id + ", code=" + code + ", name=" + name + ", description=" + description
				+ ", mrpPrice=" + mrpPrice + ", price=" + price + ", image=" + image + ", active=" + active
				+ ", createDate=" + createDate + "]";
	}
   
}