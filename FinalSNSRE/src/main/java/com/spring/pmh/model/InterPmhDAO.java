package com.spring.pmh.model;

import java.util.HashMap;
import java.util.List;

public interface InterPmhDAO {

	List<HashMap<String, String>> getReport(); // DB에서 신고정보를 가져오는 메소드

}
