package com.jdc.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.servlet.ModelAndView;

import com.jdc.bean.Member;
import com.jdc.ctrl.JoinController;
import com.jdc.model.MemberDAO;


@Service
public class JoinImpl extends JoinController{
	@Autowired
	private MemberDAO memberDAO;

	@Override
	public ModelAndView information() throws Exception {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("information");
		return mav;
	}
	

	@Override
	public ModelAndView regist(@ModelAttribute Member user) throws Exception {
		ModelAndView mav = null;
		Member member = memberDAO.getUserByEmail(user.getEmail());
		if(member == null) {
			memberDAO.insertMember(user); 
			
			mav = new ModelAndView("index");
			mav.addObject("user", user);
		}
		else {
			mav = new ModelAndView("information");
			mav.addObject("user", user);
		}
		return mav;
	}
}
