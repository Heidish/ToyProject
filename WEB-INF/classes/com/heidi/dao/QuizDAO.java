package com.heidi.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.heidi.dto.QuizVO;
import com.heidi.util.DBManager;

public class QuizDAO {
	private static QuizDAO instance = new QuizDAO();

	public QuizDAO() {
	}

	public static QuizDAO getInstance() {
		return instance;
	}
	
	// 전체 글 조회해서 반환하는 메소드
		// BoardListAction.java 의 execute() 에서 사용
		public List<QuizVO> selectAllQuizs(int ch_no) {
			String sql = "select * from chapter_" + ch_no;
			List<QuizVO> list = new ArrayList<QuizVO>();
			Connection conn = null;
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			try {
				conn = DBManager.getConnection();
				pstmt = conn.prepareStatement(sql);
				System.out.println(sql);
				
				rs = pstmt.executeQuery();
				
				while (rs.next()) {
					QuizVO qVo= new QuizVO();
					qVo.setNo(rs.getInt("no"));
					qVo.setQuestion(rs.getString("question"));
					qVo.setImage(rs.getString("image"));
					qVo.setExmaple1(rs.getString("example1"));
					qVo.setExmaple2(rs.getString("example2"));
					qVo.setExample3(rs.getString("example3"));
					qVo.setExample4(rs.getString("example4"));
					qVo.setAnswer(rs.getString("answer"));
					qVo.setSolution(rs.getString("solution"));
					list.add(qVo);
					
				}
			} catch (SQLException e) {
				System.out.println("selectAllQuizs() ERR : " + e.getMessage());
			} finally {
				DBManager.close(conn, pstmt, rs);
			}
			return list;
		}
		
		
	
}
