package com.jdc.ctrl;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller	
@RequestMapping("/home")
public class HomeController  {
	/**
	 * 메인
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/main")
	public ModelAndView mainAction() throws Exception {

		ModelAndView mav = new ModelAndView("jhome");
		return mav;
	}
	
	/**
	 * 회사소개 상세
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/about")
	public ModelAndView aboutAction() throws Exception {
		ModelAndView mav = new ModelAndView("about");
		return mav;
	}
	
	
	/**
	 * 프로젝트 상세
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/project/solution")
	public ModelAndView solutionAction() throws Exception {
		ModelAndView mav = new ModelAndView("solution");
		return mav;
	}
	@RequestMapping("/project/solution/jms")
	public ModelAndView solutionJmsAction() throws Exception {
		ModelAndView mav = new ModelAndView("jms");
		return mav;
	}
	@RequestMapping("/project/solution/cms")
	public ModelAndView solutionCmsAction() throws Exception {
		ModelAndView mav = new ModelAndView("cms");
		return mav;
	}
	@RequestMapping("/project/solution/vms")
	public ModelAndView solutionVmsAction() throws Exception {
		ModelAndView mav = new ModelAndView("vms");
		return mav;
	}
	
	@RequestMapping("/project/rnd")
	public ModelAndView rndAction() throws Exception {
		ModelAndView mav = new ModelAndView("rnd");
		return mav;
	}
	
	@RequestMapping("/project/maintenance")
	public ModelAndView maintenanceAction() throws Exception {
		ModelAndView mav = new ModelAndView("maintenance");
		return mav;
	}
	
}


