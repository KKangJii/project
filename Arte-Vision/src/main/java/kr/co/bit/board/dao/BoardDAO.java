package kr.co.bit.board.dao;

import java.util.List;
import java.util.Map;

import kr.co.bit.board.vo.BoardVO;

public interface BoardDAO {
	List<BoardVO> selectAll(Map<String,Object> searchMap);
	BoardVO selectOne(int no);
	void insert(BoardVO board);
	void modify(BoardVO board);
	void delete(int no);
	int selectCount(Map<String,Object> searchMap);
	void updateNo(int no);
}
