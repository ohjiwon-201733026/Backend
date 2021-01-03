package net.skhu.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import net.skhu.entity.Engineer;

@Mapper
public interface EngineerMapper {
	@Select("SELECT e.* FROM engineer e JOIN assignment a ON a.engineerId = e.id "
			+ " WHERE a.projectId = #{projectId}")
	List<Engineer> findByProjectId(int projectId);
}
