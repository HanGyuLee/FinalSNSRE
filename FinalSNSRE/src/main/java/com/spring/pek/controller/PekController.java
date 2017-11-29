package com.spring.pek.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class PekController {
	
	
	
	// 인기페이지(글 목록)
	@RequestMapping(value = "/mainBoard.re", method = RequestMethod.GET)
	public String mainBoard() {
		
		
		// 페이징 처리
		
		
		return "";
		
		
	}
	
	// 비로그인 상세페이지(글 1개)
	@RequestMapping(value = "/detailBoard.re", method = RequestMethod.GET)
	public String detailBoard() {
		
		// 모달
		// 로그인 체크
		// 더보기
		
		return "";
		
		
	}
	
	// 글쓰기 요청
	@RequestMapping(value = "/writeBorad.re", method = RequestMethod.GET)
	public String writeBorad() {
		
		// 로그인 체크
		// 비공개 글 여부
		// 첨부파일
		// 글자 제한
		
		return "";
		
		
	}
	
	// 글쓰기 완료
	@RequestMapping(value = "/writeBoardEnd.re", method = RequestMethod.GET)
	public String writeBoardEnd() {
		
		// 로그인 체크
		
		return "";
		
		
	}
	
	// 글삭제 요청
	@RequestMapping(value = "/deleteBoard.re", method = RequestMethod.GET)
	public String deleteBoard() {
		
		// 로그인 체크
		// 본인 글만 지우기
		
		return "";
		
		
	}
	
	// 글삭제 완료
	@RequestMapping(value = "/deleteBoardEnd.re", method = RequestMethod.GET)
	public String deleteBoardEnd() {
		
		// 로그인 체크
		
		return "";
		
		
	}
	
	// 댓글 쓰기
	@RequestMapping(value = "/writeReply.re", method = RequestMethod.GET)
	public String writeReply() {
		
		// 로그인 체크
		// 원 덧글 쓰기 답글 쓰기 구분
		
		return "";
		
		
	}
	
	// 게시글 첨부파일 다운로드 받기
	@RequestMapping(value = "/downloadBoard.re", method = RequestMethod.GET)
	public String downloadBoard() {
		
		return "";
		
		
	}


}
