package repository;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import Model.AuthInfoDTO;

public class LoginRepository {
	@Autowired
	SqlSession sqlSession;
	String statement;
	String nameSpace = "mappers.LoginMapper";
	
	public AuthInfoDTO login(String userId) {
		statement = nameSpace + ".Login";
		return sqlSession.selectOne(statement, userId);
	}
}
