package repository;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import Model.NoticeDTO;

public class FnqRepository {

	@Autowired
	SqlSession sqlSession;
	
	String statement;
	String namespace = "mappers.FnqRepository";
	
	public void memFnqResist(NoticeDTO dto) {
		statement=namespace+".memFnqResist";
		sqlSession.insert(statement, dto);
	}

	public List<NoticeDTO> memFnqList() {
		statement=namespace+".memFnqList";
		return sqlSession.selectList(statement);
	}

	public void shopFnqResist(NoticeDTO dto) {
		statement=namespace+".shopFnqResist";
		sqlSession.insert(statement, dto);
	}

	public List<NoticeDTO> shopFnqList() {
		statement=namespace+".shopFnqList";
		return sqlSession.selectList(statement);
	}

	public NoticeDTO memFnqDetail(String noticeNum) {
		statement = namespace+".memFnqDetail";
		return sqlSession.selectOne(statement, noticeNum);
	}

	public void memFnqDel(String noticeNum) {
		statement = namespace+".memFnqDel";
		sqlSession.delete(statement, noticeNum);
	}

	public NoticeDTO shopFnqDetail(String noticeNum) {
		statement = namespace + ".shopFnqDetail";
		return sqlSession.selectOne(statement, noticeNum);
	}

	public void shopFnqDel(String noticeNum) {
		statement = namespace + ".shopFnqDel";
		sqlSession.delete(statement, noticeNum);
	}
}
