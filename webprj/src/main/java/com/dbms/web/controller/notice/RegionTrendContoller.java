package com.dbms.web.controller.notice;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;


import com.dbms.web.controller.entity.RegionTrend;
import com.dbms.web.controller.service.RegionTrendService;

public class RegionTrendContoller implements Controller {
	
	// I changed the first letter to the lowercase
	private RegionTrendService regionTrendService;

	public void setRegionTrendService(RegionTrendService regionTrendService) {
		this.regionTrendService = regionTrendService;
	}



	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		//which jsp file you want to send this data
		ModelAndView mv = new ModelAndView("regiontrend");
		
		List<RegionTrend> RegionTrend = regionTrendService.getList();
		
		// "~~" this name will be used in JSP filt to get the list
		mv.addObject("region", RegionTrend);
		return mv;
	}
}
