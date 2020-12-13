package net.skhu.repository;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.JpaRepository;

import net.skhu.entity.Product;

public interface ProductRepository extends JpaRepository<Product, Integer>{

	List<Product> findByCategoryIdOrderByPrice(int categoryId);
	int countByCategoryId(int  categoryId);
	List<Product> findByCategoryTitle(String title);
	List<Product> findByName(String name);

	@Transactional
	void deleteByName(String name);

}
