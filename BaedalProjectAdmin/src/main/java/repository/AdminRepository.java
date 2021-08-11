package repository;


import java.util.List;

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


	public List<AdminDTO> adminsList() {
		statement=namespace+".adminsList";
		return sqlSession.selectList(statement);
	}


	public AdminDTO adminDetail(String adminNum) {
		statement=namespace+".adminDetail";
		return sqlSession.selectOne(statement, adminNum);
	}


	public void adminDel(String adminNum) {
		statement=namespace+".adminDel";
		sqlSession.delete(statement, adminNum);
	}

	
}
