package com.dbms.web.controller.notice;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;


import com.dbms.web.controller.entity.TerroristTrend;
import com.dbms.web.controller.service.TerroristTrendService;

public class TerroristTrendController implements Controller  {
	// I changed the first letter to the lowercase
		private TerroristTrendService terroristTrendService;
		
	    
		public void setTerroristTrendService(TerroristTrendService terroristTrendService) {
			this.terroristTrendService = terroristTrendService;
		}


		@Override
		public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
			// TODO Auto-generated method stub
			//which jsp file you want to send this data
			ModelAndView mv = new ModelAndView("terroristtrend");
			
			List<TerroristTrend> TerroristTrend = terroristTrendService.getList();
			
			// "~~" this name will be used in JSP filt to get the list
			mv.addObject("TerroristTrendList", TerroristTrend);
			return mv;
		}
}
