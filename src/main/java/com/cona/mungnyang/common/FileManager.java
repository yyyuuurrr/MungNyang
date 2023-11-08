package com.cona.mungnyang.common;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;

import org.springframework.web.multipart.MultipartFile;

public class FileManager {
	
	public final static String FILE_UPLOAD_PATH = "C:\\Users\\율\\Desktop\\JAVA\\last_project\\upload";
	
	public static String saveFile(int userId, List<MultipartFile> file) {
		
		if(file == null) {
			return null;
		}
		
		
		String directoryName = "/" + userId + "_" + System.currentTimeMillis();
		
		// 디렉토리 생성 (폴더 생성)
		
		String directoryPath = FILE_UPLOAD_PATH + directoryName;
		
		File directory = new File(directoryPath);
		
		if(!directory.mkdir()) {
			// 디렉토리 생성 실패
			return null;
		}
		
		
		// 파일 저장
		String filePath = directoryPath + "/" + ((MultipartFile) file).getOriginalFilename();
		
		try {
			byte[] bytes = ((MultipartFile) file).getBytes();
			
			Path path = Paths.get(filePath);
			Files.write(path, bytes);
			
		} catch (IOException e) {
			
			e.printStackTrace();
			
			// 파일 저장실패 
			return null;
		}
		
		return "/images" + directoryName + "/" + ((MultipartFile) file).getOriginalFilename();	
		
	}
	
	
	public static boolean removeFile(String filePath){
		
		if(filePath == null) {
			return false;
		}
		
		
		// 이미지 파일 경로에서 /images 제거 후
		// upload 경로를 이어 붙여 준다.
		
		String fullFilePath = FILE_UPLOAD_PATH + filePath.replace("/images", "");
		
		Path path = Paths.get(fullFilePath);
		
		// 파일이 존재하는지
		if(Files.exists(path)) {
			
			try {
				Files.delete(path);
			} catch (IOException e) {
				
				e.printStackTrace();
				
				return false;
			}
			
		}
		
		Path dirPath = path.getParent();
		
		// 디렉토리가 존재하는지
		if(Files.exists(dirPath)) {
			
			try {
				Files.delete(dirPath);
			} catch (IOException e) {
			
				e.printStackTrace();
				return false;
			}
		}
				
		return true;
		
	}
		
	
	
	

}
