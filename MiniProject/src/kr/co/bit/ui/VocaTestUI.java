package kr.co.bit.ui;

/** �ܾ� test */

public class VocaTestUI extends LoginUI {

	@Override
	public void execute() throws Exception {

		System.out.println("=============================================");
		System.out.println("        \tTest ������");
		System.out.println("=============================================");

		while (true) {
			String choicetype = choiceType();
			if (choicetype.equals("1")) {
				// �׸��� �ܾ� test
				list = choiceList(choicetype);
				new VocaTestThema().execute();
				break;
			} else if (choicetype.equals("2")) {
				// ��ü �ܾ� test
				list = choiceList(choicetype);
				new VocaTestAll().execute();
				break;
			}
		}

	}

}