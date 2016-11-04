package home.member;

// DTO 계열 클래스 (Data Transfer Object)
// 포장 상자 클래스
// DB의 1줄에 해당하는 정보를 보관할 공간을 갖는다


public class MemberDTO {
	private int no;
	private String name;
	private String id;
	private String pw;
	private String gender;
	private String birth;
	private String tel;
	private String email;
	private String joindate;
	private String power;
	//생성자 자동완성 : source 메뉴 -> generate constructor using fields...
	// Setter Getter 자동완성 : source 메뉴 -> generate getters and setters...
	public MemberDTO() {
		super();
	}
	public MemberDTO(int no, String name, String id, String pw, String gender, String birth, String tel, String email,
			String joindate, String power) {
		super();
		this.no = no;
		this.name = name;
		this.id = id;
		this.pw = pw;
		this.gender = gender;
		this.birth = birth;
		this.tel = tel;
		this.email = email;
		this.joindate = joindate;
		this.power = power;
	}
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getBirth() {
		return birth;
	}
	public void setBirth(String birth) {
		this.birth = birth;
	}
	public String getTel() {
		return tel==null?"":tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getEmail() {
		return email==null?"":email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getJoindate() {
		return joindate;
	}
	public void setJoindate(String joindate) {
		this.joindate = joindate;
	}
	public String getPower() {
		return power;
	}
	public void setPower(String power) {
		this.power = power;
	}
	
	
	
	
}
