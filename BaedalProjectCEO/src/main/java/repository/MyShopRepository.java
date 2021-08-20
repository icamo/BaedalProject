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

	public void comPhoneChange(CompanyDTO dto) {
		statement = namespace + ".comPhoneChange";
		sqlSession.insert(statement, dto);
	}

	public void shopUpdate(CompanyDTO dto) {
		statement = namespace + ".shopUpdate";
		sqlSession.update(statement, dto);
	}

	public void comNoticeEn(CompanyDTO dto) {
		statement = namespace + ".comNoticeEn";
		sqlSession.insert(statement, dto);
	}

	public void comNco(CompanyDTO dto) {
		statement = namespace + ".comNco";
		sqlSession.update(statement, dto);
	}
}
