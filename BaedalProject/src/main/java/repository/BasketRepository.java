package repository;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import command.PaymentCommand;
import model.AddrListDTO;
import model.BasketDTO;
import model.CartDTO;
import model.MenuInfoDTO;
import model.OrderDTO;
import model.OrderListDTO;
import model.ReviewDTO;

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


	public void payInsert(OrderDTO dto) {
		statement = namespace + ".payInsert";
		sqlSession.insert(statement,dto);
	}
	
	public String orderNum() {
		statement = namespace + ".orderNum";
		return sqlSession.selectOne(statement);
	}
	
	public PaymentCommand paymentCk(String orderNum) {
		statement = namespace + ".paymentCk";
		return sqlSession.selectOne(statement,orderNum);
	}
	
	
	public List<OrderListDTO> orderList(OrderListDTO dto){
		statement = namespace + ".orderList";
		return sqlSession.selectList(statement,dto);
	}
	
	public int count(String memId) {
		statement = namespace + ".count";
		return sqlSession.selectOne(statement,memId);
	}
	
	public List<MenuInfoDTO> listMenuName(String orderNum){
		statement = namespace + ".listMenuName";
		return sqlSession.selectList(statement, orderNum);
	}
	
	
	public String headerCart(String memId) {
		statement = namespace + ".headerCart";
		return sqlSession.selectOne(statement, memId);

	}
	
	public List<AddrListDTO> addrList(String memId){
		statement = namespace + ".addrList";
		return sqlSession.selectList(statement, memId);
	}
	
	public void addReview(ReviewDTO dto) {
		statement = namespace + ".addReview";
		sqlSession.insert(statement,dto);
	}
	
	public void cartInsert(CartDTO dto) {
		statement = namespace + ".cartInsert";
		sqlSession.insert(statement,dto);
	}
	
	
}
