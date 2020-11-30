package com.dbms.web.controller.notice;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

import com.dbms.web.controller.entity.WeaponTrend;
import com.dbms.web.controller.service.ListService;


public class ListController implements Controller{

	private ListService listService;
	
	public void setListService(ListService listService) {
		this.listService = listService;
	}


	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		ModelAndView mv = new ModelAndView("list");
		// set view page to forward the data and shows the result 
		List<WeaponTrend> list = listService.getList();
		// send the model to view page
		mv.addObject("list", list);
	
		return mv;
	}

}
