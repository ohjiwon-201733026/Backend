package net.skhu.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import net.skhu.mapper.RegisterMapper;

@Controller
@RequestMapping("register")
public class RegisterController {
	@Autowired
	RegisterMapper registerMapper;

	@RequestMapping("list")
	public String list(Model model) {
		System.out.println("김경모");
		model.addAttribute("registers", registerMapper.findAll());
		return "register/list";
	}
}
