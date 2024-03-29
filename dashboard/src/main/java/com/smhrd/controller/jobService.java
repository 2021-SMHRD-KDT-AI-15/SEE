package com.smhrd.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

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

			ArrayList<jobDTO> job_list = new ArrayList<>();
			job_list = dao.list();
		

			request.setAttribute("job", job_list);

			Gson gson = new Gson();
			String jsonPlace = gson.toJson(job_list);
			
			response.setContentType("application/json");
			response.setCharacterEncoding("utf-8");
			PrintWriter out = response.getWriter();
			out.print(jsonPlace);
		
		}catch (Exception e) {
			e.printStackTrace();
		}
		
		
	
	
	}

}
