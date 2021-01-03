package net.skhu.entity;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;

import com.fasterxml.jackson.annotation.JsonIgnore;

import lombok.Data;

@Data
@Entity
public class Department {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	int id;

	String name;
	String shortName;
	String phone;

	@JsonIgnore
	@OneToMany(mappedBy="department")
	List<Student> students;

	@JsonIgnore
	@OneToMany(mappedBy="department")
	List<Professor> professors;

}
