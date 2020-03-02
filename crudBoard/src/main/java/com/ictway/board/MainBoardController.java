package com.ictway.board;

import java.util.List;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.ictway.board.model.BoardVO;
import com.ictway.board.services.BoardService;

@Controller
@RequestMapping("/")
public class MainBoardController {
	private static final Logger logger = LoggerFactory.getLogger(MainBoardController.class);

	@Inject
	BoardService boardService;
	
/*	@RequestMapping("/board.do")
	public String mainboard(){
		logger.info("This is the main board~!!!!!");
		return "/board";
	}*/
	
	
	// 게시글 목록 
	@RequestMapping( method=RequestMethod.GET)
	public ModelAndView boardlist() throws Exception{
		//1.리스트 객체 
		List<BoardVO> list = boardService.listBoard();
		System.out.println("this tis boardlist");

		return new ModelAndView("list", "list", list);
	}
	
	//게시글 작성 
	@RequestMapping(value="/create", method=RequestMethod.GET)
	public ModelAndView writeForm(){
		System.out.println("This is create page~!!!!!");
		return new ModelAndView("create");
	}
	
	@RequestMapping(value="/create", method=RequestMethod.POST)
	public String  create(@ModelAttribute("BoardVO") BoardVO vo) throws Exception{
		boardService.createBoard(vo);
		
		return "redirect:/board";
	}
	
	//게시글 상세보기
	@RequestMapping(value="/read", method=RequestMethod.GET)
	public ModelAndView readBoard(@RequestParam int bno) throws Exception{
		
		System.out.println("여기는 게시글 상세 보기 ");
		System.out.println("read 글번호 : "+ bno);
		
		ModelAndView mav = new ModelAndView();
		
		System.out.println(boardService.readBoard(bno).getContent());
		mav.addObject("board",boardService.readBoard(bno));
		mav.setViewName("/read");
		
		return mav;
	}
	//게시글 수정 
	@RequestMapping(value="/update", method= RequestMethod.GET)
	public ModelAndView update(@RequestParam int bno) throws Exception{
		//1. 게시글 가져와서 
		//2. 뿌리는 페이 지
		ModelAndView mav = new ModelAndView();
		mav.addObject("board",boardService.readBoard(bno));
		mav.setViewName("update");
		
		return mav;
	}
	
	@RequestMapping(value="/update", method=RequestMethod.POST)
	public String upadteBoard(@ModelAttribute("BoardVO") BoardVO vo) throws Exception{
		// 완료 -> update -> read페이지로 redirect 
		System.out.println(vo.getBno());
		boardService.updateBoard(vo);
		
		      
		return "redirect:/read?bno="+vo.getBno();
	}         
	
	// 게시글 삭제 
	@RequestMapping(value="/delete", method = RequestMethod.GET)
	public String delete(@RequestParam int bno) throws Exception {
		
		boardService.deleteBoard(bno);
		
		return "redirect:/";
	}
}

















