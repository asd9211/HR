package erp.system.hr.emp.vo;

import org.apache.ibatis.type.Alias;


public class FamVO {
	private String empCode;
	private String no;
	private String name;
	private String birth;
	private String relation;
	public String getEmpCode() {
		return empCode;
	}
	public void setEmpCode(String empCode) {
		this.empCode = empCode;
	}

	public String getNo() {
		return no;
	}
	public void setNo(String no) {
		this.no = no;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}

	
	public String getBirth() {
		return birth;
	}
	public void setBirth(String birth) {
		this.birth = birth;
	}
	public String getRelation() {
		return relation;
	}
	public void setRelation(String relation) {
		this.relation = relation;
	}
	@Override
	public String toString() {
		return "FamVO [empCode=" + empCode + ", no=" + no + ", name=" + name + ", birth=" + birth + ", relation="
				+ relation + "]";
	}
	
	
}
