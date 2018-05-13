package kr.co.bit.ui;

import kr.co.bit.vo.EMemberVO;

public class JoinUI extends BaseUI {

	@Override
	public void execute() throws Exception {
		
		System.out.println("=============================================");
		System.out.println("        \tȸ�� ���� ������");
		System.out.println("=============================================");
		String id = scanStr(">> ����� id�� �Է��ϼ���. : ");
		String password = scanStr(">> ����� ��й�ȣ�� �Է��ϼ���. : ");
		String name = scanStr(">> �̸��� �Է��ϼ���. : ");    
		
		EMemberVO memvo = new EMemberVO();
		memvo.setId(id);
		memvo.setPassword(password);
		memvo.setName(name);
		
		EMService.insertMember(memvo);
		
	}

}
