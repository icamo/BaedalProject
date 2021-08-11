package repository;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import Model.MemberDTO;

public class MemberRepository {
	@Autowired
	SqlSession sqlSession;
	String nameSpace = "mappers.memberMapper";
	String statement;
	
	public void memJoin(MemberDTO dto) {
		statement = nameSpace + ".memJoin";
		sqlSession.insert(statement, dto);	
	}
	public MemberDTO memInfo(String ceoId) {
		statement = nameSpace + ".memInfo";
		return sqlSession.selectOne(statement, ceoId);
	}
}
