package kr.co.bit.ui;

import java.util.List;
import java.util.Scanner;

import kr.co.bit.vo.VocaVO;

/** 단어공부  */

public class VocaUI extends LoginUI{
	
//	List<VocaVO> list;
	
	@Override
	public void execute() throws Exception {
		System.out.println("=============================================");
		System.out.println("        \t영어 단어 외우기 페이지");
		System.out.println("=============================================");
		
		choiceList(choiceType());
		
		System.out.println("---------------------------------------------");
		
		for(int i =0; i<list.size(); i++) {
			System.out.printf("%2d) 영어 : " + list.get(i).getEnglish() + "한글 : " + list.get(i).getKorean(),(i + 1));
			System.out.println("");
		}
		
		System.out.println("---------------------------------------------");
			
		rememberVoca(list);
		
	}
	public void rememberVoca(List<VocaVO> list) {
		Scanner sc = new Scanner(System.in);

		System.out.println("[영어 외우기 Step1.]");
		System.out.println("영단어가 보이면 영어의 한글 뜻을 기억해보세요.");
		System.out.println("[영어 외우기 Step2.]");
		System.out.println("한글 뜻을 생각한 상태에서 Enter를 입력하세요.");
		System.out.println("[영어 외우기 Step3.]");
		System.out.println("생각했던 한글 뜻과 맞는지 비교하면서 외워보세요. (만약 종료를 원하시면 exit를 입력해주세요.)");
		System.out.println("---------------------------------------------");
		for (int i = 0; i < list.size(); i++) {
			System.out.printf((i+1)+") 영어 : " + list.get(i).getEnglish().trim(), (i + 1) + "\t");
			System.out.println("");
			while (true) {
				String enter = scanStr("");
				if (enter.equals("")) {
					System.out.println("답) 한글 : " + list.get(i).getKorean()+"\n");
					
					break;
				}else if(enter.equals("exit")) {
					System.out.println("---------------------------------------------");
					System.out.println("종료합니다!");
					return;
				}
				else {
					System.out.println("(!) Enter, exit 외 다른 글자를 입력하셨습니다.");
					System.out.println("계속 진행하시려면 Enter를 눌려주세요.");
				}
			}
		}
		System.out.println("---------------------------------------------");
	}
}