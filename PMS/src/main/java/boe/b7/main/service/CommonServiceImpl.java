package boe.b7.main.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import boe.b7.common.CommonUtil;
import boe.b7.main.dao.CommonDao;

@Service
public class CommonServiceImpl implements CommonService {
	private Logger logger = Logger.getLogger(CommonServiceImpl.class.getName());
	@Autowired
	private CommonDao dao;

	@Override
	public ModelAndView login(HttpServletRequest request) throws Exception {
		ModelAndView mav = new ModelAndView();
		String userId = request.getParameter("userId");
		String password = request.getParameter("password");
		System.out.println("userID:" + userId + "  password:" + password);

		password = CommonUtil.encrypt(password);

		List<HashMap<String, Object>> resultMap = new ArrayList<HashMap<String, Object>>();

		resultMap = dao.checkLogIn(userId, password);

		if (resultMap.size() > 0) 
		{
			logger.info("OK");
			mav.addObject("userId", resultMap.get(0).get("USERID"));
			mav.addObject("userName", resultMap.get(0).get("USERNAME"));
			mav.addObject("userGroupName", resultMap.get(0).get("USERGROUPNAME"));
			mav.addObject("email", resultMap.get(0).get("EMAIL"));
			mav.setViewName("../../main_new");
		} else {
			logger.info("NG");
		}

		return mav;
	}
}
