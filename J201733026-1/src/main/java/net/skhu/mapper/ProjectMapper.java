package net.skhu.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.ResultMap;

import net.skhu.dto.Engineer;

@Mapper
public interface ProjectMapper {
	@ResultMap("projectWithAssignmentWithEngineer")
	List<Engineer> findByProjectId(int id);

}
