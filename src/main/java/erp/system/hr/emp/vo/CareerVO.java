package erp.system.hr.emp.vo;

public class CareerVO {

	private String empCode;
	private String no;
	private String name;
	private String work;
	private String period;
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
	public String getWork() {
		return work;
	}
	public void setWork(String work) {
		this.work = work;
	}
	public String getPeriod() {
		return period;
	}
	public void setPeriod(String period) {
		this.period = period;
	}
	@Override
	public String toString() {
		return "CareerVO [empCode=" + empCode + ", no=" + no + ", name=" + name + ", work=" + work + ", period="
				+ period + "]";
	}

	

}
