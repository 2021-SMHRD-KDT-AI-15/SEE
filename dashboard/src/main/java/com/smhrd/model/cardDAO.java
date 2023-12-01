package com.smhrd.model;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.db.SqlSessionManager;

public class cardDAO {
	
	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getFactory();
	List<cardDTO> card_list = new ArrayList<cardDTO>();

	public List<cardDTO> list() {
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		// 2. Sql에 대한 내용 필요
		// selectOne(): 결과가 하나의 행만 돌아오는 것
		// selectList(): 결과가 여러개의 행을 돌아오게 하는 것
		card_list = sqlSession.selectList("card");
	
		// 3. 결과를 진행할 내용
	
		// 4. DB접속 종료 내용 필요
		sqlSession.close();
		
		return card_list;
	}
	
	

}
