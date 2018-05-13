package kr.co.bit.login.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.bit.login.vo.LoginVO;

@Repository
public class LoginDAOImpl implements LoginDAO {

	@Autowired
	SqlSessionTemplate sqlSession;

	@Override
	public LoginVO login(LoginVO loginVO) {
		LoginVO login = sqlSession.selectOne("kr.co.bit.login.dao.LoginDAO.selectLogin", loginVO);
		return login;
	}

	@Override
	public void member(LoginVO loginVO) {
		sqlSession.selectOne("kr.co.bit.login.dao.LoginDAO.insertMember", loginVO);
	}

	@Override
	public String check(String eid) {

		return sqlSession.selectOne("kr.co.bit.login.dao.LoginDAO.check", eid);
	}

	@Override
	public void updateInfo(LoginVO loginVO) {
		sqlSession.insert("kr.co.bit.login.dao.LoginDAO.updateInfo", loginVO);
	}

	@Override
	public void updateInfo2(LoginVO loginVO) {
		sqlSession.insert("kr.co.bit.login.dao.LoginDAO.updateInfo2", loginVO);
	}

	@Override
	public LoginVO selectOne(String regId) {
		return sqlSession.selectOne("kr.co.bit.login.dao.LoginDAO.selectOne", regId);
	}

	@Override
	public String pwCheck(String regId) {
		return sqlSession.selectOne("kr.co.bit.login.dao.LoginDAO.pwCheck", regId);
	}

	@Override
	public void withdraw(String regId) {
		sqlSession.delete("kr.co.bit.login.dao.LoginDAO.withdraw", regId);
	}

	@Override
	public String checkNick(String nickname) {
		return sqlSession.selectOne("kr.co.bit.login.dao.LoginDAO.checkNick",nickname);
	}

	@Override
	public List<LoginVO> listSign() {
		String type = "U";
		List<LoginVO> list = sqlSession.selectList("kr.co.bit.login.dao.LoginDAO.selectSign",type);
		return list;
	}

}
