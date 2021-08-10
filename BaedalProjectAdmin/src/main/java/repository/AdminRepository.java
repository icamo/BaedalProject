package repository;


import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import Model.AdminDTO;

public class AdminRepository {
	
	@Autowired
	SqlSession sqlSession;
	
	String statement;
	String namespace = "mappers.AdminMapper";
	
	
	public void adminInsert(AdminDTO dto) {
		statement = namespace+".adminInsert";
		sqlSession.insert(statement, dto);
	}

	
}
