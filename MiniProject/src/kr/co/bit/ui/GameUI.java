package kr.co.bit.ui;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Random;

import kr.co.bit.vo.VocaVO;

/** 게임 UI */

public class GameUI extends LoginUI {
	List<VocaVO> list = new ArrayList<>();

	@Override
	public void execute() throws Exception {

		System.out.println("=============================================");
		System.out.println("        \t게임 페이지");
		System.out.println("=============================================");

		String choicetype = choiceType(); // 테마 OR 전체 선택
		list = choiceList(choicetype);

		int iSel = 0;
		System.out.println("---------------------------------------------");

		Collections.shuffle(list); // db에있는 단어들 섞음

		int w = 0;
		int h = 0;

		while (true) {
			
			String selstr = scanStr("난이도 입력!(상,중,하) : ");
			
			switch (selstr) { // 개선사항
			case "상":
				w = 10;
				h = 10;
				iSel = 3;
				break;
			case "중":
				w = 7;
				h = 7;
				iSel = 2;
				break;
			case "하":
				w = 5;
				h = 5;
				iSel = 1;
				break;
			}
			if (selstr.equals("상") || selstr.equals("중") || selstr.equals("하"))
				break;
			else {
				System.out.println("다시 난이도를 선택해 주세요.");
			}
		}
		System.out.println("---------------------------------------------");
		System.out.println("\t단어맞추기");

		String[][] puzzle = new String[w][h]; // 상, 중, 하 단계에 따른 배열 크기 설정
		String[] Alpha = new String[100]; // 위에 배열에 저장될 단어 알파벳으로 쪼갠후 배열로 저장
		List<String> answer = new ArrayList<>();
		Random rd = new Random();
		int i = 0; // 랜덤 값 -> width / height 예정
		String str = null;
		int cnt = 0;
		int width = 0;
		int height = 0;
		int b = 0;
		int hicnt = 1; // 힌트 글자 갯수

		for (int a = 0; a < iSel; a++) { // iSel -> 갯수입력
			str = list.get(a).getEnglish();
			str = str.replaceAll("\\p{Z}", "");
			answer.add(str);
			// 단어의 알파벳 개수
			for (int oop = 0; oop < str.length(); oop++) {
				Alpha[b++] = String.valueOf(str.charAt(oop));
			}
		}
		while (cnt < Alpha.length) {
			i = rd.nextInt(w * h);
			width = i / w;
			height = i % h;
			if (puzzle[width][height] != null) {
				continue;
			}
			puzzle[width][height] = Alpha[cnt];
			cnt++;
		}
		for (int j = 0; j < w; j++) {
			for (int l = 0; l < h; l++) {
				if (puzzle[j][l] != null) {
					System.out.print("[" + puzzle[j][l] + "] ");
				} else {
					char ch = (char) (Math.abs((Math.random() * 26)) + 97);
					System.out.print("[" + ch + "] ");
				}
			}
			System.out.println();
		}
		boolean torF = true;
		int anscnt = 0;
		boolean ans;
		for(int start = 0; start < answer.size(); start++) {
			System.out.println("한글자 공개 : " + answer.get(start).substring(0, hicnt) + "\t 글자수 공개 : " + answer.get(start).length() + "\t테마 공개 : " + list.get(start).getThema());
		}
		
		System.out.println("어려우면 힌트 입력!");
		while (torF) {
			String str1 = scanStr("입력 : ");
			ans = false; // 정답 여부

			for (int o = 0; o < answer.size(); o++) {
				if (str1.equals(answer.get(o))) {
					System.out.println("---------------------------------------------");
					System.out.println("축하합니다! 정답입니다!");
					System.out.println("---------------------------------------------");
					ans = true;
					anscnt++;
					answer.remove(o);
					break;

				}

			}
			
			
				if (str1.equals("힌트")) {
					hicnt++;
					for(int he = 0; he < answer.size(); he++) {
					if (hicnt <= answer.get(he).length()) {
						System.out.println(hicnt + "글자 공개 : " + answer.get(he).substring(0, hicnt));
						ans = true;
					} else {
						System.out.println("힌트가 끝났습니다!");
						ans = true;
					}
				}
				
			}
			
			if (ans == false) { // 틀릴 경우 출력
				System.out.println("---------------------------------------------");
				System.out.println("님 틀림");
				System.out.println("---------------------------------------------");
			}

			if (anscnt == iSel) {
				torF = false;
			}

			System.out.println("---------------------------------------------");
		}
		System.out.println("---------------------------------------------");
		System.out.println("\t정답 정보");
		System.out.println("---------------------------------------------");

		for (int l = 0; l < iSel; l++) {
			System.out.println("영문 : " + list.get(l).getEnglish());
			System.out.println("한글 : " + list.get(l).getKorean());
			System.out.println("-------------------------------------------");
		}
	}
}