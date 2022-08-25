package dto;

public class UserDTO {
	
	
	// DTO의 필드가 3개 이상 만들어보기 
	private String name;
	private String addrs;
	private String tel;
	
	
	
	//생성자 메소드 : 객체를 생성할때 사용하는 메소드 ( 메소드이기때문에 오버로딩또한 가능 )
	
	// 생성자 메소드 기본 형태 개발자가 별도로 안만든 상태
	// (자바는 기본적으로 별도의 생성자 메소드를 개발자가 생성하지않으면 비어있는 형태의 생성자 메소드를
	// 자동으로 제공하는 성질이 있다.
	
	
	//G & S
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getAddrs() {
		return addrs;
	}

	public void setAddrs(String addrs) {
		this.addrs = addrs;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}
	
	
	
}//class