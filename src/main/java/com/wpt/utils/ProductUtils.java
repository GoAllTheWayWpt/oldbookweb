package com.wpt.utils;

import java.util.Set;

import com.wpt.bean.Book;



public class ProductUtils {
	public static Book findProduct(Set<Book> set,String id) {
		for(Book b : set) {
			if(b.getBid().equals(id)) {
				return b;
			}
		}
		return null;
	}

}
