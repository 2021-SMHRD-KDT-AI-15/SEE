package com.smhrd.model;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.db.SqlSessionManager;

public class promDAO {
	
SqlSessionFactory sqlSessionFactory = SqlSessionManager.getFactory();
	
	ArrayList<promDTO> prom_list = new ArrayList<>();

	public ArrayList<promDTO> list() {
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		// 2. Sql에 대한 내용 필요
		// selectOne(): 결과가 하나의 행만 돌아오는 것
		// selectList(): 결과가 여러개의 행을 돌아오게 하는 것
		prom_list = (ArrayList) sqlSession.selectList("prom");
	
		// 3. 결과를 진행할 내용
	
		// 4. DB접속 종료 내용 필요
		sqlSession.close();
		
		return prom_list;
	}

}
