package net.skhu.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import net.skhu.dto.Engineer;
import net.skhu.mapper.ProjectMapper;

@RestController
public class ProjectController {

	@Autowired ProjectMapper projectMapper;

	@RequestMapping("exam/test3")
	public List<Engineer> test3(@RequestParam("id")int id){
		return projectMapper.findByProjectId(id);
	}
}
