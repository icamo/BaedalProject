package repository;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import model.MemberDTO;

public class MemberRepository {
	
	@Autowired
	SqlSession sqlSession;
	
	String namespace = "mappers.memberMapper";
	String statement;
	
	public void memJoin(MemberDTO dto) {
		statement = namespace + ".memJoin";
		sqlSession.insert(statement, dto);
	}
	
	public String idDupChk(String memId) {
		statement = namespace + ".idDupChk";
		String result = sqlSession.selectOne(statement, memId);
		return result;
		
	}

}