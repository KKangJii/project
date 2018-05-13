package kr.co.bit.ui;

import java.util.ArrayList;
import java.util.List;

import kr.co.bit.vo.EMemberVO;
import kr.co.bit.vo.VocaVO;

/** 로그인을 하기 위한 UI */

public class LoginUI extends BaseUI {
	private static String loginid;
	private List<String> T_list = new ArrayList<>();
	protected static List<VocaVO> list = new ArrayList<>();
	protected static String thema;

	@Override
	public void execute() throws Exception {

		System.out.println("=============================================");
		System.out.println("        \t로그인 페이지입니다.");
		System.out.println("=============================================");
		String id = scanStr(">> 로그인할 ID를 입력하세요. : ");
		String pw = scanStr(">> 로그인할 Password를 입력하세요. : ");

		EMemberVO memvo = EMService.loginMember(id, pw);

		if (memvo == null) {
			System.out.println("---------------------------------------------");
			System.out.println("(!) 존재하지 않는 ID입니다.");
			System.out.println("\t처음 화면으로 돌아갑니다.");
			System.out.println("---------------------------------------------");
		} else {
			System.out.println("---------------------------------------------");
			System.out.println("\t* 해당 아이디로 로그인합니다.");
			System.out.println("---------------------------------------------");
			loginid = memvo.getId();
		}
	}

	public static String getId() {
		return loginid;
	}

	public static void setId() {
		loginid = null;
	}

	public List<VocaVO> choiceList(String choicetype) {

		list = null;

		if (choicetype.equals("1")) {
			System.out.print("사전에 있는 테마 : ");
			T_list = VService.bringThemeList();

			for (int i = 0; i < T_list.size(); i++) { // 사전에 있는 테마 리스트 출력
				System.out.print(T_list.get(i) + " / ");
			}

			System.out.println();

			while (true) {

				thema = scanStr("Thema를 입력해주세요. : ");

				if (T_list.contains(thema)) {
					list = VService.bringThemaVoca(thema);// theme별 DAO로 부터 받은 list -> 테마별 단어장
					System.out.println("* 입력하신 테마는 " + thema + " 입니다.");
					break;

				} else {
					System.out.println("입력하신 테마가 없습니다. 다시 선택해 주세요.");
					continue;
				}
			}

		} else if (choicetype.equals("2")) {
			list = VService.bringAllVoca(); // VocaDAO로 부터 받은 list -> 진짜 단어장

		} else {
			System.out.println("---------------------------------------------");
			System.out.println("다시 선택해 주세요.");
			choiceList(choiceType());
		}
		return list;
	}

	public List<VocaVO> mychoiceList(String choicetype) {

		list = null;

		if (choicetype.equals("1")) {

			T_list = MYVService.bringThemaList();
			if (T_list.size() != 0) {
				System.out.print("사전에 있는 테마 : ");

				for (int i = 0; i < T_list.size(); i++) { // 사전에 있는 테마 리스트 출력
					System.out.print(T_list.get(i) + " / ");
				}

				System.out.println();

				while (true) {

					thema = scanStr("Thema를 입력해주세요. : ");

					if (T_list.contains(thema)) {
						list = MYVService.bringThemaVoca(thema);// theme별 DAO로 부터 받은 list -> 테마별 단어장
						System.out.println("* 입력하신 테마는 " + thema + " 입니다.");
						break;

					} else {
						System.out.println("입력하신 테마가 없습니다. 다시 선택해 주세요.");
						continue;
					}
				}
			}
		} else if (choicetype.equals("2")) {
			list = MYVService.bringAllVoca(); // VocaDAO로 부터 받은 list -> 진짜 단어장
			if(list.isEmpty()) {
				System.out.println("저장된 단어가 없습니다...");
				System.out.println("다시 선택해 주세요...");
			}
		} else {
			System.out.println("---------------------------------------------");
			System.out.println("다시 선택해 주세요.");
			choiceList(choiceType());
		}

		return list;
	}

	public String choiceType() { // 테마 OR 전체 단어

		System.out.println("---------------------------------------------");
		System.out.println("1. 테마별 단어 목록");
		System.out.println("2. 전체 단어 목록");
		System.out.println("---------------------------------------------");

		String choicetype = scanStr(">> 유형을 선택하세요. : ");
		return choicetype;
	}

	public String menu() {

		System.out.println("---------------------------------------------");
		System.out.println("1. English  ->   Korean");
		System.out.println("2. Korean   ->   English");
		System.out.println("---------------------------------------------");

		String testType = scanStr(">> Test 유형을 선택하세요. : ");

		return testType;
	}

}