package kr.co.bit.ui;

public class VocaTestAll extends VocaTestUI {
	@Override
	public void execute() throws Exception {

		
		while (true) {
			String testType = menu();
			if (testType.equals("1")) {
				// English -> Korean
				System.out.println("* 영어 단어를 보시고 한글로 작성해 주세요~ :)");
				new VocaTestAllKUI().execute();
				break;
			} else if (testType.equals("2")) {
				// Korean -> English
				System.out.println("* 한글을 보시고 영어로 작성해주세요~ :)");
				new VocaTestAllEUI().execute();
				break;
			} else {
				System.out.println("(!) 잘 못 입력하셧습니다.");
				System.out.println("이전 화면으로 돌아가겠습니다.");
			}
		}
	}
}