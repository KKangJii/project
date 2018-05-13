package kr.co.bit.ui;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Random;

import kr.co.bit.vo.VocaVO;

/** ���� UI */

public class GameUI extends LoginUI {
	List<VocaVO> list = new ArrayList<>();

	@Override
	public void execute() throws Exception {

		System.out.println("=============================================");
		System.out.println("        \t���� ������");
		System.out.println("=============================================");

		String choicetype = choiceType(); // �׸� OR ��ü ����
		list = choiceList(choicetype);

		int iSel = 0;
		System.out.println("---------------------------------------------");

		Collections.shuffle(list); // db���ִ� �ܾ�� ����

		int w = 0;
		int h = 0;

		while (true) {
			
			String selstr = scanStr("���̵� �Է�!(��,��,��) : ");
			
			switch (selstr) { // ��������
			case "��":
				w = 10;
				h = 10;
				iSel = 3;
				break;
			case "��":
				w = 7;
				h = 7;
				iSel = 2;
				break;
			case "��":
				w = 5;
				h = 5;
				iSel = 1;
				break;
			}
			if (selstr.equals("��") || selstr.equals("��") || selstr.equals("��"))
				break;
			else {
				System.out.println("�ٽ� ���̵��� ������ �ּ���.");
			}
		}
		System.out.println("---------------------------------------------");
		System.out.println("\t�ܾ���߱�");

		String[][] puzzle = new String[w][h]; // ��, ��, �� �ܰ迡 ���� �迭 ũ�� ����
		String[] Alpha = new String[100]; // ���� �迭�� ����� �ܾ� ���ĺ����� �ɰ��� �迭�� ����
		List<String> answer = new ArrayList<>();
		Random rd = new Random();
		int i = 0; // ���� �� -> width / height ����
		String str = null;
		int cnt = 0;
		int width = 0;
		int height = 0;
		int b = 0;
		int hicnt = 1; // ��Ʈ ���� ����

		for (int a = 0; a < iSel; a++) { // iSel -> �����Է�
			str = list.get(a).getEnglish();
			str = str.replaceAll("\\p{Z}", "");
			answer.add(str);
			// �ܾ��� ���ĺ� ����
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
			System.out.println("�ѱ��� ���� : " + answer.get(start).substring(0, hicnt) + "\t ���ڼ� ���� : " + answer.get(start).length() + "\t�׸� ���� : " + list.get(start).getThema());
		}
		
		System.out.println("������ ��Ʈ �Է�!");
		while (torF) {
			String str1 = scanStr("�Է� : ");
			ans = false; // ���� ����

			for (int o = 0; o < answer.size(); o++) {
				if (str1.equals(answer.get(o))) {
					System.out.println("---------------------------------------------");
					System.out.println("�����մϴ�! �����Դϴ�!");
					System.out.println("---------------------------------------------");
					ans = true;
					anscnt++;
					answer.remove(o);
					break;

				}

			}
			
			
				if (str1.equals("��Ʈ")) {
					hicnt++;
					for(int he = 0; he < answer.size(); he++) {
					if (hicnt <= answer.get(he).length()) {
						System.out.println(hicnt + "���� ���� : " + answer.get(he).substring(0, hicnt));
						ans = true;
					} else {
						System.out.println("��Ʈ�� �������ϴ�!");
						ans = true;
					}
				}
				
			}
			
			if (ans == false) { // Ʋ�� ��� ���
				System.out.println("---------------------------------------------");
				System.out.println("�� Ʋ��");
				System.out.println("---------------------------------------------");
			}

			if (anscnt == iSel) {
				torF = false;
			}

			System.out.println("---------------------------------------------");
		}
		System.out.println("---------------------------------------------");
		System.out.println("\t���� ����");
		System.out.println("---------------------------------------------");

		for (int l = 0; l < iSel; l++) {
			System.out.println("���� : " + list.get(l).getEnglish());
			System.out.println("�ѱ� : " + list.get(l).getKorean());
			System.out.println("-------------------------------------------");
		}
	}
}