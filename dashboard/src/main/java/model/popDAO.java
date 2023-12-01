package model;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import db.SqlSessionManager;

public class popDAO {
	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getFactory();
	ArrayList<popDTO> dong_list = new ArrayList<popDTO>();
	ArrayList<popDTO> seo_list = new ArrayList<popDTO>();
	ArrayList<popDTO> nam_list = new ArrayList<popDTO>();
	ArrayList<popDTO> book_list = new ArrayList<popDTO>();
	ArrayList<popDTO> gsg_list = new ArrayList<popDTO>();
	

	public ArrayList<popDTO> dong() {

		SqlSession sqlSession = sqlSessionFactory.openSession(true);

		sqlSession.selectList("dong");
		dong_list = (ArrayList) sqlSession.selectList("dong");

		sqlSession.close();
		return dong_list;

	}

	public ArrayList<popDTO> seo() {
		SqlSession sqlSession = sqlSessionFactory.openSession(true);

		sqlSession.selectList("seo");
		seo_list = (ArrayList) sqlSession.selectList("seo");

		sqlSession.close();
		return seo_list;
	}
	public ArrayList<popDTO> nam() {
		SqlSession sqlSession = sqlSessionFactory.openSession(true);

		sqlSession.selectList("nam");
		nam_list = (ArrayList) sqlSession.selectList("nam");

		sqlSession.close();
		return nam_list;
	}
	public ArrayList<popDTO> book() {
		SqlSession sqlSession = sqlSessionFactory.openSession(true);

		sqlSession.selectList("book");
		book_list = (ArrayList) sqlSession.selectList("book");

		sqlSession.close();
		return book_list;
	}
	public ArrayList<popDTO> gsg() {
		SqlSession sqlSession = sqlSessionFactory.openSession(true);

		sqlSession.selectList("gsg");
		gsg_list = (ArrayList) sqlSession.selectList("gsg");

		sqlSession.close();
		return gsg_list;
	}
}
