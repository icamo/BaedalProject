package repository;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import model.BasketDTO;

public class BasketRepository {

	@Autowired
	SqlSession sqlSession;
	
	String namespace = "mappers.memberMapper";
	String statement;
	
	public List<BasketDTO> basketList(BasketDTO basketDTO) {
		statement = namespace + ".basketList";
		return sqlSession.selectList(statement, basketDTO);		
	}
	
	
}
