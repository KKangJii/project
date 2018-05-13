package kr.co.bit.ui;

/** 단어 test */

public class VocaTestUI extends LoginUI {

	@Override
	public void execute() throws Exception {

		System.out.println("=============================================");
		System.out.println("        \tTest 페이지");
		System.out.println("=============================================");

		while (true) {
			String choicetype = choiceType();
			if (choicetype.equals("1")) {
				// 테마별 단어 test
				list = choiceList(choicetype);
				new VocaTestThema().execute();
				break;
			} else if (choicetype.equals("2")) {
				// 전체 단어 test
				list = choiceList(choicetype);
				new VocaTestAll().execute();
				break;
			}
		}

	}

}