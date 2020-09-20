package erp.system.hr.emp.vo;

import org.apache.ibatis.type.Alias;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

@Alias("employeeVO")
public class EmployeeVO {

	private String empCode     ;
	private String empNameKor ; 
	private String empNameEng ;         
	private String empNameChi ;          
	private String deptCode    ;          
	private String phoneNumber    ;       
	private int position  ;
	private int duty      ;
	private String empStatus   ;
	private String startDate   ;  
	private String retireDate  ;          
	private int payGubun       ;
	private int empType        ;
	private String email        ;
	
	
	public int getPosition() {
		return position;
	}
	public void setPosition(int position) {
		this.position = position;
	}
	public int getDuty() {
		return duty;
	}
	public void setDuty(int duty) {
		this.duty = duty;
	}
	public String getEmpCode() {
		return empCode;
	}
	public void setEmpCode(String empCode) {
		this.empCode = empCode;
	}
	public String getEmpNameKor() {
		return empNameKor;
	}
	public void setEmpNameKor(String empNameKor) {
		this.empNameKor = empNameKor;
	}
	public String getEmpNameEng() {
		return empNameEng;
	}
	public void setEmpNameEng(String empNameEng) {
		this.empNameEng = empNameEng;
	}
	public String getEmpNameChi() {
		return empNameChi;
	}
	public void setEmpNameChi(String empNameChi) {
		this.empNameChi = empNameChi;
	}
	public String getDeptCode() {
		return deptCode;
	}
	public void setDeptCode(String deptCode) {
		this.deptCode = deptCode;
	}
	public String getPhoneNumber() {
		return phoneNumber;
	}
	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}
	public String getEmpStatus() {
		return empStatus;
	}
	public void setEmpStatus(String empStatus) {
		this.empStatus = empStatus;
	}
	public String getStartDate() {
		return startDate;
	}
	public void setStartDate(String startDate) {
		this.startDate = startDate;
	}
	public String getRetireDate() {
		return retireDate;
	}
	public void setRetireDate(String retireDate) {
		this.retireDate = retireDate;
	}
	public int getPayGubun() {
		return payGubun;
	}
	public void setPayGubun(int payGubun) {
		this.payGubun = payGubun;
	}
	public int getEmpType() {
		return empType;
	}
	public void setEmpType(int empType) {
		this.empType = empType;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}

	@Override
	public String toString() {
		return "EmployeeVO [empCode=" + empCode + ", empNameKor=" + empNameKor + ", empNameEng=" + empNameEng
				+ ", empNameChi=" + empNameChi + ", deptCode=" + deptCode + ", phoneNumber=" + phoneNumber
				+ ", position=" + position + ", duty=" + duty + ", empStatus=" + empStatus + ", startDate=" + startDate
				+ ", retireDate=" + retireDate + ", payGubun=" + payGubun + ", empType=" + empType + ", email=" + email
				+ "]";
	}
	
	
}
