package kr.co.bit.mail.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.bit.login.vo.LoginVO;

@Repository
public class MailDAO {
	
	@Autowired
	SqlSessionTemplate sqlSession;
	
	public LoginVO checkMyInfo(LoginVO login) {
		LoginVO loginVO = sqlSession.selectOne("kr.co.bit.login.dao.LoginDAO.checkMyInfo",login);
		return loginVO;
	}
}

	
