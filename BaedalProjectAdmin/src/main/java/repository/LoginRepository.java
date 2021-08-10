package repository;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import Model.AuthInfoDTO;

public class LoginRepository {

	@Autowired
	SqlSession sqlSession;
	
	String statement;
	String namespace = "mappers.LoginMapper";
	
	public AuthInfoDTO login(String adminId) {
		statement = namespace + ".login";
		return sqlSession.selectOne(statement, adminId);
	}

	public AuthInfoDTO login2(String adminNum) {
		statement = namespace + ".login2";
		return sqlSession.selectOne(statement, adminNum);
	}

}
