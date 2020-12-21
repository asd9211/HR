package erp.system.hr.apt.vo;

public class AptmntVO {

	private String empCode;
	private String appointDate;
	private String appointType;
	
	private String beforeDept;
	private String beforePosition;
	private String beforeDuty;

	private String afterDept;
	private String afterPosition;
	private String afterDuty;
	private String bigo;
	
	public String getEmpCode() {
		return empCode;
	}
	public void setEmpCode(String empCode) {
		this.empCode = empCode;
	}
	public String getAppointDate() {
		return appointDate;
	}
	public void setAppointDate(String appointDate) {
		this.appointDate = appointDate;
	}
	public String getAppointType() {
		return appointType;
	}
	public void setAppointType(String appointType) {
		this.appointType = appointType;
	}
	public String getBeforeDept() {
		return beforeDept;
	}
	public void setBeforeDept(String beforeDept) {
		this.beforeDept = beforeDept;
	}
	public String getBeforePosition() {
		return beforePosition;
	}
	public void setBeforePosition(String beforePosition) {
		this.beforePosition = beforePosition;
	}
	public String getBeforeDuty() {
		return beforeDuty;
	}
	public void setBeforeDuty(String beforeDuty) {
		this.beforeDuty = beforeDuty;
	}
	public String getAfterDept() {
		return afterDept;
	}
	public void setAfterDept(String afterDept) {
		this.afterDept = afterDept;
	}
	public String getAfterPosition() {
		return afterPosition;
	}
	public void setAfterPosition(String afterPosition) {
		this.afterPosition = afterPosition;
	}
	public String getAfterDuty() {
		return afterDuty;
	}
	public void setAfterDuty(String afterDuty) {
		this.afterDuty = afterDuty;
	}
	public String getBigo() {
		return bigo;
	}
	public void setBigo(String bigo) {
		this.bigo = bigo;
	}
	@Override
	public String toString() {
		return "AptmntVO [empCode=" + empCode + ", appointDate=" + appointDate + ", appointType=" + appointType
				+ ", beforeDept=" + beforeDept + ", beforePosition=" + beforePosition + ", beforeDuty=" + beforeDuty
				+ ", afterDept=" + afterDept + ", afterPosition=" + afterPosition + ", afterDuty=" + afterDuty
				+ ", bigo=" + bigo + "]";
	}
	
	
}
