package kr.co.bit.login.vo;

public class MemberVO {
	
	private String regId;
	private String nickname;
	private String regPassword;
	private String regBirthday;
	private String tel1;
	private String tel2;
	private String tel3;	
	private String regEmail;
	
	
	
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public String getRegId() {
		return regId;
	}
	public void setRegId(String regId) {
		this.regId = regId;
	}
	public String getRegPassword() {
		return regPassword;
	}
	public void setRegPassword(String regPassword) {
		this.regPassword = regPassword;
	}
	public String getRegBirthday() {
		return regBirthday;
	}
	public void setRegBirthday(String regBirthday) {
		this.regBirthday = regBirthday;
	}
	public String getTel1() {
		return tel1;
	}
	public void setTel1(String tel1) {
		this.tel1 = tel1;
	}
	public String getTel2() {
		return tel2;
	}
	public void setTel2(String tel2) {
		this.tel2 = tel2;
	}
	public String getTel3() {
		return tel3;
	}
	public void setTel3(String tel3) {
		this.tel3 = tel3;
	}
	public String getRegEmail() {
		return regEmail;
	}
	public void setRegEmail(String regEmail) {
		this.regEmail = regEmail;
	}
	@Override
	public String toString() {
		return "MemberVO [regId=" + regId + ", nickname=" + nickname + ", regPassword=" + regPassword + ", regBirthday="
				+ regBirthday + ", tel1=" + tel1 + ", tel2=" + tel2 + ", tel3=" + tel3 + ", regEmail=" + regEmail + "]";
	}
	
}
