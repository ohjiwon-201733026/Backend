package net.skhu.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import net.skhu.entity.Product;
import net.skhu.repository.CategoryRepository;
import net.skhu.repository.ProductRepository;

@RestController
@RequestMapping("test")
public class TestController {

	@Autowired ProductRepository productRepository;
	@Autowired CategoryRepository categoryRepository;

	@RequestMapping("test1")
	public List<Product> test1() {
		return productRepository.findByCategoryIdOrderByPrice(1);
	}

	@RequestMapping("test2")
	public int test2() {
		return productRepository.countByCategoryId(1);
	}

	@RequestMapping("test3")
	public List<Product> test3() {
		return productRepository.findByCategoryTitle("음료수");
	}

//	@RequestMapping("test4")
//	public List<Product> test4() {
//		productRepository.deleteByName("하이트");
//		//return productRepository.findByName("하이트");
//	}


}
