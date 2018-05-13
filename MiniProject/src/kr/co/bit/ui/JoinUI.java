package kr.co.bit.ui;

import kr.co.bit.vo.EMemberVO;

public class JoinUI extends BaseUI {

	@Override
	public void execute() throws Exception {
		
		System.out.println("=============================================");
		System.out.println("        \t회원 가입 페이지");
		System.out.println("=============================================");
		String id = scanStr(">> 사용자 id를 입력하세요. : ");
		String password = scanStr(">> 사용할 비밀번호를 입력하세요. : ");
		String name = scanStr(">> 이름을 입력하세요. : ");    
		
		EMemberVO memvo = new EMemberVO();
		memvo.setId(id);
		memvo.setPassword(password);
		memvo.setName(name);
		
		EMService.insertMember(memvo);
		
	}

}
