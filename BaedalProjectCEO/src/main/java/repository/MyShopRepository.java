package repository;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import Model.CompanyDTO;
import Model.OrderDTO;
import Model.ReviewDTO;

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
	
	public List<OrderDTO> liveOrder(String comId){
		statement = namespace + ".liveOrder";
		return sqlSession.selectList(statement,comId);
	}
	
	public OrderDTO orderDetail(String orderNum) {
		statement = namespace + ".orderDetail";
		return sqlSession.selectOne(statement, orderNum);
	}
	
	public void orderUpdate (OrderDTO dto) {
		statement = namespace + ".orderUpdate";
		sqlSession.update(statement, dto);
	}
	
	public List<OrderDTO> shopOrderList(String comId){
		statement = namespace + ".shopOrderList";
		return sqlSession.selectList(statement,comId);
	}
	
	public List<ReviewDTO> reviewList(String comId){
		statement = namespace + ".reviewList";
		return sqlSession.selectList(statement,comId);
	}
	
	public void replyWrite (ReviewDTO dto) {
		statement = namespace + ".replyWrite";
		sqlSession.update(statement,dto);
	}
}
