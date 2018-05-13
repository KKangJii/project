package kr.co.bit.ui;

import java.util.List;
import java.util.Scanner;

import kr.co.bit.vo.VocaVO;

/** �ܾ����  */

public class VocaUI extends LoginUI{
	
//	List<VocaVO> list;
	
	@Override
	public void execute() throws Exception {
		System.out.println("=============================================");
		System.out.println("        \t���� �ܾ� �ܿ�� ������");
		System.out.println("=============================================");
		
		choiceList(choiceType());
		
		System.out.println("---------------------------------------------");
		
		for(int i =0; i<list.size(); i++) {
			System.out.printf("%2d) ���� : " + list.get(i).getEnglish() + "�ѱ� : " + list.get(i).getKorean(),(i + 1));
			System.out.println("");
		}
		
		System.out.println("---------------------------------------------");
			
		rememberVoca(list);
		
	}
	public void rememberVoca(List<VocaVO> list) {
		Scanner sc = new Scanner(System.in);

		System.out.println("[���� �ܿ�� Step1.]");
		System.out.println("���ܾ ���̸� ������ �ѱ� ���� ����غ�����.");
		System.out.println("[���� �ܿ�� Step2.]");
		System.out.println("�ѱ� ���� ������ ���¿��� Enter�� �Է��ϼ���.");
		System.out.println("[���� �ܿ�� Step3.]");
		System.out.println("�����ߴ� �ѱ� ��� �´��� ���ϸ鼭 �ܿ�������. (���� ���Ḧ ���Ͻø� exit�� �Է����ּ���.)");
		System.out.println("---------------------------------------------");
		for (int i = 0; i < list.size(); i++) {
			System.out.printf((i+1)+") ���� : " + list.get(i).getEnglish().trim(), (i + 1) + "\t");
			System.out.println("");
			while (true) {
				String enter = scanStr("");
				if (enter.equals("")) {
					System.out.println("��) �ѱ� : " + list.get(i).getKorean()+"\n");
					
					break;
				}else if(enter.equals("exit")) {
					System.out.println("---------------------------------------------");
					System.out.println("�����մϴ�!");
					return;
				}
				else {
					System.out.println("(!) Enter, exit �� �ٸ� ���ڸ� �Է��ϼ̽��ϴ�.");
					System.out.println("��� �����Ͻ÷��� Enter�� �����ּ���.");
				}
			}
		}
		System.out.println("---------------------------------------------");
	}
}