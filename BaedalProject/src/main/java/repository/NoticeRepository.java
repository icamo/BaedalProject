package repository;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import model.MemNoticeDTO;

public class NoticeRepository {

	@Autowired
	SqlSession sqlSession;
	
	String namespace = "mappers.noticeMapper";
	String statement;
	
	public List<MemNoticeDTO> noticeList() {
		statement = namespace + ".noticeList";
		return sqlSession.selectList(statement);
	}

	public MemNoticeDTO centerInfo(String memNoticeNum) {
		statement = namespace + ".centerInfo";
		return sqlSession.selectOne(statement, memNoticeNum);
	}
	
	
}
