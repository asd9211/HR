package erp.system.hr.dept.vo;

import org.apache.ibatis.type.Alias;

@Alias("deptVO")
public class DeptVO {

	private String rowNum;
	private String deptCode;
	private String deptName;
	private String parentDept;
	private String parentDeptName;
	private String appointDate;
	private String endDate;
	private String bigo;
	private String level;
	
	
	
	public String getRowNum() {
		return rowNum;
	}
	public void setRowNum(String rowNum) {
		this.rowNum = rowNum;
	}
	public String getParentDeptName() {
		return parentDeptName;
	}
	public void setParentDeptName(String parentDeptName) {
		this.parentDeptName = parentDeptName;
	}
	public String getLevel() {
		return level;
	}
	public void setLevel(String level) {
		this.level = level;
	}
	public String getDeptCode() {
		return deptCode;
	}
	public void setDeptCode(String deptCode) {
		this.deptCode = deptCode;
	}
	public String getDeptName() {
		return deptName;
	}
	public void setDeptName(String deptName) {
		this.deptName = deptName;
	}
	public String getParentDept() {
		return parentDept;
	}
	public void setParentDept(String parentDept) {
		this.parentDept = parentDept;
	}
	public String getAppointDate() {
		return appointDate;
	}
	public void setAppointDate(String appointDate) {
		this.appointDate = appointDate;
	}
	public String getEndDate() {
		return endDate;
	}
	public void setEndDate(String endDate) {
		this.endDate = endDate;
	}
	public String getBigo() {
		return bigo;
	}
	public void setBigo(String bigo) {
		this.bigo = bigo;
	}
	@Override
	public String toString() {
		return "DeptVO [rowNum=" + rowNum + ", deptCode=" + deptCode + ", deptName=" + deptName + ", parentDept="
				+ parentDept + ", parentDeptName=" + parentDeptName + ", appointDate=" + appointDate + ", endDate="
				+ endDate + ", bigo=" + bigo + ", level=" + level + "]";
	}
	
	
	
}
