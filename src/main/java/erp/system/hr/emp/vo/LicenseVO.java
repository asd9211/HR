package erp.system.hr.emp.vo;

public class LicenseVO {

	private String empCode;
	private String no;
	private String name;
	private String agency;
	private String issueDate;
	
	
	public String getIssueDate() {
		return issueDate;
	}
	public void setIssueDate(String issueDate) {
		this.issueDate = issueDate;
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
	public String getAgency() {
		return agency;
	}
	public void setAgency(String agency) {
		this.agency = agency;
	}
	@Override
	public String toString() {
		return "LicenseVO [empCode=" + empCode + ", no=" + no + ", name=" + name + ", agency=" + agency + ", issueDate="
				+ issueDate + "]";
	}
	
	
	
}
