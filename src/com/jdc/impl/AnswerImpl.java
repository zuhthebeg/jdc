package com.jdc.impl;

import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMessage.RecipientType;


import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.servlet.ModelAndView;

import com.jdc.bean.Answer;
import com.jdc.bean.Board;
import com.jdc.bean.Recommend;
import com.jdc.ctrl.AnswerController;
import com.jdc.model.AnswerDao;
import com.jdc.model.MainDao;

@Service
public class AnswerImpl extends AnswerController {
	
	@Autowired
	private AnswerDao answerDao;
	@Autowired
	private MainDao boardDao;
	@Autowired
	private MainDao mainDao;
	@Autowired
	protected JavaMailSender  mailSender;
	
	@Override
	public ModelAndView answerAction(@PathVariable Integer answer_idx) throws Exception {
		Answer answer = answerDao.getAnswerByAnswerId(answer_idx);
		ModelAndView mav = new ModelAndView("content");
		mav.addObject("answer", answer);
		return null;
	}
	
	@Override
	public ModelAndView registAction(@PathVariable Integer article_idx,		HttpServletRequest request) throws Exception {
		Board article = boardDao.getArticleByArticleIdx(article_idx);
		return new ModelAndView("regist","article",article);
	}

	@Override
	public ModelAndView insertAction(@ModelAttribute Answer answer,	HttpServletRequest request) throws Exception {
		answer.setDebug_code(answer.getDebug_code().replace(">","&gt;"));
		answer.setDebug_code(answer.getDebug_code().replace("<","&lt;"));
		answerDao.insertAnswer(answer);
		
		String writer_email = answerDao.getWriterEmailByArticleIdx(answer.getArticle_idx());
		MimeMessage msg = mailSender.createMimeMessage();
		msg.setSubject("답변이 등록되었습니다!");
		StringBuffer sb = new StringBuffer();
		sb.append("<a href='http://dibi2.kangwon.ac.kr/JDC/board/article/"+answer.getArticle_idx()+"' /> 확인하러가기 </a><br/>");
		sb.append("<a href='http://www.jcreative.co.kr/' /> - jcreative - </a><br/>");
		msg.setContent(sb.toString(), "text/html; charset=utf-8");
		msg.setRecipient(RecipientType.TO , new InternetAddress(writer_email));
	    
	     mailSender.send(msg);  
	     
		return new ModelAndView("redirect:/board/article/"+answer.getArticle_idx());
	}

	@Override
	public ModelAndView updateAction(@ModelAttribute Answer answer, HttpServletRequest request) throws Exception {
		answerDao.updateAnswer(answer);
		return new ModelAndView("redirect:home");
	}

	@Override
	public ModelAndView deleteAction(@PathVariable Integer answer_idx, HttpServletRequest request) throws Exception {
		answerDao.deleteAnswer(answer_idx);
		return new ModelAndView("redirect:home");
	}

	@Override
	public ModelAndView recommendAction(Integer answer_idx,
			HttpServletRequest request) throws Exception {
		Recommend rcmd = new Recommend();
		rcmd.setRegip(request.getRemoteAddr());
		rcmd.setTarget_idx(answer_idx);
		rcmd.setTarget("answer_idx");
		
		Integer cnt = boardDao.getCountRecommendByRegip(rcmd);
		
		String status = "success";
		if(cnt == 0)
			mainDao.recommendAnswer(rcmd);
		else
			status = "fail";
		
		return new ModelAndView("json","status",status);
	}

	@Override
	public ModelAndView choiceAction( Answer answer) throws Exception {
		answerDao.choiceAnswer(answer);
		return new ModelAndView("json","status","success");
	}

}
