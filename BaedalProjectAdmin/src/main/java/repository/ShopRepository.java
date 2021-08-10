package repository;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import Model.ShopDTO;

public class ShopRepository {
	
	@Autowired
	SqlSession sqlSession;
	
	String statement;
	String namespace = "mappers.ShopMapper";
	
	
	public List<ShopDTO> shopList() {
		statement = namespace + ".shopList";
		return sqlSession.selectList(statement);
	}
	
	
}
