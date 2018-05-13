package kr.co.bit.login.service;

import java.util.List;

import kr.co.bit.login.vo.LoginVO;

public interface LoginService {
	LoginVO login(LoginVO login);
	List<LoginVO> listSign();
	void member(LoginVO member);
	String check(String eid);
	String checkNick(String nickname);
	void updateInfo(LoginVO loginVO);
	void updateInfo2(LoginVO loginVO);
	LoginVO selectOne(String regId);
	String pwCheck(String regId);
	void withdraw(String regId);
}
