package repository;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import Model.CompanyDTO;

public class MyShopRepository {
	@Autowired
	SqlSession sqlSession;
	String namespace = "mappers.myShopMapper";
	String statement;
	
	public CompanyDTO myShopInfo(String comId) {
		statement = namespace + ".myShopInfo";
		return sqlSession.selectOne(statement, comId);
	}	
}
