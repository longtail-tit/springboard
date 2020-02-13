package com.ictway.board.dao;

import java.util.List;

import com.ictway.board.model.BoardVO;

public interface BoardDAO {
	
	public void createBoard(BoardVO vo) throws Exception;
	
	public BoardVO readBoard(int bno) throws Exception;
	
	public void updateBoard(BoardVO vo) throws Exception;
	
	public void deleteBoard(int bno) throws Exception;
	
	public List<BoardVO> listBoard() throws Exception;
	

}
