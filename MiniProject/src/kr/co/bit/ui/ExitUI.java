package kr.co.bit.ui;

/** UI 종료 */

public class ExitUI extends BaseUI {

	@Override
	public void execute() throws Exception {
		System.out.println("=============================================");
		System.out.println("\t프로그램을 종료합니다.");
		System.out.println("=============================================");
		
		System.exit(0);
	}

}
