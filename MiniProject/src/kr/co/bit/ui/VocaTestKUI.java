package kr.co.bit.ui;

import java.util.Collections;

import kr.co.bit.vo.VocaVO;

/**
 * 테마 E->K 한국어 출력하고 test
 */

public class VocaTestKUI extends VocaTestThema {

	@Override
	public void execute() throws Exception {

		VocaVO myvoca = new VocaVO();

		myvoca.setID(LoginUI.getId());
		System.out.println("----------------------------------");
		System.out.println("\t* 단어 시험을 시작합니다!");
		System.out.println("----------------------------------");

		try {

			Collections.shuffle(list);
			System.out.println("종료하시려면 exit를 입력하세요!");
			for (int i = 0; i < list.size(); i++) {
				System.out.print(">> " + list.get(i).getEnglish().trim());
				String str = scanStr("의 뜻 은요?  : ");

				if (str.equals(list.get(i).getKorean().trim())) {
					System.out.println("---------------------------------------------");
					System.out.println("\n\tCongratulations!! 정답입니다!\n");
					System.out.println("---------------------------------------------");
				} else if(str.equals("exit")) {
					System.out.println("---------------------------------------------");
					System.out.println("종료합니다!");
					return;
				}else {
					System.out.println("---------------------------------------------");
					System.out.println("\n\tWhat a waste:( 오답노트에 추가하겠습니다.\n");
					System.out.println("---------------------------------------------");

					myvoca.setEnglish(list.get(i).getEnglish());
					myvoca.setKorean(list.get(i).getKorean());
					myvoca.setThema(list.get(i).getThema());

					MYVService.insertVoca(myvoca);
				}
			}
			System.out.println("---------------------------------------------");
			System.out.println("Test가 끝났습니다");
			System.out.println("이전 화면으로 돌아갑니다!");
			System.out.println("---------------------------------------------");
		} catch (Exception e) {
			e.getStackTrace();
		}
	}

}