package webSocket;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

public class WebSocketRepository extends AbstractRepository{
	SqlSession sqlSession;
	String namespace = "mappers.orderMapper";
	String statement;
	public OrderMenuInfoDTO orderList(String orderNum) {
		sqlSession = getSqlSessionFactory().openSession();
		statement = namespace +".orderList";
		return sqlSession.selectOne(statement, orderNum);
	}
}
