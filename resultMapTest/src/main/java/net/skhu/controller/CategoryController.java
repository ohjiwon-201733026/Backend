package net.skhu.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import net.skhu.mapper.CategoryMapper;

@Controller
@RequestMapping("/category")
public class CategoryController {

	@Autowired CategoryMapper categoryMapper;

	@RequestMapping("list")
	public String list(Model model) {
		model.addAttribute("categories",categoryMapper.findAll());
		return "category/list";
	}
}
