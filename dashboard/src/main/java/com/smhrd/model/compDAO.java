package com.smhrd.model;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.db.SqlSessionManager;

public class compDAO {
SqlSessionFactory sqlSessionFactory = SqlSessionManager.getFactory();
	
	ArrayList<compDTO> comp_list = new ArrayList<compDTO>();
	
	public ArrayList<compDTO> list() {
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		
		comp_list = (ArrayList)sqlSession.selectList("comp");
		
		sqlSession.close();
		
		return comp_list;
	}

	

}
