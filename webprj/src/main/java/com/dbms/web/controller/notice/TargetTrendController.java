package com.dbms.web.controller.notice;
//QUERY 4
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;


import com.dbms.web.controller.entity.TargetTrend;
import com.dbms.web.controller.service.TargetTrendService;


public class TargetTrendController implements Controller {
	
	// I changed the first letter to the lowercase
	private TargetTrendService targetTrendService;
	
    
	public void setTargetTrendService(TargetTrendService targetTrendService) {
		this.targetTrendService = targetTrendService;
	}


	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		//which jsp file you want to send this data
		ModelAndView mv = new ModelAndView("targettrend");
		
		List<TargetTrend> TargetTrend = targetTrendService.getList();
		List<String> targetlist = targetTrendService.getListTarget();
		
		// "~~" this name will be used in JSP filt to get the list
		mv.addObject("TargetTrendList", TargetTrend);
		mv.addObject("TargetList", targetlist);
		return mv;
	}
}
