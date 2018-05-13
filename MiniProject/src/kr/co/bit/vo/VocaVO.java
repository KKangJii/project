package kr.co.bit.vo;

//기본 영어단어를 위한 VocaVO
public class VocaVO {

	private String ID;
	private String English;
	private String Korean;
	private String Thema;
	private int Count;

	public VocaVO() {

	}

	public int getCount() {
		return Count;
	}

	public void setCount(int count) {
		Count = count;
	}
	
	public VocaVO(String English, String Korean, String Thema) {

		this.English = English;
		this.Korean = Korean;
		this.Thema = Thema;
	}
	public VocaVO(String English, String Korean, String Thema,int Count) {

		this.English = English;
		this.Korean = Korean;
		this.Thema = Thema;
		this.Count = Count;
	}
	public VocaVO(String id,String English, String Korean, String Thema,int Count) {

		this.ID = id;
		this.English = English;
		this.Korean = Korean;
		this.Thema = Thema;
		this.Count = Count;
	}

	public void setID(String iD) {
		ID = iD;
	}

	public String getID() {
		return ID;
	}

	public String getEnglish() {
		return English;
	}

	public void setEnglish(String english) {
		English = english;
	}

	public String getKorean() {
		return Korean;
	}

	public void setKorean(String korean) {
		Korean = korean;
	}

	public String getThema() {
		return Thema;
	}

	public void setThema(String thema) {
		Thema = thema;
	}

	@Override
	public String toString() {
		return "VocaVO [English=" + English + ", Korean=" + Korean + "]";
	}

}
