package com.ictway.board.services;

import java.util.List;

import com.ictway.board.model.BoardVO;

public interface BoardService {
	
	//1. 게시글 작성 
	public void createBoard(BoardVO vo) throws Exception;
	//2. 게시글 상세보기 
	public BoardVO readBoard(int bno) throws Exception;
	//3. 게시글 수정
	public void updateBoard(BoardVO vo) throws Exception;
	//4. 게시글 삭제
	public void deleteBoard(int bno) throws Exception;
	//5. 게시글 전체 목록
	public List<BoardVO> listBoard() throws Exception;
	

}
