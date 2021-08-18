package repository;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import Model.MenuTitleDTO;

public class MyShopMenuRepository {
	
	@Autowired
	SqlSession sqlSession;
	String namespace = "mappers.MyShopMenuMapper";
	String statement;
	
	public void menuTitleResist(MenuTitleDTO dto) {
		statement=namespace+".menuTitleResist";
		sqlSession.insert(statement,dto);
	}

	public List<MenuTitleDTO> titleList(String comId) {
		statement = namespace + ".titleList";
		return sqlSession.selectList(statement, comId);
	}

	public MenuTitleDTO titleInfo(String menuTitleNum) {
		statement = namespace + ".titleInfo";
		return sqlSession.selectOne(statement, menuTitleNum);
	}

	public void titleModify(MenuTitleDTO dto) {
		statement = namespace + ".titleModify";
		sqlSession.update(statement, dto);
	}

	
}
