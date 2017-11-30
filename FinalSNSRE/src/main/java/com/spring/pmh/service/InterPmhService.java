package com.spring.pmh.service;

import java.util.HashMap;
import java.util.List;


public interface InterPmhService {

	List<HashMap<String, String>> getReport(); // DB에서 신고 목록을 가지고 오는 메소드

}
