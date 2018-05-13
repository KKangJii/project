package kr.co.bit.ui;

import java.util.ArrayList;
import java.util.List;

import kr.co.bit.vo.EMemberVO;
import kr.co.bit.vo.VocaVO;

/** �α����� �ϱ� ���� UI */

public class LoginUI extends BaseUI {
	private static String loginid;
	private List<String> T_list = new ArrayList<>();
	protected static List<VocaVO> list = new ArrayList<>();
	protected static String thema;

	@Override
	public void execute() throws Exception {

		System.out.println("=============================================");
		System.out.println("        \t�α��� �������Դϴ�.");
		System.out.println("=============================================");
		String id = scanStr(">> �α����� ID�� �Է��ϼ���. : ");
		String pw = scanStr(">> �α����� Password�� �Է��ϼ���. : ");

		EMemberVO memvo = EMService.loginMember(id, pw);

		if (memvo == null) {
			System.out.println("---------------------------------------------");
			System.out.println("(!) �������� �ʴ� ID�Դϴ�.");
			System.out.println("\tó�� ȭ������ ���ư��ϴ�.");
			System.out.println("---------------------------------------------");
		} else {
			System.out.println("---------------------------------------------");
			System.out.println("\t* �ش� ���̵�� �α����մϴ�.");
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
			System.out.print("������ �ִ� �׸� : ");
			T_list = VService.bringThemeList();

			for (int i = 0; i < T_list.size(); i++) { // ������ �ִ� �׸� ����Ʈ ���
				System.out.print(T_list.get(i) + " / ");
			}

			System.out.println();

			while (true) {

				thema = scanStr("Thema�� �Է����ּ���. : ");

				if (T_list.contains(thema)) {
					list = VService.bringThemaVoca(thema);// theme�� DAO�� ���� ���� list -> �׸��� �ܾ���
					System.out.println("* �Է��Ͻ� �׸��� " + thema + " �Դϴ�.");
					break;

				} else {
					System.out.println("�Է��Ͻ� �׸��� �����ϴ�. �ٽ� ������ �ּ���.");
					continue;
				}
			}

		} else if (choicetype.equals("2")) {
			list = VService.bringAllVoca(); // VocaDAO�� ���� ���� list -> ��¥ �ܾ���

		} else {
			System.out.println("---------------------------------------------");
			System.out.println("�ٽ� ������ �ּ���.");
			choiceList(choiceType());
		}
		return list;
	}

	public List<VocaVO> mychoiceList(String choicetype) {

		list = null;

		if (choicetype.equals("1")) {

			T_list = MYVService.bringThemaList();
			if (T_list.size() != 0) {
				System.out.print("������ �ִ� �׸� : ");

				for (int i = 0; i < T_list.size(); i++) { // ������ �ִ� �׸� ����Ʈ ���
					System.out.print(T_list.get(i) + " / ");
				}

				System.out.println();

				while (true) {

					thema = scanStr("Thema�� �Է����ּ���. : ");

					if (T_list.contains(thema)) {
						list = MYVService.bringThemaVoca(thema);// theme�� DAO�� ���� ���� list -> �׸��� �ܾ���
						System.out.println("* �Է��Ͻ� �׸��� " + thema + " �Դϴ�.");
						break;

					} else {
						System.out.println("�Է��Ͻ� �׸��� �����ϴ�. �ٽ� ������ �ּ���.");
						continue;
					}
				}
			}
		} else if (choicetype.equals("2")) {
			list = MYVService.bringAllVoca(); // VocaDAO�� ���� ���� list -> ��¥ �ܾ���
			if(list.isEmpty()) {
				System.out.println("����� �ܾ �����ϴ�...");
				System.out.println("�ٽ� ������ �ּ���...");
			}
		} else {
			System.out.println("---------------------------------------------");
			System.out.println("�ٽ� ������ �ּ���.");
			choiceList(choiceType());
		}

		return list;
	}

	public String choiceType() { // �׸� OR ��ü �ܾ�

		System.out.println("---------------------------------------------");
		System.out.println("1. �׸��� �ܾ� ���");
		System.out.println("2. ��ü �ܾ� ���");
		System.out.println("---------------------------------------------");

		String choicetype = scanStr(">> ������ �����ϼ���. : ");
		return choicetype;
	}

	public String menu() {

		System.out.println("---------------------------------------------");
		System.out.println("1. English  ->   Korean");
		System.out.println("2. Korean   ->   English");
		System.out.println("---------------------------------------------");

		String testType = scanStr(">> Test ������ �����ϼ���. : ");

		return testType;
	}

}