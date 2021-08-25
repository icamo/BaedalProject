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
	
	String namespace = "mappers.basketMapper";
	String statement;
	
	public void addCart(BasketDTO dto) {
		statement = namespace + ".addCart";
		sqlSession.insert(statement, dto);
	}
	
	public List<BasketDTO> cartList(String memId){
		statement = namespace + ".cartList";
		return sqlSession.selectList(statement, memId);
	}
	
	public void cartOneDel(BasketDTO dto) {
		statement = namespace + ".cartOneDel";
		sqlSession.delete(statement, dto);
	}
	
	public void cartAllDel(String memId) {
		statement = namespace + ".cartAllDel";
		sqlSession.delete(statement, memId);
	}
	
	public String cartCheck(String memId) {
		statement = namespace + ".cartCheck";
		return sqlSession.selectOne(statement, memId);
	}

	

	
	
}
