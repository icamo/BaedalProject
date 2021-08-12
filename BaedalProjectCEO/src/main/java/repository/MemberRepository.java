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
	public void ceoUpdate(MemberDTO dto) {
		statement = nameSpace + ".ceoUpdate";
		sqlSession.update(statement, dto);
	}
	public void memDelete(String ceoId) {
		statement = nameSpace + ".memDelete";
		sqlSession.delete(statement, ceoId);
	}
	public void memPwUpdate(MemberDTO dto) {
		statement = nameSpace +".memPwUpdate";
		sqlSession.update(statement, dto);
	}
}
