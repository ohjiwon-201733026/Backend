package net.skhu.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import net.skhu.entity.Engineer;
import net.skhu.mapper.EngineerMapper;

@RestController
@RequestMapping("exam")
public class ExamController {

	@Autowired
	EngineerMapper engineerMapper;

	@RequestMapping("test3")
	public List<Engineer> test3(int id) {
		return engineerMapper.findByProjectId(id);
	}
}
