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
			System.out.println("오!! 탈퇴를 안하신다는 거군요!!");
			System.out.println("그렇다면 이전 화면으로 돌아가겠습니다.");
			break;
		default :
			System.out.println("(!) 잘 못 입력하셧습니다.");
			System.out.println("이전 화면으로 돌아가겠습니다.");
			break; 
		}		
	}
	
	public String memberLeave() {
		
		System.out.println("=============================================");
		System.out.println("        \t회원 탈퇴 페이지");
		System.out.println("=============================================");
		String leave = scanStr("정말로 탈퇴를 하시겠습니까? (y / n) : ");
		
		return leave;
	}
}
