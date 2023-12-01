package com.smhrd.model;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.db.SqlSessionManager;

public class jobDAO {
	
	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getFactory();
	
	ArrayList<jobDTO> job_list = new ArrayList<>();
	
	// 게시판의 내용을 읽어올 수 있는 메소드
	public ArrayList<jobDTO> list() {
		// 1. DB 접속 권한/통로 필요
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		// 2. Sql에 대한 내용 필요
		// selectOne(): 결과가 하나의 행만 돌아오는 것
		// selectList(): 결과가 여러개의 행을 돌아오게 하는 것
		job_list = (ArrayList) sqlSession.selectList("job");
	
		// 3. 결과를 진행할 내용
	
		// 4. DB접속 종료 내용 필요
		sqlSession.close();
		
		return job_list;
	}
}
