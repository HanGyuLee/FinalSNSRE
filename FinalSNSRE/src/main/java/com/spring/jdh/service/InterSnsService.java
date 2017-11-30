package com.spring.jdh.service;

import java.util.HashMap;

import com.spring.jdh.model.LoginVO;

public interface InterSnsService {

	LoginVO getloginMember(String id);

	int loginEnd(HashMap<String, String> map);

	

	

}
