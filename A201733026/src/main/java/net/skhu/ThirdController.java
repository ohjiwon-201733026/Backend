package net.skhu;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("third")
public class ThirdController {
	
	@RequestMapping("test1")
	public String test1(Model model) {
		Student student=new Student();
		student.setId(1234);
		student.setStudentNumber("201733026");
		student.setStudentName("오지원");
		student.setEmail("ojw970725@gmail.com");
		model.addAttribute("student",student);
		
		return "third/test1";
	}
	
	@RequestMapping(value="test2", method=RequestMethod.GET)
	public String test2(Model model) {
		model.addAttribute("student",new Student());
		return "third/test2";
	}
	
	@RequestMapping(value="test2", method=RequestMethod.POST)
	public String test2(Model model,Student student) {
		
		model.addAttribute("message","저장되었습니다");
		return "third/test2";
	}
}
