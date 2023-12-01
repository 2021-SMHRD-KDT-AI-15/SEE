package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import model.popDAO;
import model.popDTO;

public class pop_dongService extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		popDAO dao = new popDAO();
		ArrayList<popDTO> dong_list = dao.dong();

		request.setAttribute("dong", dong_list);

        Gson gson = new Gson();
        String jsonPlace = gson.toJson(dong_list);

        response.setContentType("application/json");
        response.setCharacterEncoding("utf-8");
        PrintWriter out = response.getWriter();
        out.print(jsonPlace);
	}

}
