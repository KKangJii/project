package kr.co.bit.login.dao;

import java.util.List;

import kr.co.bit.login.vo.LoginVO;

public interface LoginDAO {
	LoginVO login(LoginVO loginVO);
	List<LoginVO> listSign();
	void member(LoginVO loginVO);
	String check(String eid);
	String checkNick(String nickname);
	void updateInfo(LoginVO loginVO);
	void updateInfo2(LoginVO loginVO);
	LoginVO selectOne(String regId);
	String pwCheck(String regId);
	void withdraw(String regId);
}
