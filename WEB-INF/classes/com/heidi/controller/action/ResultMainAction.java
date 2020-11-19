package com.heidi.controller.action;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.heidi.dao.QuizDAO;
import com.heidi.dto.QuizVO;

public class ResultMainAction implements Action {
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "/quiz/result_main.jsp";
		System.out.println("url : " + url);
		System.out.println("----------------");
		
		int ch_no = Integer.parseInt(request.getParameter("chapterno"));

		ArrayList<String> checks = new ArrayList<String>();
		String idx = null;
		
		for (int i = 0; i < 10; i++) {
			idx = Integer.toString(i + 1);
			checks.add(request.getParameter(idx));
			System.out.println(checks.get(i));
		}
		
		QuizDAO qdao = QuizDAO.getInstance();
		List<QuizVO> list = qdao.selectAllQuizs(ch_no);
		
		request.setAttribute("chapterno", ch_no);
		request.setAttribute("checks", checks);
		request.setAttribute("list", list);
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
	}

}
