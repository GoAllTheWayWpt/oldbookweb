package com.wpt.bean;

import java.util.Date;

public class Book {
   

	private Integer bid;

    private String bookname;

    private Double price;

    private String category;

    private Integer number;

    private String imageUrl;
    private String imageUrl_1;
    private String imageUrl_2;

    private String detailsUrl;

    private Integer uid;
    
    
    private String pubHouse;
    private String pubTime;
    private String author;

 

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

	


	public String getPubHouse() {
		return pubHouse;
	}

	public void setPubHouse(String pubHouse) {
		this.pubHouse = pubHouse;
	}

	public String getImageUrl_1() {
		return imageUrl_1;
	}

	public void setImageUrl_1(String imageUrl_1) {
		this.imageUrl_1 = imageUrl_1;
	}

	public String getImageUrl_2() {
		return imageUrl_2;
	}

	public void setImageUrl_2(String imageUrl_2) {
		this.imageUrl_2 = imageUrl_2;
	}

	

	public String getAuthor() {
		return author;
	}

	public void setAuthor(String author) {
		this.author = author;
	}

	public String getPubTime() {
		return pubTime;
	}

	public void setPubTime(String pubTime) {
		this.pubTime = pubTime;
	}

	@Override
	public String toString() {
		return "Book [bid=" + bid + ", bookname=" + bookname + ", price=" + price + ", category=" + category
				+ ", number=" + number + ", imageUrl=" + imageUrl + ", imageUrl_1=" + imageUrl_1 + ", imageUrl_2="
				+ imageUrl_2 + ", detailsUrl=" + detailsUrl + ", uid=" + uid + ", pubHouse=" + pubHouse + ", pubTime="
				+ pubTime + ", author=" + author + "]";
	}
  
   
}