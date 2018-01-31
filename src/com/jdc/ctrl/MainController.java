package com.jdc.ctrl;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.jdc.bean.Board;
import com.jdc.bean.Member;
import com.jdc.bean.Product;
import com.jdc.bean.Zipcode;

@Controller	
@RequestMapping("/main")
public abstract class MainController  {
	/**
	 * 메인
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/home")
	public abstract ModelAndView homeAction() throws Exception;
	
	@RequestMapping("/home/{googlecode}")
	public abstract ModelAndView googleSearchAction(@PathVariable String googlecode) throws Exception;
	
	@RequestMapping("/index")
	public abstract ModelAndView indexAction(HttpServletRequest request) throws Exception;

	@RequestMapping("/search")
	public abstract ModelAndView SearchAction(@RequestParam String search_text) throws Exception;

	@RequestMapping("/category/search")
	public abstract ModelAndView categorySearchAction(@RequestParam String search_text) throws Exception;
	
	@RequestMapping("/count")
	public abstract ModelAndView countAction(@RequestParam Integer idx, HttpServletRequest request) throws Exception;
	
	@RequestMapping("/download/{idx}")
	public abstract ModelAndView downloadAction(@PathVariable Integer idx, HttpServletRequest request) throws Exception;

	/**
	 * 로그인
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/login")
	public abstract ModelAndView login(@ModelAttribute Member user, HttpServletRequest request) throws Exception;
	
	/**
	 * 로그아웃
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/logout")
	public abstract ModelAndView logout(HttpServletRequest request) throws Exception;
}


