package erp.system.hr.dept.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import erp.system.hr.dept.mapper.DeptMapper;
import erp.system.hr.dept.service.DeptService;
import erp.system.hr.dept.vo.DeptVO;

@Service
public class DeptServiceImpl implements DeptService {

	
	private final  DeptMapper dm;
	
	@Autowired
	public DeptServiceImpl(DeptMapper dm) {
		this.dm = dm;
	}
	@Override
	public List<DeptVO> getDept(String deptName) {
		// TODO Auto-generated method stub
		return dm.getDept(deptName);
	}

	@Override
	public List<DeptVO> getDeptList() {
		// TODO Auto-generated method stub
		return dm.getDeptList();
	}
	@Override
	public List<DeptVO> getDeptListByLevel() {
		// TODO Auto-generated method stub
		return dm.getDeptListByLevel();
	}
	@Override
	public Integer insertDept(DeptVO dvo) {
		// TODO Auto-generated method stub
		return dm.insertDept(dvo);
	}
	@Override
	public DeptVO getDeptBydeptCode(String deptCode) {
		// TODO Auto-generated method stub
		return dm.getDeptBydeptCode(deptCode);
	}

}
