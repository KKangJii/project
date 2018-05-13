package kr.co.bit.board.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.bit.board.vo.BoardVO;


@Repository
public class BoardDAOimpl implements BoardDAO{

	@Autowired
	SqlSessionTemplate sqlSession;
	
	@Override
	public List<BoardVO> selectAll(Map<String,Object> searchMap) {
		List<BoardVO> list = sqlSession.selectList("kr.co.bit.board.dao.BoardDAO.selectAllboard",searchMap);
		return list;
	}

	@Override
	public BoardVO selectOne(int no) {
		return sqlSession.selectOne("kr.co.bit.board.dao.BoardDAO.selectOneboard",no);
	}

	@Override
	public void insert(BoardVO board) {
		sqlSession.insert("kr.co.bit.board.dao.BoardDAO.insertBoard",board);
		
	}

	@Override
	public void modify(BoardVO board) {
		sqlSession.update("kr.co.bit.board.dao.BoardDAO.updateBoard",board);
		
	}

	@Override
	public void delete(int no) {
		sqlSession.delete("kr.co.bit.reply.dao.ReplyDAO.deleteReply2",no);
		sqlSession.delete("kr.co.bit.board.dao.BoardDAO.deleteBoard",no);
	}

	@Override
	public int selectCount(Map<String,Object> searchMap) {
		int totalCount = sqlSession.selectOne("kr.co.bit.board.dao.BoardDAO.selectCount",searchMap);
		return totalCount;
	}

	@Override
	public void updateNo(int no) {
		sqlSession.update("kr.co.bit.board.dao.BoardDAO.updateBoardNo",no);
		
	}

}
