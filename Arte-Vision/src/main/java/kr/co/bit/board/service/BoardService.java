package kr.co.bit.board.service;

import java.util.List;
import java.util.Map;

import kr.co.bit.board.vo.BoardVO;

public interface BoardService {
	List<BoardVO> selectAllBoard(Map<String,Object> searchMap);
	BoardVO selectOne(int no);
	void insertBoard(BoardVO board);
	void modifyBoard(BoardVO board);
	void deleteBoard(int no);
	int selectBoardCount(Map<String,Object> searchMap);
	void updateBoardNo(int no);
	
}
