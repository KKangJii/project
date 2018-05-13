package kr.co.bit.reply.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.bit.reply.dao.ReplyDAO;
import kr.co.bit.reply.vo.ReplyVO;

@Service
public class ReplyServiceimpl implements ReplyService{

	@Autowired
	ReplyDAO dao;
	
	@Override
	public List<ReplyVO> selectAllReply(Map<Object,Object> reNum) {
		List<ReplyVO> list = dao.selectAll(reNum);
		return list;
	}

	@Override
	public void insertReply(ReplyVO reply) {
		dao.insert(reply);
	}

	@Override
	public void modifyReply(ReplyVO reply) {
		dao.modify(reply);
	}

	@Override
	public void deleteReply(int  no) {
		dao.delete(no);
		
	}

	@Override
	public int selectReplyCount(int reNum) {
		int totalCount = dao.selectCount(reNum);
		return totalCount;
	}

}
