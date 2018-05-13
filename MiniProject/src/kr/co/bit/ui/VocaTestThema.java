package kr.co.bit.ui;

public class VocaTestThema extends VocaTestUI {

	@Override
	public void execute() throws Exception {

		while (true) {
			String testType = menu();

			if (testType.equals("1")) {
				// English -> Korean
				System.out.println("* ���� �ܾ ���ð� �ѱ۷� �ۼ��� �ּ���~ :)");
				new VocaTestKUI().execute();
				break;

			} else if (testType.equals("2")) {
				// Korean -> English
				System.out.println("* �ѱ��� ���ð� ����� �ۼ����ּ���~ :)");
				new VocaTestEUI().execute();
				break;

			} else {
				System.out.println("(!) �� �� �Է��ϼ˽��ϴ�.");
				System.out.println("���� ȭ������ ���ư��ڽ��ϴ�.");
			}
		}

	}
}