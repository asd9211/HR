package erp.system.hr.util.vo;

public class FileVO {

	private String realFileName;
	private String changedFileName;
	
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
		return "FileVO [realFileName=" + realFileName + ", changedFileName=" + changedFileName + "]";
	} 
	
}
