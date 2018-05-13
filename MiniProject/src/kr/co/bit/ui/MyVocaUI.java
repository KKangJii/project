package kr.co.bit.ui;

import java.io.BufferedWriter;
import java.io.FileWriter;
import java.io.Writer;

public class MyVocaUI extends LoginUI {

	@Override
	public void execute() throws Exception {

		System.out.println("=============================================");
		System.out.println("\t오답 노트 (나만의 단어장) 만들기");
		System.out.println("=============================================");
		
		mychoiceList(choiceType());
		
		for (int i = 0; i < list.size(); i++) {
			System.out.printf("%3d) 영어 : %s %11s\t한글 : %s %11s\t카운트 : %s", (i + 1), list.get(i).getEnglish(), " ",list.get(i).getKorean(), " ",list.get(i).getCount());
			System.out.println("");
		}

		System.out.println("---------------------------------------------");
		if (list.size() != 0) {
			String result = scanStr(">> 지금 보시는 화면의 단어들을 파일에 저장할까요? (y / n): ");
			if (result.equals("y")) {
				// 파일에 출력
				Writer fw = new FileWriter("D:\\MyVocaBook.txt");
				BufferedWriter bw = new BufferedWriter(fw);

				bw.write("[" + thema + "]");
				bw.newLine();

				for (int i = 0; i < list.size(); i++) {
					bw.write((i + 1) + ") " + "영어 : " + list.get(i).getEnglish() + "한글 : " + list.get(i).getKorean());
					bw.newLine();
				}

				bw.write("---------------------------------------------");

				System.out.println("* D 폴더 아래에 MyVocaBook.txt로 저장되었습니다.");

				bw.close();

			} else {
				String str1 = scanStr("단어장 내용을 삭제하시겠습니까? (y/n) : ");
				if(str1.equalsIgnoreCase("y")) {
					
					if(list.size() != 0) {
						System.out.println("=============================================");
						System.out.println("단어장 삭제완료!");
						MYVService.deleteVoca();
						System.out.println("=============================================");
					}else {
						System.out.println("=============================================");
						System.out.println("오답노트에 단어가 없습니다!!!");
						System.out.println("=============================================");
					}
					
				}else {
					System.out.println("이전 화면으로 돌아갑니다.");
				}
			}
		}
	}
}