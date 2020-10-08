package erp.system.hr.emp.vo;

import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.type.Alias;

@Alias("employeeVO")
public class EmployeeVO {

	private String empCode     ;
	private String empNameKor ; 
	private String empNameEng ;         
	private String empNameChi ;          
	private String deptCode    ;          
	private String deptName    ;          
	private String phoneNumber    ;       
	private String position  ;
	private String positionName  ;
	private String duty      ;
	private String dutyName      ;
	private String empStatus   ;
	private String startDate   ;  
	private String retireDate  ;          
	private String payGubun       ;
	private String empType        ;
	private String email        ;
	private String realFileName;
	private String changedFileName;
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
	public String getDeptName() {
		return deptName;
	}
	public void setDeptName(String deptName) {
		this.deptName = deptName;
	}
	public String getPhoneNumber() {
		return phoneNumber;
	}
	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}
	public String getPosition() {
		return position;
	}
	public void setPosition(String position) {
		this.position = position;
	}
	public String getPositionName() {
		return positionName;
	}
	public void setPositionName(String positionName) {
		this.positionName = positionName;
	}
	public String getDuty() {
		return duty;
	}
	public void setDuty(String duty) {
		this.duty = duty;
	}
	public String getDutyName() {
		return dutyName;
	}
	public void setDutyName(String dutyName) {
		this.dutyName = dutyName;
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
	public String getPayGubun() {
		return payGubun;
	}
	public void setPayGubun(String payGubun) {
		this.payGubun = payGubun;
	}
	public String getEmpType() {
		return empType;
	}
	public void setEmpType(String empType) {
		this.empType = empType;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getRealFileName() {
		return realFileName;
	}
	public void setRealFileName(String realFileName) {
		this.realFileName = realFileName;
	}
	public String getChangedFileName() {
		return changedFileName;
	}
	public void setChangedFileName(String changedFileName) {
		this.changedFileName = changedFileName;
	}
	@Override
	public String toString() {
		return "EmployeeVO [empCode=" + empCode + ", empNameKor=" + empNameKor + ", empNameEng=" + empNameEng
				+ ", empNameChi=" + empNameChi + ", deptCode=" + deptCode + ", deptName=" + deptName + ", phoneNumber="
				+ phoneNumber + ", position=" + position + ", positionName=" + positionName + ", duty=" + duty
				+ ", dutyName=" + dutyName + ", empStatus=" + empStatus + ", startDate=" + startDate + ", retireDate="
				+ retireDate + ", payGubun=" + payGubun + ", empType=" + empType + ", email=" + email
				+ ", realFileName=" + realFileName + ", changedFileName=" + changedFileName + "]";
	}
	
}
