package repository;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import model.MemberDTO;
import model.ShopDTO;

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
	
	public int emailDupChk(String memEmail) {
		statement = namespace + ".emailDupChk";
		int result = sqlSession.selectOne(statement, memEmail);	
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
	
	public void memQuit(String memId) {
		statement = namespace + ".memQuit";
		sqlSession.delete(statement, memId);
	}
	
	public List<ShopDTO> wishStoreList(String memId){
		statement = namespace + ".wishStoreList";
		return sqlSession.selectList(statement, memId);	
	}
	

}
