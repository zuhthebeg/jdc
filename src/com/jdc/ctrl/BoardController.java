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
@RequestMapping("/board")
public abstract class BoardController  {

	@RequestMapping("/{category_idx}")	
	public abstract ModelAndView listAction(@PathVariable Integer category_idx) throws Exception;
	
	@RequestMapping("/article/{article_idx}")	
	public abstract ModelAndView articleAction(@PathVariable Integer article_idx) throws Exception;
	
	@RequestMapping("/modify/{article_idx}")	
	public abstract ModelAndView modifyAction(@PathVariable Integer article_idx, HttpServletRequest request) throws Exception;
	
	@RequestMapping("/update")	
	public abstract ModelAndView updateAction(@ModelAttribute Board article, HttpServletRequest request) throws Exception;

	@RequestMapping( "/insert")
	public abstract ModelAndView insertAction(@ModelAttribute Board article, HttpServletRequest request) throws Exception;
	
	@RequestMapping( "/delete/{article_idx}")
	public abstract ModelAndView deleteAction(@PathVariable Integer article_idx, HttpServletRequest request) throws Exception;
	
	@RequestMapping("/write/{category_idx}")
	public abstract ModelAndView writeAction(@PathVariable Integer category_idx) throws Exception;
	
	@RequestMapping("/category/{category_idx}")
	public abstract ModelAndView categoryAction(@PathVariable Integer category_idx) throws Exception;

	@RequestMapping("/recommend")	
	public abstract ModelAndView recommendAction(@RequestParam Integer article_idx, HttpServletRequest request) throws Exception;
	
}


