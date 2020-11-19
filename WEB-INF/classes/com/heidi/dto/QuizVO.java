package com.heidi.dto;

public class QuizVO {
	private Integer no;
	private String question;
	private String image;
	private String exmaple1;
	private String exmaple2;
	private String example3;
	private String example4;
	private String answer;
	private String solution;
	
	public QuizVO() {
	}// 기본생성자

	//toString
	public String toString() {
		String str = "==>";
		str += this.no + "__";
		str += this.question + "__";
		str += this.image + "__";
		str += this.exmaple1 + "__";
		str += this.exmaple2 + "__";
		str += this.example3 + "__";
		str += this.example4 + "__";
		str += this.answer + "__";
		str += this.solution + "<==";
	    return str;
	}
	
	public Integer getNo() {
		return no;
	}

	public void setNo(Integer no) {
		this.no = no;
	}

	public String getQuestion() {
		return question;
	}

	public void setQuestion(String question) {
		this.question = question;
	}

	public String getExmaple1() {
		return exmaple1;
	}

	public void setExmaple1(String exmaple1) {
		this.exmaple1 = exmaple1;
	}

	public String getExmaple2() {
		return exmaple2;
	}

	public void setExmaple2(String exmaple2) {
		this.exmaple2 = exmaple2;
	}

	public String getExample3() {
		return example3;
	}

	public void setExample3(String example3) {
		this.example3 = example3;
	}

	public String getExample4() {
		return example4;
	}

	public void setExample4(String example4) {
		this.example4 = example4;
	}

	public String getAnswer() {
		return answer;
	}

	public void setAnswer(String answer) {
		this.answer = answer;
	}

	public String getSolution() {
		return solution;
	}

	public void setSolution(String solution) {
		this.solution = solution;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

}
