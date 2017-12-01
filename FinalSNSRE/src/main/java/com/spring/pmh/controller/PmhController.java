package com.spring.pmh.controller;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.spring.pmh.service.InterPmhService;

@Controller
@Component
public class PmhController {

	@Autowired
	private InterPmhService service;
	
	@RequestMapping(value="/report.re", method={RequestMethod.GET})
	public String reportMain(HttpServletRequest req) {
		
		List<HashMap<String, String>> rvoList = service.getReport();
		
		req.setAttribute("rvoList", rvoList);
		
		return "pmh/reportMain.tiles2";
	}
	
}
