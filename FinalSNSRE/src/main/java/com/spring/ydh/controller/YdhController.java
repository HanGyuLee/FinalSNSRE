package com.spring.ydh.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.spring.ydh.service.InterSearchService;


@Component
@Controller
public class YdhController {
	
	@Autowired
	private  InterSearchService service;
	
	// ====  =====
		@RequestMapping(value="/index.re", method={RequestMethod.GET})
		public String index(){
			
			
			return "";
		}//index.re

}
