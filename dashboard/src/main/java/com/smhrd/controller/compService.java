package com.smhrd.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.smhrd.model.compDAO;
import com.smhrd.model.compDTO;

public class compService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			compDAO dao = new compDAO();

			// DAO의 게시판 목록을 읽어올 수 있는 메소드 호출 -> list()
			ArrayList<compDTO> comp_list = new ArrayList<>();
			comp_list = dao.list();

			System.out.println(comp_list);
			
			
			//ArrayList => JSON
			Gson gson = new Gson();
			String jsonPlace = gson.toJson(comp_list);

			
			response.setContentType("application/json");
	        response.setCharacterEncoding("utf-8");
			PrintWriter out = response.getWriter();
			out.print(jsonPlace);
			// prom.jsp로 해당 결과 전달
			//request.setAttribute("comp", comp_list);
			//RequestDispatcher rd = request.getRequestDispatcher("comp.jsp");
			//rd.forward(request, response);

		} catch (Exception e) {

		}
	
	}

}
