package repository;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;

import model.BasketDTO;
import model.MemberDTO;

public class BasketRepository {

	@Autowired
	SqlSession sqlSession;
	
	String namespace = "mappers.memberMapper";
	String statement;
	
	public List<BasketDTO> basketList(String memId) {
		statement = namespace + ".basketList";
		return sqlSession.selectList(statement, memId);		
	}
	
	public void basketDel(BasketDTO basketDTO) {
		statement = namespace + ".basketDel";
		sqlSession.delete(statement, basketDTO);
	}
	
	public void addCart(BasketDTO basketDTO) {
		statement = namespace + ".addCart";
		sqlSession.insert(statement, basketDTO);
	}

	

	
	
}
