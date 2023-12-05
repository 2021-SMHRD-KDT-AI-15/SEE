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
import com.smhrd.model.promDAO;
import com.smhrd.model.promDTO;

public class promservice extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		try {
			promDAO dao = new promDAO();

			ArrayList<promDTO> prom_list = new ArrayList<>();
			prom_list = dao.list();

			System.out.println(prom_list);

			request.setAttribute("prom", prom_list);

			Gson gson = new Gson();
			String jsonPlace = gson.toJson(prom_list);

			response.setContentType("application/json");
			response.setCharacterEncoding("utf-8");
			PrintWriter out = response.getWriter();
			out.print(jsonPlace);

		} catch (Exception e) {

		}

	}

}
