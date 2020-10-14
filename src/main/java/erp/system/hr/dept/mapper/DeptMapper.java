package erp.system.hr.dept.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import erp.system.hr.dept.vo.DeptVO;

@Mapper
public interface DeptMapper {

	public List<DeptVO> getDept(String deptName);
	public List<DeptVO> getDeptList();
	public List<DeptVO> getDeptListByLevel();
	
}
