package kr.co.bit.reply.service;

import java.util.List;
import java.util.Map;

import kr.co.bit.reply.vo.ReplyVO;

public interface ReplyService {
	List<ReplyVO> selectAllReply(Map<Object,Object> reNum);
	void insertReply(ReplyVO reply);
	void modifyReply(ReplyVO reply);
	void deleteReply(int no);
	int selectReplyCount(int reNum);

}
