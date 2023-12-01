package com.smhrd.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.nio.file.spi.FileSystemProvider;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.smhrd.model.cardDAO;
import com.smhrd.model.cardDTO;

public class cardService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
			cardDAO dao = new cardDAO();

			// DAO의 게시판 목록을 읽어올 수 있는 메소드 호출 -> list()
			List<cardDTO> card_list = new ArrayList<>();
			card_list = dao.list();
		
			System.out.println(card_list);
			
			// job.jsp로 해당 결과 전달
			request.setAttribute("card", card_list);
//			RequestDispatcher rd = request.getRequestDispatcher("card.jsp");
//			rd.forward(request, response);
		
			//ArrayList => JSON
			Gson gson = new Gson();
			String jsonPlace = gson.toJson(card_list);
			
			System.out.println(jsonPlace);
			
			response.setContentType("application/json");
			response.setCharacterEncoding("utf-8");
			PrintWriter out = response.getWriter();
			out.print(jsonPlace);
			
		}catch (Exception e) {
			e.printStackTrace();
		}
		
		
		
	}

}
