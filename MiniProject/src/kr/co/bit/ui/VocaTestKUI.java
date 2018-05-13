package kr.co.bit.ui;

import java.util.Collections;

import kr.co.bit.vo.VocaVO;

/**
 * �׸� E->K �ѱ��� ����ϰ� test
 */

public class VocaTestKUI extends VocaTestThema {

	@Override
	public void execute() throws Exception {

		VocaVO myvoca = new VocaVO();

		myvoca.setID(LoginUI.getId());
		System.out.println("----------------------------------");
		System.out.println("\t* �ܾ� ������ �����մϴ�!");
		System.out.println("----------------------------------");

		try {

			Collections.shuffle(list);
			System.out.println("�����Ͻ÷��� exit�� �Է��ϼ���!");
			for (int i = 0; i < list.size(); i++) {
				System.out.print(">> " + list.get(i).getEnglish().trim());
				String str = scanStr("�� �� ����?  : ");

				if (str.equals(list.get(i).getKorean().trim())) {
					System.out.println("---------------------------------------------");
					System.out.println("\n\tCongratulations!! �����Դϴ�!\n");
					System.out.println("---------------------------------------------");
				} else if(str.equals("exit")) {
					System.out.println("---------------------------------------------");
					System.out.println("�����մϴ�!");
					return;
				}else {
					System.out.println("---------------------------------------------");
					System.out.println("\n\tWhat a waste:( �����Ʈ�� �߰��ϰڽ��ϴ�.\n");
					System.out.println("---------------------------------------------");

					myvoca.setEnglish(list.get(i).getEnglish());
					myvoca.setKorean(list.get(i).getKorean());
					myvoca.setThema(list.get(i).getThema());

					MYVService.insertVoca(myvoca);
				}
			}
			System.out.println("---------------------------------------------");
			System.out.println("Test�� �������ϴ�");
			System.out.println("���� ȭ������ ���ư��ϴ�!");
			System.out.println("---------------------------------------------");
		} catch (Exception e) {
			e.getStackTrace();
		}
	}

}