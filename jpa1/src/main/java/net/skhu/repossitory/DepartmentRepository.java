package net.skhu.repossitory;

import org.springframework.data.jpa.repository.JpaRepository;

import net.skhu.entity.Department;

public interface DepartmentRepository extends JpaRepository<Department, Integer>{

}
