package kr.co.bit.ui;

/** 메인 화면 */

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
								System.out.println("저장된 데이터가 없습니다!!");
								System.out.println("다시 선택해주세요!");
								continue;
							}
							break;
						case "6":
							System.out.println("* 로그 아웃하겠습니다. :)");
							logout = false;
							break;
						case "7":
							new MLeaveUI().execute();
							logout = false;
							break;
						default:
							System.out.println("잘 못 눌렀습니다. 다시 입력하세요. :)");
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
				System.out.println("잘 못 눌렀습니다. 다시 입력하세요. :)");
			}

		}
	}

	protected String EMenu() {

		System.out.println("=============================================");
		System.out.println("       Welcome to English Study Program ");
		System.out.println("---------------------------------------------");
		System.out.println("1.\t로그인");
		System.out.println("2.\t회원가입");
		System.out.println("3.\t종료");
		System.out.println("=============================================");

		String EType = scanStr(">> 메뉴 중 원하는 항목은? : ");
		return EType;
	}

	protected String SemiMenu() {

		System.out.println("=============================================");
		System.out.println("        Start English Study Program    ");
		System.out.println("---------------------------------------------");
		System.out.println("1.\t영어단어 외우기");
		System.out.println("2.\t단어 찾기");
		System.out.println("3.\t게임");
		System.out.println("4.\tTest");
		System.out.println("5.\t오답노트 (나만의 단어장 만들기)");
		System.out.println("6.\t로그아웃");
		System.out.println("7.\t탈퇴");
		System.out.println("=============================================");

		String SemiType = scanStr(">> 메뉴 중 원하는 항목은? : ");
		return SemiType;
	}
	protected String SearchMenu() {
		System.out.println("=============================================");
		System.out.println("                 Search Menu");
		System.out.println("---------------------------------------------");
		System.out.println("1.\t한글 입력");
		System.out.println("2.\t영어 입력");
		System.out.println("=============================================");
		String SearchType = scanStr(">> 메뉴 중 원하는 항목은? : ");
		
		return SearchType;
	}
}