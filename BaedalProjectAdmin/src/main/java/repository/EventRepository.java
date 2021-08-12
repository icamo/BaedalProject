package repository;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import Model.EventDTO;

public class EventRepository {

	@Autowired
	SqlSession sqlSession;
	
	String statement;
	String namespace = "mappers.EventMapper";

	public void eventResist(EventDTO dto) {
		statement = namespace+".eventResist";
		sqlSession.insert(statement, dto);
	}
	public List<EventDTO> getEventList() {
		statement = namespace+".eventList";
		return sqlSession.selectList(statement);
	}
}
