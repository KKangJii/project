package kr.co.bit.ui;

public class SearchEUI extends LoginUI {
	@Override
	public void execute() throws Exception {
		System.out.println("---------------------------------------------");
		String str = scanStr("ã���� �ܾ �Է��ϼ��� : ");
		list = VService.bringAllVoca();
		for(int i = 0; i < list.size(); i++) {
			if(str.equals(list.get(i).getEnglish())){
				System.out.println("---------------------------------------------");
				System.out.println("ã�� �ܾ� : " + list.get(i).getKorean());
				System.out.println("---------------------------------------------");
			}
		}
		
	}

}
