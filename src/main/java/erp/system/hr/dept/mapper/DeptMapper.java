package erp.system.hr.dept.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import erp.system.hr.dept.vo.DeptVO;

@Mapper
public interface DeptMapper {

	public List<DeptVO> listByName(String deptName);
	public DeptVO listBydeptCode(String deptCode);
	public List<DeptVO> list();
	public List<DeptVO> listByLevel();
	public List<DeptVO> listByPage(int page);
	public Integer insert(DeptVO dvo);
	public Integer update(DeptVO dvo);
	
}
