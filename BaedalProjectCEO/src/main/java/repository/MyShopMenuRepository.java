package repository;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import Model.MenuDTO;
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

	public void menuResist(MenuDTO dto) {
		statement = namespace + ".menuResist";
		sqlSession.insert(statement, dto);
	}

	public List<MenuDTO> detailMenuList(String menuTitleNum) {
		statement = namespace + ".detailMenuList";
		return sqlSession.selectList(statement, menuTitleNum);
	}

	public MenuDTO menuInfo(String menuId) {
		statement = namespace + ".menuInfo";
		return sqlSession.selectOne(statement, menuId);
	}

	public void menuSell(MenuDTO dto) {
		statement = namespace + ".menuSell";
		sqlSession.update(statement, dto);
	}

	public void menuOut(String menuId) {
		statement = namespace + ".menuOut";
		sqlSession.delete(statement, menuId);
	}

	
}
