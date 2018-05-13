package kr.co.bit.reply.dao;

import java.util.List;
import java.util.Map;

import kr.co.bit.reply.vo.ReplyVO;

public interface ReplyDAO {
	List<ReplyVO> selectAll(Map<Object,Object> reNum);
	void insert(ReplyVO reply);
	void modify(ReplyVO reply);
	void delete(int no);
	int selectCount(int reNum);
}
