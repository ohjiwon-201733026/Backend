package net.skhu.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import net.skhu.entity.Category;
import net.skhu.repository.CategoryRepository;

@Controller
@RequestMapping("/category")
public class CategoryController {

	@Autowired CategoryRepository categoryRepository;

	@RequestMapping("list")
	public String list(Model model) {
		List<Category> categories=categoryRepository.findAll();
		model.addAttribute("categories",categories);
		return "category/list";
	}

}
