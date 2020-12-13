package net.skhu.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import net.skhu.mapper.ProductMapper;

@Controller
@RequestMapping("product")
public class ProductController {

	@Autowired ProductMapper prodctMapper;

	@RequestMapping("list")
	public String list(Model model) {
		model.addAttribute("products",prodctMapper.findAll());
		return "product/list";
	}
}
