package repository;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import Model.RecommandDTO;
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


	public ShopDTO shopDetail(String comId) {
		statement = namespace + ".shopDetail";
		return sqlSession.selectOne(statement, comId);
	}


	public void shopAppr(String comId) {
		statement = namespace + ".shopAppr";
		sqlSession.update(statement, comId);
	}


	public List<RecommandDTO> recommandShopList() {
		statement = namespace + ".recommandShopList";
		return sqlSession.selectList(statement);
	}


	public RecommandDTO recommandDetail(String recNum) {
		statement = namespace + ".recommandDetail";
		return sqlSession.selectOne(statement, recNum);
	}
	
	
}
