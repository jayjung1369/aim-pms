package com.cn.mes.patch.main.service;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.servlet.ModelAndView;

public interface CommonService {

	public ModelAndView login(HttpServletRequest mav) throws Exception;

}
