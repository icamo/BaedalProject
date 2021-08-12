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
	
	public int idDupChk(String memId) {
		statement = namespace + ".idDupChk";
		int result = sqlSession.selectOne(statement, memId);	
		return result;
	}
	
	public MemberDTO memDetail(String memId) {
		statement = namespace + ".memDetail";
		return sqlSession.selectOne(statement, memId);		
	}
	
	public void memUpdate(MemberDTO dto) {
		statement = namespace + ".memUpdate";
		sqlSession.update(statement, dto);
	}
	
	public void memPwUpdate(MemberDTO dto) {
		statement = namespace + ".memPwUpdate";
		sqlSession.update(statement, dto);
	}
	
	public String findId(MemberDTO dto) {
		statement = namespace + ".findId";
		return sqlSession.selectOne(statement, dto);
	}
	

}
