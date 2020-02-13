package com.ictway.board.services;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.ictway.board.dao.BoardDAO;
import com.ictway.board.model.BoardVO;

@Service
public class BoardServiceImpl implements BoardService{
	
	@Inject
	BoardDAO boardDao;
	
	@Override
	public void createBoard(BoardVO vo) throws Exception {
		// 게시글 글쓰기 
		boardDao.createBoard(vo);
		System.out.println("this is boardDAO");
	}

	@Override
	public BoardVO readBoard(int bno) throws Exception {
		System.out.println("boardDAO~~:  "+bno);
		return boardDao.readBoard(bno);
		
	}

	@Override
	public void updateBoard(BoardVO vo) throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void deleteBoard(int bno) throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<BoardVO> listBoard() throws Exception {
		
		return boardDao.listBoard();
	}

}
