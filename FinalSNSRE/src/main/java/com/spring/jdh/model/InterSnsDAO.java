package com.spring.jdh.model;

import java.util.HashMap;

public interface InterSnsDAO {
	
	// model단 DAO 인터페이스

	LoginVO getLoinMember(String id);

	int loginEnd(HashMap<String, String> map);
	
	

	

	
	
	

}
