package com.smhrd.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.smhrd.model.jobDAO;
import com.smhrd.model.jobDTO;
public class jobService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
			jobDAO dao = new jobDAO();

			// DAO의 게시판 목록을 읽어올 수 있는 메소드 호출 -> list()
			ArrayList<jobDTO> job_list = new ArrayList<>();
			job_list = dao.list();
		
			System.out.println(job_list);
			
			// job.jsp로 해당 결과 전달
			request.setAttribute("job", job_list);
//			RequestDispatcher rd = request.getRequestDispatcher("job.jsp");
//			rd.forward(request, response);
			Gson gson = new Gson();
			String jsonPlace = gson.toJson(job_list);
			
			response.setContentType("application/json");
			response.setCharacterEncoding("utf-8");
			PrintWriter out = response.getWriter();
			out.print(jsonPlace);
		
		}catch (Exception e) {
			// TODO: handle exception
		}
		
		
	
	
	}

}
