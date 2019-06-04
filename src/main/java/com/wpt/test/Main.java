package com.wpt.test;

import java.util.Date;

import com.wpt.utils.DateUtils;

public class Main {	
	public static void main(String args[] ) {
		DateUtils dateUtils = new DateUtils(new Date());
		System.out.println(dateUtils.getNowDate());
	}
}
