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
		return dm.listByName(deptName);
	}

	@Override
	public List<DeptVO> getDeptList() {
		// TODO Auto-generated method stub
		return dm.list();
	}
	@Override
	public List<DeptVO> getDeptListByLevel() {
		// TODO Auto-generated method stub
		return dm.listByLevel();
	}
	@Override
	public Integer addDept(DeptVO dvo) {
		// TODO Auto-generated method stub
		return dm.insert(dvo);
	}
	@Override
	public DeptVO getDeptBydeptCode(String deptCode) {
		// TODO Auto-generated method stub
		return dm.listBydeptCode(deptCode);
	}
	@Override
	public Integer modifyDept(DeptVO dvo) {
		// TODO Auto-generated method stub
		return dm.update(dvo);
	}
	@Override
	public List<DeptVO> getDeptListByPage(int page) {
		// TODO Auto-generated method stub
		return dm.listByPage(page);
	}

}
