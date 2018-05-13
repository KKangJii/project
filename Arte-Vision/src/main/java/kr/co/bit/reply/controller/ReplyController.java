package kr.co.bit.reply.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import kr.co.bit.reply.service.ReplyService;
import kr.co.bit.reply.vo.ReplyVO;

@RestController
@RequestMapping("/reply")
public class ReplyController {

	@Autowired
	ReplyService service;

	@RequestMapping("/list")
	public ModelAndView selectReply(@RequestParam int rno,@RequestParam(value = "pageNum", required = false) int pageNum) {
		ModelAndView mav = new ModelAndView();
		mav.addObject("rno",rno);
		int pageNo = 1;

		try {
			pageNo = pageNum;
		} catch (Exception e) {
		}

		mav.addObject("pageNo", pageNo);
		int totalCount = service.selectReplyCount(rno);
		int listSize = 10;
		int lastPage = (totalCount % listSize == 0) ? totalCount / listSize : totalCount / listSize + 1;

		mav.addObject("pageNo", pageNo);
		mav.addObject("lastPage", lastPage);

		int beginPage = 0;
		int endPage = 0;
		if (pageNo / 10 == 0) {
			beginPage = 1;
			if (lastPage > 10) {
				endPage = 10;
			} else {
				endPage = lastPage;
			}
		} else {
			beginPage = pageNo - 5;
			endPage = pageNo + 5;
			if (endPage > lastPage) {
				endPage = lastPage;
			}
		}

		mav.addObject("beginPage", beginPage);
		mav.addObject("endPage", endPage);

		
		Map<Object,Object> reNum = new HashMap<>();
		
		reNum.put("rno", rno);
		reNum.put("pageNo", pageNo);
		List<ReplyVO> list = service.selectAllReply(reNum);


		mav.setViewName("reply/list");
		mav.addObject("list", list);

		return mav;
	}

	@RequestMapping("/insert")
	public int insertReply(@RequestParam int rno, @RequestParam String content, @RequestParam String writer) {
		
		ReplyVO reply = new ReplyVO();
		reply.setRno(rno);
		reply.setContent(content);
		reply.setWriter(writer);

		service.insertReply(reply);

		return rno;
	}

	@RequestMapping("/delete/{no}")
	public void delete(@PathVariable int no) {
		service.deleteReply(no);
	}

	@RequestMapping("/update")
	public void update(@RequestParam int no, @RequestParam String content) {
		ReplyVO reply = new ReplyVO();
		reply.setNo(no);
		reply.setContent(content);

		service.modifyReply(reply);
	}
}
