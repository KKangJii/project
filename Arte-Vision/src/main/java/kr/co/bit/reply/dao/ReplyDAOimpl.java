package kr.co.bit.reply.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.bit.reply.vo.ReplyVO;

@Repository
public class ReplyDAOimpl implements ReplyDAO{

	@Autowired
	SqlSessionTemplate sqlSession;
	
	@Override
	public List<ReplyVO> selectAll(Map<Object,Object> reNum) {
		List<ReplyVO> list =  sqlSession.selectList("kr.co.bit.reply.dao.ReplyDAO.selectAllreply",reNum);
		return list;
	}


	@Override
	public void insert(ReplyVO reply) {
		sqlSession.insert("kr.co.bit.reply.dao.ReplyDAO.insertReply",reply);
	}

	@Override
	public void modify(ReplyVO reply) {
		sqlSession.insert("kr.co.bit.reply.dao.ReplyDAO.updateReply",reply);
		
	}

	@Override
	public void delete(int no) {
		sqlSession.delete("kr.co.bit.reply.dao.ReplyDAO.deleteReply",no);
		
	}


	@Override
	public int selectCount(int reNum) {
		int totalCount = sqlSession.selectOne("kr.co.bit.reply.dao.ReplyDAO.selectCount",reNum);
		return totalCount;
	}

}
