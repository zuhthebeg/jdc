package com.jdc.impl;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.servlet.ModelAndView;

import com.jdc.bean.Answer;
import com.jdc.bean.Board;
import com.jdc.bean.Category;
import com.jdc.bean.Codetype;
import com.jdc.bean.Recommend;
import com.jdc.ctrl.*;
import com.jdc.model.AnswerDao;
import com.jdc.model.MainDao;
import com.jdc.model.MemberDAO;


@Service
public class BoardImpl extends BoardController {
	@Autowired
	private MainDao mainDao;
	@Autowired
	private MainDao boardDao;
	@Autowired
	private MemberDAO memberDao;
	
	@Autowired
	private AnswerDao answerDao;
	
	@Override
	public ModelAndView listAction(@PathVariable Integer category_idx) throws Exception {
		Category category = mainDao.getCategoryByIdx(category_idx);
		ArrayList<Board> articleList = mainDao.getArticleListByCategoryIdx(category_idx);		
		ModelAndView mav = new ModelAndView("list");
		mav.addObject("category", category);
		mav.addObject("articleList", articleList);	
		mav.addObject("category_idx", category_idx);
		return mav;
	}
	
	@Override
	public ModelAndView articleAction(@PathVariable Integer article_idx) throws Exception {
		mainDao.updateArticleCnt(article_idx);
		Board article = mainDao.getArticleByArticleIdx(article_idx);
		ArrayList<Answer> answerList = answerDao.getAnswerListByArticleId(article_idx);
		ModelAndView mav = new ModelAndView("content");
		mav.addObject("article", article);
		mav.addObject("answerList", answerList);
		return mav;
	}
	
	@Override
	public ModelAndView modifyAction(@PathVariable Integer article_idx, HttpServletRequest request) throws Exception {
		Board article = mainDao.getArticleByArticleIdx(article_idx);		
		ModelAndView mav = new ModelAndView("modify");
		mav.addObject("article", article);
		return mav;
	}
	@Override
	public ModelAndView updateAction(@ModelAttribute Board article, HttpServletRequest request) throws Exception {
		mainDao.updateArticle(article);
		
		return new ModelAndView("redirect:home");
	}

	@Override
	public ModelAndView insertAction(@ModelAttribute Board article, HttpServletRequest request)
			throws Exception {
		article.setCode(article.getCode().replace(">","&gt;"));
		article.setCode(article.getCode().replace("<","&lt;"));;
		Integer article_idx = mainDao.insertArticle(article);
		/*MultipartFile file = article.getFile();
		if(!file.isEmpty()){		
			String filename = file.getOriginalFilename();		
			File tempfile =new File(request.getRealPath("/upload"), file.getOriginalFilename());	
			if(tempfile.exists() && tempfile.isFile()){	
				filename =System.currentTimeMillis()  +"_"+ file.getOriginalFilename() ;
				tempfile = new File(request.getRealPath("/upload"),filename);
			}
			file.transferTo(tempfile);	
			article.setFilename(filename);
		}
		
		
		article.setRegip(request.getRemoteAddr());
		article.setRead(0);
		
		int article_idx = mainDao.insertArticle(article);	
		article.setIdx(article_idx);
		return new ModelAndView("redirect:home");	*/
		return new ModelAndView("redirect:article/"+article_idx);
	}
	

	@Override
	public ModelAndView deleteAction(Integer article_idx, HttpServletRequest request) throws Exception {
		mainDao.deleteArticle(article_idx);
/*		Board article = mainDao.getArticle(idx);
		String filename = article.getFilename();
		String uploadFileName = request.getRealPath("/upload") +"/"+ filename;

		File uploadfile = new File (uploadFileName);
		if ( uploadfile.exists()&& uploadfile.isFile() )
		{
			 uploadfile.delete();		
		}
		mainDao.deleteArticle(idx);
		return new ModelAndView("json", "status", "success");*/
		return new ModelAndView("redirect:home");
	}

	@Override
	public ModelAndView writeAction(@PathVariable Integer category_idx) throws Exception {
		ArrayList<Codetype> codetypeList = mainDao.getCodetypeList();
		ModelAndView mav = new ModelAndView("write");
		mav.addObject("codetypeList", codetypeList);	
		mav.addObject("category_idx", category_idx);
		return mav;
	}

	@Override
	public ModelAndView categoryAction(@PathVariable Integer category_idx) throws Exception {
		ArrayList<Category> categoryList = memberDao.getCategoryListByParIdx(category_idx);
		Category category = mainDao.getCategoryByIdx(category_idx);
		
		ModelAndView mav = new ModelAndView("category");
		mav.addObject("categoryList", categoryList);
		mav.addObject("category", category);
		return mav;
	}

	@Override
	public ModelAndView recommendAction(Integer article_idx,
			HttpServletRequest request) throws Exception {
		Recommend rcmd = new Recommend();
		rcmd.setRegip(request.getRemoteAddr());
		rcmd.setTarget_idx(article_idx);
		rcmd.setTarget("article_idx");
		
		Integer cnt = boardDao.getCountRecommendByRegip(rcmd);
		
		String status = "success";
		if(cnt == 0)
			mainDao.recommendAnswer(rcmd);
		else
			status = "fail";
		
		return new ModelAndView("json","status",status);
	}
}
