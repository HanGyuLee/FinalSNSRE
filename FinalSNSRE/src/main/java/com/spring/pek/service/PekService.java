package com.spring.pek.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.pek.model.BoardDAO;
import com.spring.pek.model.BoardVO;

@Service
public class PekService implements InterPekService {

	@Autowired
	private BoardDAO dao;
	
	@Override
	public List<BoardVO> getBoardList() {
		
		
		List<BoardVO> boardList = dao.getBoardList();
		
		
		return boardList;
	}

}
