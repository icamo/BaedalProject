package repository;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import model.AuthInfoDTO;

public class LogInRepository {
	@Autowired
	SqlSession sqlSession;
	
	String namespace = "mappers.logInMapper";
	String statement;
	
	public AuthInfoDTO logIn(String userId) {
		statement = namespace + ".logIn";
		return sqlSession.selectOne(statement, userId);
		
	}
	
}
