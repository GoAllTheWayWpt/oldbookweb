package com.wpt.bean;

import java.util.Date;

public class Book {
   

	private Integer bid;

    private String bookname;

    private Double price;

    private String category;

    private Integer number;

    private String imageUrl;

    private String detailsUrl;

    private Integer uid;
    
 
    private String pubHouse;

 

	public Integer getBid() {
        return bid;
    }

    public void setBid(Integer bid) {
        this.bid = bid;
    }

    public String getBookname() {
        return bookname;
    }

    public void setBookname(String bookname) {
        this.bookname = bookname == null ? null : bookname.trim();
    }

    public Double getPrice() {
        return price;
    }

    public void setPrice(Double price) {
        this.price = price;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category == null ? null : category.trim();
    }

    public Integer getNumber() {
        return number;
    }

    public void setNumber(Integer number) {
        this.number = number;
    }

    public String getImageUrl() {
        return imageUrl;
    }

    public void setImageUrl(String imageUrl) {
        this.imageUrl = imageUrl == null ? null : imageUrl.trim();
    }

    public String getDetailsUrl() {
        return detailsUrl;
    }

    public void setDetailsUrl(String detailsUrl) {
        this.detailsUrl = detailsUrl == null ? null : detailsUrl.trim();
    }

    public Integer getUid() {
        return uid;
    }

    public void setUid(Integer uid) {
        this.uid = uid;
    }

	@Override
	public String toString() {
		return "Book [bid=" + bid + ", bookname=" + bookname + ", price=" + price + ", category=" + category
				+ ", number=" + number + ", imageUrl=" + imageUrl + ", detailsUrl=" + detailsUrl + ", uid=" + uid
				+ ", pubHouse=" + pubHouse + "]";
	}



	public String getPubHouse() {
		return pubHouse;
	}

	public void setPubHouse(String pubHouse) {
		this.pubHouse = pubHouse;
	}
  
   
}