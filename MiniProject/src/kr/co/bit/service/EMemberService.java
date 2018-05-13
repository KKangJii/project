package kr.co.bit.service;

import kr.co.bit.dao.EMemberDAO;
import kr.co.bit.vo.EMemberVO;

/** 회원 DAO를 위한 Service */

public class EMemberService {
	private EMemberDAO ememdao;
	
	public EMemberService(){
		ememdao = new EMemberDAO();
	}
	
	public void insertMember(EMemberVO memvo) {
		ememdao.insertMember(memvo);
	}
	
	public EMemberVO loginMember(String id, String password) {
		return ememdao.loginMember(id, password);
	}
	
	public void deleteMember() {
		ememdao.deleteMember();
	}
}
