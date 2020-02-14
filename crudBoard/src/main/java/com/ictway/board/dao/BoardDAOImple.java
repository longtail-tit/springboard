package com.ictway.board.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.ictway.board.model.BoardVO;

@Repository //현재 클래스를 dao bean 으로 등록 
public class BoardDAOImple implements BoardDAO{
	
	@Inject
	SqlSession sqlsession;

	@Override
	public void createBoard(BoardVO vo) throws Exception {
		
		sqlsession.insert("board.insert", vo);
	}

	@Override
	public BoardVO readBoard(int bno) throws Exception {
		System.out.println("DAOIMPLE~!!: "+bno);
		return sqlsession.selectOne("board.view", bno);
	}

	@Override
	public void updateBoard(BoardVO vo) throws Exception {
		System.out.println("updateAOIMPL~!!");
		sqlsession.update("board.updateBoard",vo);
	}

	@Override
	public void deleteBoard(int bno) throws Exception {
		sqlsession.delete("board.deleteArticle",bno);
	}

	@Override
	public List<BoardVO> listBoard() throws Exception {
		return sqlsession.selectList("board.listAll");
	}


}
