package com.spring.pek.model;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;

public class BoardDAOImpl implements BoardDAO {

	@Autowired
	private SqlSessionTemplate sqlsession;
	
	@Override
	public List<BoardVO> getBoardList() {
		
		/*List<BoardVO> boardList = sqlsession.selectList("pekresns.getBoardList");*/
		
		return null;
	}

}
