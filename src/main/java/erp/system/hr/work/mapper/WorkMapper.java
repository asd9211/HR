package erp.system.hr.work.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import erp.system.hr.work.vo.WorkVO;

@Mapper
public interface WorkMapper {
	public List<WorkVO> listByempCode(String empCode, String workDay);
	public Integer insert(WorkVO wvo);
	public Integer update(WorkVO wvo);
	public List<WorkVO> listByDate(Map<String,String> searchDate);
}
