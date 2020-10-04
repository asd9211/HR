package erp.system.hr.base.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import erp.system.hr.base.vo.CodeInfo;


@Mapper
public interface BaseMapper {
	public List<CodeInfo> getCodeInfoList(String groupType);

}
