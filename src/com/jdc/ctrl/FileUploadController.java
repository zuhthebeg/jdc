package com.jdc.ctrl;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartRequest;
import org.springframework.web.servlet.ModelAndView;

import com.jdc.bean.Product;

@Controller	
@RequestMapping("/file")
public abstract class FileUploadController {
	/**
	 * 파일 업로드 컨트롤러
	 * @return
	 * @throws Exception
	 */
	
	
	@RequestMapping("/upload")
	public abstract ModelAndView pictureUploadAction(MultipartRequest multi, HttpServletRequest request) throws Exception;

	/**
	 * 임시 이미지 업로드 컨트롤러
	 * @param product_idx
	 * @param request
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/tempImageUpload")
	public abstract ModelAndView tempImageUpload(MultipartRequest multi, HttpServletRequest request) throws Exception;
}