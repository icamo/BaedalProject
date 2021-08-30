package repository;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import model.BasketDTO;
import model.LikeDTO;
import model.MenuDTO;
import model.MenuTitleDTO;
import model.ShopDTO;

public class FoodsRepository {
	@Autowired
	SqlSession sqlSession;
	
	String namespace = "mappers.foodsMapper";
	String statement;
	
	public List<ShopDTO> shopList(String category) {
		statement = namespace + ".shopList";
		return sqlSession.selectList(statement, category);		
	}
	
	public ShopDTO comDetail(String comId) {
		statement = namespace + ".comDetail";
		return sqlSession.selectOne(statement, comId);
	}
	
	public List<MenuTitleDTO> menuTitle(String comId){
		statement = namespace + ".menuTitle";
		return sqlSession.selectList(statement, comId);	
	}
	
	public List<MenuDTO> menuList(MenuTitleDTO dto){
		statement = namespace + ".menuList";
		return sqlSession.selectList(statement, dto);	
	}
	
	public MenuDTO menuDetail(String menuId) {
		statement = namespace + ".menuDetail";
		return sqlSession.selectOne(statement, menuId);	
	}
	
	public void storeLike(LikeDTO dto) {
		statement = namespace + ".storeLike";
		sqlSession.insert(statement, dto);	
	}
	
	public int comLike(LikeDTO dto) {
		statement = namespace + ".comLike";
		return sqlSession.selectOne(statement, dto);
	}
	
	public void storeLikeDel(LikeDTO dto) {
		statement = namespace + ".storeLikeDel";
		sqlSession.delete(statement, dto);
	}
	

}
