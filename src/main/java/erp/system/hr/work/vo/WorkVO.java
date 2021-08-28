package erp.system.hr.work.vo;

public class WorkVO {
    private String empCode;
    private String workDay;
    private String startTime;
    private String endTime;
    private String bigo;
    private String duty;
    private String position;
    private String payType;
    
	public String getDuty() {
		return duty;
	}
	public void setDuty(String duty) {
		this.duty = duty;
	}
	public String getPosition() {
		return position;
	}
	public void setPosition(String position) {
		this.position = position;
	}
	public String getPayType() {
		return payType;
	}
	public void setPayType(String payType) {
		this.payType = payType;
	}
	public String getEmpCode() {
		return empCode;
	}
	public void setEmpCode(String empCode) {
		this.empCode = empCode;
	}
	public String getWorkDay() {
		return workDay;
	}
	public void setWorkDay(String workDay) {
		this.workDay = workDay;
	}
	public String getStartTime() {
		return startTime;
	}
	public void setStartTime(String startTime) {
		this.startTime = startTime;
	}
	public String getEndTime() {
		return endTime;
	}
	public void setEndTime(String endTime) {
		this.endTime = endTime;
	}
	public String getBigo() {
		return bigo;
	}
	public void setBigo(String bigo) {
		this.bigo = bigo;
	}
	@Override
	public String toString() {
		return "WorkVO [empCode=" + empCode + ", workDay=" + workDay + ", startTime=" + startTime + ", endTime="
				+ endTime + ", bigo=" + bigo + ", duty=" + duty + ", position=" + position + ", payType=" + payType
				+ "]";
	}

    
}
