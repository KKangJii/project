package kr.co.bit.board.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.bit.board.dao.BoardDAO;
import kr.co.bit.board.vo.BoardVO;
 
@Service
public class BoardServiceimpl implements BoardService{

	@Autowired
	BoardDAO dao;
	
	@Override
	public List<BoardVO> selectAllBoard(Map<String,Object> searchMap) {
		List<BoardVO> list = dao.selectAll(searchMap);
		return list;
	}

	@Override
	public BoardVO selectOne(int no) {
		return dao.selectOne(no);
	}

	@Override
	public void insertBoard(BoardVO board) {
		dao.insert(board);
	}

	@Override
	public void modifyBoard(BoardVO board) {
		dao.modify(board);
		
	}

	@Override
	public void deleteBoard(int no) {
		dao.delete(no);
	}

	@Override
	public int selectBoardCount(Map<String,Object> searchMap) {
		int totalCount = dao.selectCount(searchMap);
		return totalCount;
		
	}

	@Override
	public void updateBoardNo(int no) {
		dao.updateNo(no);
	}




}
