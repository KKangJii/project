package kr.co.bit.ui;

/** ���� ȭ�� */

public class EMainUI extends BaseUI {

	@Override
	public void execute() throws Exception {
		boolean logout;

		while (true) {
			String EType = EMenu();
			IEbaseUI ui = null;
			logout = true;

			if (EType.equals("1")) {
				ui = new LoginUI();
				ui.execute();
				String key = LoginUI.getId();
				if (key != null) {
					while (logout) {
						String EType2 = SemiMenu();
						switch (EType2) {
						case "1":
							new VocaUI().execute();
							break;
						case "2":
							String SearchType = SearchMenu();
							switch(SearchType){
								case "1":
									new SearchKUI().execute();;
									break;
								case "2":
									new SearchEUI().execute();
									break;
							}
							break;
						case "3":
							new GameUI().execute();
							break;
						case "4":
							new VocaTestUI().execute();
							break;
						case "5":
							try {
								new MyVocaUI().execute();
							} catch (Exception e) {
								System.out.println("����� �����Ͱ� �����ϴ�!!");
								System.out.println("�ٽ� �������ּ���!");
								continue;
							}
							break;
						case "6":
							System.out.println("* �α� �ƿ��ϰڽ��ϴ�. :)");
							logout = false;
							break;
						case "7":
							new MLeaveUI().execute();
							logout = false;
							break;
						default:
							System.out.println("�� �� �������ϴ�. �ٽ� �Է��ϼ���. :)");
							break;
						}
					}
				}
			} else if (EType.equals("2")) {
				new JoinUI().execute();
			} else if (EType.equals("3")) {
				new ExitUI().execute();
				return;
			} else {
				System.out.println("�� �� �������ϴ�. �ٽ� �Է��ϼ���. :)");
			}

		}
	}

	protected String EMenu() {

		System.out.println("=============================================");
		System.out.println("       Welcome to English Study Program ");
		System.out.println("---------------------------------------------");
		System.out.println("1.\t�α���");
		System.out.println("2.\tȸ������");
		System.out.println("3.\t����");
		System.out.println("=============================================");

		String EType = scanStr(">> �޴� �� ���ϴ� �׸���? : ");
		return EType;
	}

	protected String SemiMenu() {

		System.out.println("=============================================");
		System.out.println("        Start English Study Program    ");
		System.out.println("---------------------------------------------");
		System.out.println("1.\t����ܾ� �ܿ��");
		System.out.println("2.\t�ܾ� ã��");
		System.out.println("3.\t����");
		System.out.println("4.\tTest");
		System.out.println("5.\t�����Ʈ (������ �ܾ��� �����)");
		System.out.println("6.\t�α׾ƿ�");
		System.out.println("7.\tŻ��");
		System.out.println("=============================================");

		String SemiType = scanStr(">> �޴� �� ���ϴ� �׸���? : ");
		return SemiType;
	}
	protected String SearchMenu() {
		System.out.println("=============================================");
		System.out.println("                 Search Menu");
		System.out.println("---------------------------------------------");
		System.out.println("1.\t�ѱ� �Է�");
		System.out.println("2.\t���� �Է�");
		System.out.println("=============================================");
		String SearchType = scanStr(">> �޴� �� ���ϴ� �׸���? : ");
		
		return SearchType;
	}
}