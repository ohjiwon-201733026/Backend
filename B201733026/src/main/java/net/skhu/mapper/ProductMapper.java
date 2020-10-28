package net.skhu.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import net.skhu.dto.Product;

@Mapper
public interface ProductMapper {
	@Select("SELECT p.*,c.title as 'categoryName' FROM product p JOIN category c ON p.categoryId=c.id")
	public List<Product> findAll();
	
	@Select("SELECT * FROM product WHERE id=#{id}")
	public Product findOne(int id);
	
	@Update("UPDATE product SET name=#{name},categoryId=#{categoryId},price=#{price},quantity=#{quantity} WHERE id=#{id}")
	public void update(Product product);
	

}
