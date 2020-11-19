package com.heidi.controller.action;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.heidi.dao.QuizDAO;
import com.heidi.dto.QuizVO;

public class ContentQuizAction implements Action {
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "/quiz/content_quiz.jsp";
		System.out.println("url : " + url);
		System.out.println("----------------");
		
		int ch_no = Integer.parseInt(request.getParameter("chapterno"));
		System.out.println("ch_no 값은 : " + ch_no);
		
		QuizDAO qdao = QuizDAO.getInstance();
		
		List<QuizVO> list = qdao.selectAllQuizs(ch_no);		
		
		request.setAttribute("chapterno", ch_no);
		request.setAttribute("list", list);
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
	}

}
