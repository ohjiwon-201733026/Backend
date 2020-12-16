package net.skhu.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import net.skhu.entity.Engineer;
import net.skhu.repository.EngineerRepository;

@RestController
public class EngineerController {

	@Autowired EngineerRepository engineerRepository;

	@RequestMapping("exam/test1")
	public List<Engineer> test1(@RequestParam("id")int id){
		return engineerRepository.findByRoleId(id);
	}

	@RequestMapping("exam/test2")
	public List<Engineer> test2(@RequestParam("id")int id){
		return engineerRepository.findByRoleIdOrderByName(id);
	}


}
