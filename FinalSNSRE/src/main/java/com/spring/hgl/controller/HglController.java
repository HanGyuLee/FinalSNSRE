package com.spring.hgl.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;

import com.spring.hgl.service.InterHglService;

@Controller
@Component

public class HglController {
	@Autowired
	private InterHglService service;
	
	
}// end of HglController
