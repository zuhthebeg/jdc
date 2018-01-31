package com.jdc.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Component;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.jdc.bean.Member;

public class LoginInterceptor extends HandlerInterceptorAdapter{
	@Override
	public boolean preHandle(HttpServletRequest request,
			HttpServletResponse response, Object handler) throws Exception {
		// TODO Auto-generated method stub
		
		  // session검사
		  HttpSession session = request.getSession();
		  

		   if (session == null) {
		   // 처리를 끝냄 - 컨트롤로 요청이 가지 않음.
		   response.sendRedirect("/jdc/main/home");
		   return false;
		  }
		  
		  Object user = (Member)session.getAttribute("user");
		  if (user == null) { 
			   response.sendRedirect("/jdc/main/home");
		   return false;
		  }
		  return true;
	}
}
