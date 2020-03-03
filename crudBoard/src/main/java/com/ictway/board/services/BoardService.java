package com.ictway.board.services;

import java.util.List;

import com.ictway.board.model.BoardVO;
import com.ictway.board.model.PagingVO;

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
	// 게시물 총 갯수
	public int countBoard();
	// 페이징 처리 게시글 조회
	public List<BoardVO> selectBoard(PagingVO vo);
	// 조회수 등가 
	public int updateViewcnt(int bno) throws Exception;
}
