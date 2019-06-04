package com.wpt.utils;

import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * 日期转换的工具类
 * @author Administrator
 *
 */
public class DateUtils {
	
	private static SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
	private String nowDate;
	
	public DateUtils(Date date) {
		setNowDate(sdf.format(date));
	}
	public static String format(Date date){
		return sdf.format(date);
	}
	public String getNowDate() {
		return nowDate;
	}
	public void setNowDate(String nowDate) {
		this.nowDate = nowDate;
	}

}
