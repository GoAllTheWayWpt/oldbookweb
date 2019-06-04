package com.wpt.utils;

import java.io.File;
import java.io.IOException;

import org.springframework.web.multipart.MultipartFile;

public class UploadUtils {

	public static String upload(MultipartFile file) {
		// 访问位置
		String fwPath = "/upload/";
		String filename = null;

		try {
			// 定义上传的位置
			String path = "E:\\project\\book\\upload\\";
			File filePath = new File(path);
			if (!filePath.exists()) {
				filePath.mkdir();
			}
			// 获取上传文件的真实名称
			filename = file.getOriginalFilename();
			// 获取上传文件的后缀名
			filename = filename.substring(filename.lastIndexOf('.'));
			// 上传文件新的名称
			filename = UUIDUtils.getUUID() + filename;
			path = path + filename;
			file.transferTo(new File(path));
		} catch (IllegalStateException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}	
		return fwPath + filename;
	}
}
