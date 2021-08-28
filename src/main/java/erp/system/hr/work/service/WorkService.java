package erp.system.hr.work.service;

import java.util.List;
import java.util.Map;

import erp.system.hr.work.vo.WorkVO;

public interface WorkService {
	public List<WorkVO> getWorkByempCode(String empCode, String workDay);	
	public Integer insertWorkStart(WorkVO wvo);
	public Integer updateWorkEnd(WorkVO wvo);
	public List<WorkVO> getWorkByDate(Map<String,String> searchDate);
}
