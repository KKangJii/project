package kr.co.bit.ui;

import java.io.BufferedWriter;
import java.io.FileWriter;
import java.io.Writer;

public class MyVocaUI extends LoginUI {

	@Override
	public void execute() throws Exception {

		System.out.println("=============================================");
		System.out.println("\t���� ��Ʈ (������ �ܾ���) �����");
		System.out.println("=============================================");
		
		mychoiceList(choiceType());
		
		for (int i = 0; i < list.size(); i++) {
			System.out.printf("%3d) ���� : %s %11s\t�ѱ� : %s %11s\tī��Ʈ : %s", (i + 1), list.get(i).getEnglish(), " ",list.get(i).getKorean(), " ",list.get(i).getCount());
			System.out.println("");
		}

		System.out.println("---------------------------------------------");
		if (list.size() != 0) {
			String result = scanStr(">> ���� ���ô� ȭ���� �ܾ���� ���Ͽ� �����ұ��? (y / n): ");
			if (result.equals("y")) {
				// ���Ͽ� ���
				Writer fw = new FileWriter("D:\\MyVocaBook.txt");
				BufferedWriter bw = new BufferedWriter(fw);

				bw.write("[" + thema + "]");
				bw.newLine();

				for (int i = 0; i < list.size(); i++) {
					bw.write((i + 1) + ") " + "���� : " + list.get(i).getEnglish() + "�ѱ� : " + list.get(i).getKorean());
					bw.newLine();
				}

				bw.write("---------------------------------------------");

				System.out.println("* D ���� �Ʒ��� MyVocaBook.txt�� ����Ǿ����ϴ�.");

				bw.close();

			} else {
				String str1 = scanStr("�ܾ��� ������ �����Ͻðڽ��ϱ�? (y/n) : ");
				if(str1.equalsIgnoreCase("y")) {
					
					if(list.size() != 0) {
						System.out.println("=============================================");
						System.out.println("�ܾ��� �����Ϸ�!");
						MYVService.deleteVoca();
						System.out.println("=============================================");
					}else {
						System.out.println("=============================================");
						System.out.println("�����Ʈ�� �ܾ �����ϴ�!!!");
						System.out.println("=============================================");
					}
					
				}else {
					System.out.println("���� ȭ������ ���ư��ϴ�.");
				}
			}
		}
	}
}