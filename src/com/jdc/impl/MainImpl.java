package com.jdc.impl;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.servlet.ModelAndView;

import com.jdc.bean.Board;
import com.jdc.bean.Category;
import com.jdc.bean.Member;
import com.jdc.ctrl.*;
import com.jdc.model.MainDao;
import com.jdc.model.MemberDAO;


@Service
public class MainImpl extends MainController {
	@Autowired
	private MainDao mainDao;
	@Autowired
	private MemberDAO memberDAO;
	
	@Override
	public ModelAndView homeAction() throws Exception {

		ArrayList<Category> categoryList = memberDAO.getCategoryListByParIdx(0);
		
		ModelAndView mav = new ModelAndView("home");
		mav.addObject("categoryList", categoryList);
		return mav;
	}
	
	@Override
	public ModelAndView countAction(Integer idx, HttpServletRequest request) throws Exception {
/*		Board article =mainDao.getArticle(idx);		
		String regip = request.getRemoteAddr();	

		if(!regip.equals(article.getRegip())){			
			int count = article.getRead();				
			article.setRead(++count);					
			mainDao.setArticleCount(article);	
		}
		return new ModelAndView("redirect:content","idx", idx);*/
		return null;
	}

	@Override
	public ModelAndView downloadAction(@PathVariable Integer idx, HttpServletRequest request)
			throws Exception {
/*		Board article = mainDao.getArticle(idx);
		String filename = article.getFilename();
		
		String uploadFileName = request.getRealPath("/upload") +"/"+ filename;
		
		File downFile = new File(uploadFileName);
		return new ModelAndView("downloadView", "file", downFile);*/
		return null;
	}
	
	@Override
	public ModelAndView login(@ModelAttribute Member user, HttpServletRequest request) throws Exception {
		
		ModelAndView mav = new ModelAndView("redirect:home");
		Member object = memberDAO.getUser(user);
		if(object != null){
			HttpSession session = request.getSession();
			object.setPasswd("");
			session.setAttribute("user", object);
		}
		return mav;
	}
	
	@Override
	public ModelAndView logout(HttpServletRequest request) throws Exception {
		HttpSession session = request.getSession();
		session.removeAttribute("user");
		session.invalidate();
		return new ModelAndView("redirect:home");
	}
	@Override
	public ModelAndView indexAction(HttpServletRequest request) throws Exception {
		ModelAndView mav = new ModelAndView("index");
		
		HttpSession session = request.getSession();
		Member object = (Member)session.getAttribute("user");
		if(object != null){
			ArrayList<Board> articleLIst = mainDao.getArticleListByUserIdx(object.getUser_idx());
			mav.addObject("myQuestionList", articleLIst);
		}else if (object == null){
			ArrayList<Board> articleLIst = mainDao.getRecentArticleList();
			mav.addObject("newQuestionList", articleLIst);
		}
		
		return mav;
	}

	@Override
	public ModelAndView SearchAction(String search_text) throws Exception {
		ArrayList<Board> questionList = mainDao.searchQuestionCodeByText(search_text);
		
		ArrayList<Board> answerList = mainDao.searchQuestionCodeByText(search_text);


		ModelAndView mav = new ModelAndView("searchList");
		mav.addObject("questionList", questionList);
		mav.addObject("answerList", answerList);
		return mav;
	}

	@Override
	public ModelAndView categorySearchAction(String search_text)
			throws Exception {
		ArrayList<Category> categoryList = memberDAO.searchCategoryListByText(search_text);

		ModelAndView mav = new ModelAndView("category");
		mav.addObject("categoryList", categoryList);
		return mav;
	}

	@Override
	public ModelAndView googleSearchAction(String googlecode) throws Exception {
		
		ModelAndView mav = new ModelAndView("googlecode");
		return mav;
	}

}
