package repository;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import Model.CeoNoticeDTO;

public class MainRepository {
	@Autowired
	SqlSession sqlSession;
	String statement;
	String nameSpace = "mappers.mainMapper";

	public List<CeoNoticeDTO> custList() {
		statement = nameSpace + ".custList";
		return sqlSession.selectList(statement);
	}

	public CeoNoticeDTO CusInfo(String ceoNoticeNum) {
		statement = nameSpace + ".cusInfo";
		return sqlSession.selectOne(statement, ceoNoticeNum);
	}
}
