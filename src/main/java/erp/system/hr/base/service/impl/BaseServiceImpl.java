package erp.system.hr.base.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import erp.system.hr.base.mapper.BaseMapper;
import erp.system.hr.base.vo.CodeInfo;

@Service
public class BaseServiceImpl implements BaseService {

	private BaseMapper bm;
	
	
	@Autowired
	public BaseServiceImpl(BaseMapper bm) {
		this.bm = bm;
	}
	
	@Override
	public List<CodeInfo> getCodeInfoList(String groupType, String codeName) {
		// TODO Auto-generated method stub
		return bm.getCodeInfoList(groupType, codeName);
	}

}
