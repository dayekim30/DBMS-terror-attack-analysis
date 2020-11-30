package com.dbms.web.controller.notice;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

import com.dbms.web.controller.entity.Weapont;
import com.dbms.web.controller.service.WeaponService;



public class DetailController implements Controller{
	
	private WeaponService weaponService;
	

	public void setWeaponService(WeaponService weaponService) {
		this.weaponService = weaponService;
	}


	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		ModelAndView mv = new ModelAndView("detail");
		
		List<Weapont> wplist = weaponService.getList();
		mv.addObject("wplist", wplist);
		return mv;
	}

}
