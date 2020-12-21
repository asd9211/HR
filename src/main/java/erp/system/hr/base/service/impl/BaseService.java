package erp.system.hr.base.service.impl;

import java.util.List;

import erp.system.hr.base.vo.CodeInfo;

public interface BaseService {

	public List<CodeInfo> getCodeInfoList(String groupType, String codeName);

}
