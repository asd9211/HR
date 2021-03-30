package erp.system.hr.emp.vo;


public class SchoolVO {
	
	private String empCode;
	private String no;
	private String name;
	private String major;
	private String period;
	
	public String getPeriod() {
		return period;
	}
	public void setPeriod(String period) {
		this.period = period;
	}
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
	public String getMajor() {
		return major;
	}
	public void setMajor(String major) {
		this.major = major;
	}
	@Override
	public String toString() {
		return "SchoolVO [empCode=" + empCode + ", no=" + no + ", name=" + name + ", major=" + major + ", period="
				+ period + "]";
	}
	
	
}
