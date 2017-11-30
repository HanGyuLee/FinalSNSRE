package com.spring.jdh.service;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.jdh.model.InterSnsDAO;
import com.spring.jdh.model.LoginVO;


@Service
public class SnsService implements InterSnsService {
	
	
	// ==== #31. 의존객체 주입하기(DI : Dependency Injection)====
		@Autowired
		private InterSnsDAO dao;

		@Override
		public LoginVO getloginMember(String id) {
			LoginVO loginvo = dao.getLoinMember(id);
			return loginvo;
		}

		@Override
		public int loginEnd(HashMap<String, String> map) {
			
			int n = dao.loginEnd(map);
			
			return n;
			
		}
	


	

}
