package erp.system.hr.work.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import erp.system.hr.work.mapper.WorkMapper;
import erp.system.hr.work.service.WorkService;
import erp.system.hr.work.vo.WorkVO;

@Service
public class WorkServiceImpl implements WorkService {

	private final WorkMapper wm;
	
	@Autowired
	WorkServiceImpl( WorkMapper wm){
		this.wm = wm;
	}
	
	
	@Override
	public List<WorkVO> getWorkByempCode(String empCode, String workDay) {
		return wm.getWorkByempCode(empCode, workDay);
	}

	@Override
	public Integer insertWorkStart(WorkVO wvo) {
		return wm.insertWorkStart(wvo);
	}


	@Override
	public Integer updateWorkEnd(WorkVO wvo) {
		return wm.updateWorkEnd(wvo);
	}

}
