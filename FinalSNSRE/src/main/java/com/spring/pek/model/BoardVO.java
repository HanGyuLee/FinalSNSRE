package com.spring.pek.model;

public class BoardVO {
	
	
	private int seq_tbl_board; 		// 글번호
	private String fk_login_id; 	// 아이디
	private String board_content;	// 내용
	private int board_status;		// 상태
	private String board_time;		// 날짜
	
	public BoardVO() {}
	
	
	public BoardVO(int seq_tbl_board, String fk_login_id, String board_content, int board_status, String board_time) {
		
		this.seq_tbl_board = seq_tbl_board;
		this.fk_login_id = fk_login_id;
		this.board_content = board_content;
		this.board_status = board_status;
		this.board_time = board_time;
	}


	public int getSeq_tbl_board() {
		return seq_tbl_board;
	}


	public void setSeq_tbl_board(int seq_tbl_board) {
		this.seq_tbl_board = seq_tbl_board;
	}


	public String getFk_login_id() {
		return fk_login_id;
	}


	public void setFk_login_id(String fk_login_id) {
		this.fk_login_id = fk_login_id;
	}


	public String getBoard_content() {
		return board_content;
	}


	public void setBoard_content(String board_content) {
		this.board_content = board_content;
	}


	public int getBoard_status() {
		return board_status;
	}


	public void setBoard_status(int board_status) {
		this.board_status = board_status;
	}


	public String getBoard_time() {
		return board_time;
	}


	public void setBoard_time(String board_time) {
		this.board_time = board_time;
	}
	
	
	
	
	

}
