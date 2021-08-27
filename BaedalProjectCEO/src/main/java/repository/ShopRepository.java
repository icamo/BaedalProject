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
	
	public CompanyDTO shopInfo(String comId) {
		statement = namespace + ".shopInfo";
		return sqlSession.selectOne(statement, comId);
	}
	
	public void shopJoin(CompanyDTO dto) {
		statement = namespace + ".shopJoin";
		sqlSession.insert(statement, dto);
	}
	
	public void shopInsert(CompanyDTO dto) {
		statement = namespace + ".shopJoin";
		 sqlSession.insert(statement, dto);
	}

	public void shopDel(String comId) {
		statement = namespace +".shopDel1";
		sqlSession.delete(statement, comId);
		
		statement = namespace +".shopDel2";
		sqlSession.delete(statement, comId);
		
		//MENUTITLE
		statement = namespace +".shopDel3";
		sqlSession.delete(statement, comId);
		
		//COMPANY
		statement = namespace +".shopDel4";
		sqlSession.delete(statement, comId);
	}
}
