package repository;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import Model.NoticeDTO;

public class NoticeRepository {

	@Autowired
	SqlSession sqlSession;
	
	String statement;
	String namespace = "mappers.NoticeMapper";
	public void memNoticeResist(NoticeDTO dto) {
		statement=namespace+".memNoticeResist";
		sqlSession.insert(statement, dto);
	}
	public List<NoticeDTO> getMemList() {
		statement=namespace+".memNoticeList";
		return sqlSession.selectList(statement);
	}
	public void shopNoticeResist(NoticeDTO dto) {
		statement=namespace+".shopNoticeResist";
		sqlSession.insert(statement, dto);
		
	}
	public List<NoticeDTO> getShopList() {
		statement=namespace+".shopNoticeList";
		return sqlSession.selectList(statement);
	}
}
