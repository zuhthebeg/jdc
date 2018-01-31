package com.jdc.lib;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Iterator;

import org.apache.commons.net.ftp.FTP;
import org.apache.commons.net.ftp.FTPClient;
import org.apache.commons.net.ftp.FTPReply;
import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartRequest;


/**
 * CDN 서버 이미지 관리 API
 * @author lejewk
 *
 */
@Component
public class CDNImageApi {
	//이미지 호스트
	private String CDN_Repository = "210.115.58.241/";
	private String ID = "jdc";
	private String PASSWORD = "vjqmfflr0110";
	
	//이미지 저장폴더
	private String TEMPIMAGE_Repository = "tempImage/";
	private String TREEIMAGE_Repository = "treeImage/";
	
	//멀티파트 리퀘스트객체
	private MultipartRequest multipartRequest = null;

	//스트림
	private InputStream isr = null;
	
	private FTPClient ftp = null;
	private File file = null;
	
	//업로드된 파일이름
	private String fileName = null;
	
	public void setMultipartRequest(MultipartRequest multipartRequest){
		this.multipartRequest = multipartRequest;
	}
	
	public String getFileName(){
		return this.fileName;
	}
	
	public String getTempImageUrl(){
		return this.CDN_Repository+this.TEMPIMAGE_Repository+this.getFileName();
	}
	
	/**
	 * 임시 이미지 업로드
	 * @return
	 */
	public boolean tempImageUpload(){
		if(this.multipartRequest == null){
			return false;
		}
		try{
			ftp = new FTPClient();
			ftp.setControlEncoding("utf-8");
			ftp.connect(this.CDN_Repository);
			int reply = ftp.getReplyCode();
			if(!FTPReply.isPositiveCompletion(reply)){
				ftp.disconnect();
				return false;
			}else{
				ftp.login(this.ID, this.PASSWORD);
				ftp.setFileType(FTP.BINARY_FILE_TYPE);
				ftp.setFileTransferMode(FTP.STREAM_TRANSFER_MODE);

				Iterator<String> itr = this.multipartRequest.getFileNames();
				fileName = (String)itr.next();
				file = (File) this.multipartRequest.getFile(fileName);
				isr = new FileInputStream(file);
				
				if(ftp.storeFile(file.getName() , isr)){
					isr.close();
					return true;
				}else{
					isr.close();
					return false;
				}
			}
		}catch(Exception e){
			return false;
		}
	}
}
