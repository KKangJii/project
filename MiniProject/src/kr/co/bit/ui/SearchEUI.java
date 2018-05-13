package kr.co.bit.ui;

public class SearchEUI extends LoginUI {
	@Override
	public void execute() throws Exception {
		System.out.println("---------------------------------------------");
		String str = scanStr("찾으실 단어를 입력하세요 : ");
		list = VService.bringAllVoca();
		for(int i = 0; i < list.size(); i++) {
			if(str.equals(list.get(i).getEnglish())){
				System.out.println("---------------------------------------------");
				System.out.println("찾은 단어 : " + list.get(i).getKorean());
				System.out.println("---------------------------------------------");
			}
		}
		
	}

}
