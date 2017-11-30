package com.spring.jdh.model;

import java.util.HashMap;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;



@Repository
public class SnsDAO implements InterSnsDAO {
	
	// DAO 선언
	
	// ==== #29. 의존객체 주입하기(DI : Dependency Injection)====
		@Autowired
		private SqlSessionTemplate sqlsession;

		@Override
		public LoginVO getLoinMember(String id) {
			
			LoginVO loginvo = sqlsession.selectOne("jdhresns.getLoginMember", id);
			return loginvo;
		}

		@Override
		public int loginEnd(HashMap<String, String> map) {
			
			int n = sqlsession.selectOne("jdhresns.loginEnd", map);
			return n;
		}

	

}
