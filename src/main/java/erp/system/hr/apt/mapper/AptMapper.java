package erp.system.hr.apt.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import erp.system.hr.apt.vo.AptmntVO;

@Mapper
public interface AptMapper {
	
	public int insert(AptmntVO aptVo);
	public List<AptmntVO> list();
	public List<AptmntVO> listByName(String empName);

}
