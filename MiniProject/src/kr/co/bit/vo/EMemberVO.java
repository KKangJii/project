package kr.co.bit.vo;

/**회원정보를 위한 VO*/

public class EMemberVO {
	
	private String id;
	private String name;
	private String password;
	private String level;
	
	public EMemberVO() {
	
	}

	public EMemberVO(String id, String name, String password, String level) {
		this.id = id;
		this.name = name;
		this.password = password;
		this.level = level;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getLevel() {
		return level;
	}

	public void setLevel(String level) {
		this.level = level;
	}

	@Override
	public String toString() {
		return "EMemberVO [id=" + id + ", name=" + name + ", password=" + password + ", level=" + level + "]";
	}	
}
