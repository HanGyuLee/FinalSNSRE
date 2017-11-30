package com.spring.pek.model;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class BoardDAOImpl implements BoardDAO {

	@Autowired
	private SqlSessionTemplate sqlsession;
	
	@Override
	public List<BoardVO> getBoardList() {
		
		List<BoardVO> boardList = sqlsession.selectList("pekresns.getBoardList");
		
		return boardList;
	}

}
