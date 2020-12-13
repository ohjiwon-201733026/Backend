package net.skhu.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.ResultMap;
import org.apache.ibatis.annotations.Select;

import net.skhu.dto.Product;

@Mapper
public interface ProductMapper {

	@ResultMap("ProductWithCategory")
	@Select("select p.*, c. title, c.titleEng\r\n" +
			"from category c join product p\r\n" +
			"on c.id=p.categoryId")
	List<Product> findAll();

}
