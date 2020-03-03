package com.ictway.board.services;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.ictway.board.dao.BoardDAO;
import com.ictway.board.model.BoardVO;
import com.ictway.board.model.PagingVO;

@Service
public class BoardServiceImpl implements BoardService{
	
	@Inject
	BoardDAO boardDao;
	
	@Override
	public void createBoard(BoardVO vo) throws Exception {
		// 게시글 글쓰기 
		boardDao.createBoard(vo);
		System.out.println("돌아왔노..");
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
		boardDao.updateBoard(vo);
	}

	@Override
	public void deleteBoard(int bno) throws Exception {
		// TODO Auto-generated method stub
		boardDao.deleteBoard(bno);
		
	}

	@Override
	public List<BoardVO> listBoard() throws Exception {
		
		return boardDao.listBoard();
	}

	@Override
	public int countBoard() {
		
		return boardDao.countBoard();
	}

	@Override
	public List<BoardVO> selectBoard(PagingVO vo) {
		
		return boardDao.selectBoard(vo);
	}

	@Override
	public int updateViewcnt(int bno) throws Exception {
		System.out.println("조회수 증가한다 ~~?");
		return boardDao.updateViewcnt(bno);
	}


}
