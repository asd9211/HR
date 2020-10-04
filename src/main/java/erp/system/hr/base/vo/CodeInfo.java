package erp.system.hr.base.vo;

import org.apache.ibatis.type.Alias;

@Alias("codeInfo")
public class CodeInfo {


	private String groupType;
	private String code;
	private String codeName;
	public String getGroupType() {
		return groupType;
	}
	public void setGroupType(String groupType) {
		this.groupType = groupType;
	}
	public String getCode() {
		return code;
	}
	public void setCode(String code) {
		this.code = code;
	}
	public String getCodeName() {
		return codeName;
	}
	public void setCodeName(String codeName) {
		this.codeName = codeName;
	}
	@Override
	public String toString() {
		return "CodeInfo [groupType=" + groupType + ", code=" + code + ", codeName=" + codeName + "]";
	}
	
	
	
	
}
