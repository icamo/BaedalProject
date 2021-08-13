package repository;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import Model.CompanyDTO;

public class CompanyRepository {
	@Autowired
	SqlSession sqlSession;
	String namespace = "mappers.companyMapper";
	String statement;
	
	public List<CompanyDTO> comList(CompanyDTO dto) {
		statement = namespace +".comList";
		return sqlSession.selectList(statement,dto);
	}

	public void shopJoin(CompanyDTO dto) {
		statement = namespace + ".shopJoin";
		sqlSession.insert(statement, dto);
	}
	
	public List<CompanyDTO> myShopList(){
		statement = namespace + ".myShopList";
		return sqlSession.selectList(statement);
	}
}
