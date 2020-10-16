package erp.system.hr.work.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import erp.system.hr.work.vo.WorkVO;

@Mapper
public interface WorkMapper {
	public List<WorkVO> getWorkByempCode(String empCode, String workDay);
	public Integer insertWorkStart(WorkVO wvo);
	public Integer updateWorkEnd(WorkVO wvo);
}
