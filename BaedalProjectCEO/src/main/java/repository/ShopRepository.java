package repository;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import Model.CompanyDTO;
import Model.MemberDTO;

public class ShopRepository {
	@Autowired
	SqlSession sqlSession;
	String namespace = "mappers.shopMapper";
	String statement;
	
	public void shopUpdate(CompanyDTO dto) {
		statement = namespace + ".shopUpdate";
		sqlSession.update(statement, dto);
	}
	
	public List<CompanyDTO> shopList(String ceoId) {
		statement = namespace +".shopList";
		return sqlSession.selectList(statement, ceoId);
	}
	
	public CompanyDTO shopInfo(String comName) {
		statement = namespace + ".shopInfo";
		return sqlSession.selectOne(statement, comName);
	}
	
	public void shopJoin(CompanyDTO dto) {
		statement = namespace + ".shopJoin";
		sqlSession.insert(statement, dto);
	}
	
	public void shopInsert(CompanyDTO dto) {
		statement = namespace + ".shopJoin";
		 sqlSession.insert(statement, dto);
	}
}
