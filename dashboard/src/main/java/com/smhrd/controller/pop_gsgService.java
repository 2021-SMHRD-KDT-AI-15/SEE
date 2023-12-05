package com.smhrd.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.smhrd.model.popDAO;
import com.smhrd.model.popDTO;

public class pop_gsgService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		popDAO dao = new popDAO();
		ArrayList<popDTO> gsg_list = dao.gsg();

		request.setAttribute("gsg", gsg_list);
		Gson gson = new Gson();
		String jsonPlace = gson.toJson(gsg_list);

		response.setContentType("application/json");
		response.setCharacterEncoding("utf-8");
		PrintWriter out = response.getWriter();
		out.print(jsonPlace);

	}

}
