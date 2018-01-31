package com.jdc.ctrl;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.jdc.bean.Answer;

@Controller	
@RequestMapping("/answer")
public abstract class AnswerController  {
	
	@RequestMapping("/{answer_idx}")	
	public abstract ModelAndView answerAction(@PathVariable Integer answer_idx) throws Exception;
	
	@RequestMapping("/regist/{article_idx}")	 
	public abstract ModelAndView registAction(@PathVariable Integer article_idx, HttpServletRequest request) throws Exception;
	
	@RequestMapping("/insert")	
	public abstract ModelAndView insertAction(@ModelAttribute Answer answer, HttpServletRequest request) throws Exception;
	
	@RequestMapping("/update")	
	public abstract ModelAndView updateAction(@ModelAttribute Answer answer, HttpServletRequest request) throws Exception;
	
	@RequestMapping( "/delete/{answer_idx}")
	public abstract ModelAndView deleteAction(@PathVariable Integer answer_idx, HttpServletRequest request) throws Exception;

	@RequestMapping("/recommend")	
	public abstract ModelAndView recommendAction(@RequestParam Integer answer_idx, HttpServletRequest request) throws Exception;
	
	@RequestMapping("/choice")	
	public abstract ModelAndView choiceAction(@ModelAttribute Answer answer) throws Exception;
	
//	@RequestMapping("/{category_idx}")	
//	public abstract ModelAndView listAction(@PathVariable Integer category_idx) throws Exception;
//	
//	@RequestMapping("/article/{article_idx}")	
//	public abstract ModelAndView articleAction(@PathVariable Integer article_idx) throws Exception;
//	
//	@RequestMapping("/modify/{article_idx}")	
//	public abstract ModelAndView modifyAction(@PathVariable Integer article_idx, HttpServletRequest request) throws Exception;
//	
//	@RequestMapping("/update")	
//	public abstract ModelAndView updateAction(@ModelAttribute Board article, HttpServletRequest request) throws Exception;
//
//	@RequestMapping( "/insert")
//	public abstract ModelAndView insertAction(@ModelAttribute Board article, HttpServletRequest request) throws Exception;
//	
//	@RequestMapping( "/delete/{article_idx}")
//	public abstract ModelAndView deleteAction(@PathVariable Integer article_idx, HttpServletRequest request) throws Exception;
//	
//	@RequestMapping("/write/{category_idx}")
//	public abstract ModelAndView writeAction(@PathVariable Integer category_idx) throws Exception;
//	
//	@RequestMapping("/category/{category_idx}")
//	public abstract ModelAndView categoryAction(@PathVariable Integer category_idx) throws Exception;

}


