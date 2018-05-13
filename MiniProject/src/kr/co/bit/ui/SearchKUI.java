package kr.co.bit.ui;

public class SearchKUI extends LoginUI {

	@Override
	public void execute() throws Exception {
		String str = scanStr("찾으실 단어를 입력하세요 : ");
		list = VService.bringAllVoca();
		for(int i = 0; i < list.size(); i++) {
			if(str.equals(list.get(i).getKorean())){
				System.out.println("찾은 단어 : " + list.get(i).getEnglish());
			}
		}
		
	}
	
}
