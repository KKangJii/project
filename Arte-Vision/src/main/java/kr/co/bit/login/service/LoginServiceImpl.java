package kr.co.bit.login.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.bit.login.dao.LoginDAO;
import kr.co.bit.login.vo.LoginVO;

@Service
public class LoginServiceImpl implements LoginService {

	@Autowired
	LoginDAO dao;

	@Override
	public LoginVO login(LoginVO loginVO) {
		LoginVO login = dao.login(loginVO);
		return login;
	}

	@Override
	public void member(LoginVO loginVO) {
		dao.member(loginVO);
	}

	@Override
	public String check(String eid) {

		return dao.check(eid);
	}

	@Override
	public void updateInfo(LoginVO loginVO) {
		dao.updateInfo(loginVO);
	}

	@Override
	public void updateInfo2(LoginVO loginVO) {
		dao.updateInfo2(loginVO);
	}

	@Override
	public LoginVO selectOne(String regId) {
		dao.selectOne(regId);
		return null;
	}

	@Override
	public String pwCheck(String regId) {
		String password = dao.pwCheck(regId);
		return password;
	}

	@Override
	public void withdraw(String regId) {
		dao.withdraw(regId);
	}

	@Override
	public String checkNick(String nickname) {
		return dao.checkNick(nickname);
	}

	@Override
	public List<LoginVO> listSign() {
		List<LoginVO> list = dao.listSign();
		return list;
	}

}
