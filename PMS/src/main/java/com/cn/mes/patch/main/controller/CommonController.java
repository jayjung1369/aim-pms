package com.cn.mes.patch.main.controller;

import java.util.logging.Logger;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.cn.mes.patch.main.service.CommonService;

@Controller
public class CommonController {
	private Logger logger = Logger.getLogger(CommonController.class.getName());
	@Autowired
	private CommonService service;

	@RequestMapping(value = "/main/login.do", method = RequestMethod.POST)
	public ModelAndView login(HttpServletRequest request, HttpServletResponse response) throws Exception {
		logger.info("Controller/LogIn---------");
		ModelAndView mav = new ModelAndView();
		mav.addObject("request", request);
		mav = service.login(request);
		mav.setViewName("../../main_new");

		return mav;
	}
}
