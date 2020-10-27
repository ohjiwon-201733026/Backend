package net.skhu.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Options;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import net.skhu.dto.Employee;

@Mapper
public interface EmployeeMapper {
	
	@Select("SELECT e.*,d.title as 'departmentName' FROM employee e JOIN department d ON e.departmentId=d.id")
	public List<Employee> findAll();
	
	@Select("SELECT * FROM employee WHERE id=#{id}")
	public Employee findOne(int id);
	
	@Insert("INSERT employee(employeeNo,name,departmentId,salary,sex) VALUES(#{employeeNo},#{name},#{departmentId},#{salary},#{sex})")
	@Options(useGeneratedKeys=true,keyProperty="id")
	public void insert(Employee employee);
	
}
