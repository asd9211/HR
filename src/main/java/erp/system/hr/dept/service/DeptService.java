package erp.system.hr.dept.service;

import java.util.List;

import erp.system.hr.dept.vo.DeptVO;

public interface DeptService {
	public List<DeptVO> getDeptList();
	public DeptVO getDeptBydeptCode(String deptCode);
	public List<DeptVO> getDept(String deptName);
	public List<DeptVO> getDeptListByLevel();
	
	public Integer insertDept(DeptVO dvo);
}
