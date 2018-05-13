package kr.co.bit.ui;

public class MLeaveUI extends LoginUI {
	@Override
	public void execute() throws Exception {
		
		String leave = memberLeave();
		
		switch(leave) {
		case "y":		
			EMService.deleteMember();
			LoginUI.setId();
			break;
		case "n":
			System.out.println("��!! Ż�� ���ϽŴٴ� �ű���!!");
			System.out.println("�׷��ٸ� ���� ȭ������ ���ư��ڽ��ϴ�.");
			break;
		default :
			System.out.println("(!) �� �� �Է��ϼ˽��ϴ�.");
			System.out.println("���� ȭ������ ���ư��ڽ��ϴ�.");
			break; 
		}		
	}
	
	public String memberLeave() {
		
		System.out.println("=============================================");
		System.out.println("        \tȸ�� Ż�� ������");
		System.out.println("=============================================");
		String leave = scanStr("������ Ż�� �Ͻðڽ��ϱ�? (y / n) : ");
		
		return leave;
	}
}
