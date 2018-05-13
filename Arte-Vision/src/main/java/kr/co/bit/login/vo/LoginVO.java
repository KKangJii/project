package kr.co.bit.login.vo;

public class LoginVO {

	private String id;
	private String password;
	private String type;
	private String regId;
	private String nickname;

	private String regPassword;
	private String regPassword1;
	private String regBirthday;
	private String tel1;
	private String tel2;
	private String tel3;
	private String birthday;

	public String getNickname() {
		return nickname;
	}
	
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
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

	public String getRegPassword1() {
		return regPassword1;
	}

	public void setRegPassword1(String regPassword1) {
		this.regPassword1 = regPassword1;
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

	public String getBirthday() {
		return birthday;
	}

	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}

	@Override
	public String toString() {
		return "LoginVO [id=" + id + ", password=" + password + ", type=" + type + ", regId=" + regId + ", nickname="
				+ nickname + ", regPassword=" + regPassword + ", regPassword1=" + regPassword1 + ", regBirthday="
				+ regBirthday + ", tel1=" + tel1 + ", tel2=" + tel2 + ", tel3=" + tel3 + ", birthday=" + birthday + "]";
	}


}
