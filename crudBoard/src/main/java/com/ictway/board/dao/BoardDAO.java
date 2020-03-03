package com.ictway.board.dao;

import java.util.List;

import com.ictway.board.model.BoardVO;
import com.ictway.board.model.PagingVO;

public interface BoardDAO {
	
	public void createBoard(BoardVO vo) throws Exception;
	
	public BoardVO readBoard(int bno) throws Exception;
	
	public void updateBoard(BoardVO vo) throws Exception;
	
	public void deleteBoard(int bno) throws Exception;
	
	public List<BoardVO> listBoard() throws Exception;
	
	// 게시물 총 갯수
	public int countBoard();

	// 페이징 처리 게시글 조회
	public List<BoardVO> selectBoard(PagingVO vo);
	

}
