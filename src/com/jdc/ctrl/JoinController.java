package com.jdc.ctrl;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.jdc.bean.Board;
import com.jdc.bean.Member;

@Controller	
@RequestMapping("/join")
public abstract class JoinController {
	/**
	 * 회원가입 회원정보 입력
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/info")
	public abstract ModelAndView information() throws Exception;
	
	/**
	 * 회원가입 수행
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/regist")
	public abstract ModelAndView regist(@ModelAttribute Member user) throws Exception;
	

}
