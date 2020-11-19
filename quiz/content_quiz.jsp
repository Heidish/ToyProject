<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*, com.heidi.dto.*" %>
<%
	List<QuizVO> list = (List<QuizVO>) request.getAttribute("list");
	int chapterno = (int) request.getAttribute("chapterno");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP 2.3 웹 프로그래밍 : By Sohyeon</title>
	<style>
		a:link, a:visited, a:active {
			text-decoration:none;
			color:black;
		}
		tr:hover, tr:focus {
		}
		th {
			text-align : center;
			padding : 14px;
		}
		td {
			border-bottom : 1px solid #e4e4e4;
			padding : 14px;
		}
		td.a{
			background-color : #EAEFFC;
		}
		div.a {
			font-size : 20px;
			text-align : center;
			font-weight : bold;
		}
		.b {
			font-size : 14px;
		}
		.c {
			font-size : 12px;
		}
		.btn_1 {
			padding : 6px;
			border-radius : 1em;
			background : #D9E3FF;
			border-color : white;
		}
	</style>
</head>
<body>
	<div width="900" align="center">
		<table border="0">
			<tr height="100">
				<td>
					<jsp:include page="/quiz/head.jsp" flush="false" />
				</td>
			</tr>
			<tr height="720">
				<td width="620" valign="top" >
					<div class="a">
					<br />Chapter <%=chapterno %> 문제<br /><br />
					</div>
					<div class="b">
					<br /><b>아래 문제를 모두 푼 뒤 채점 버튼을 눌러주세요.</b><br /><br />
					</div>
					<hr>
						<form action="QuizServlet" method="get" >
							<input type="hidden" name="command" value="result_main" />
							<input type="hidden" name="chapterno" value="<%=chapterno %>" />
							<div class="c">
							<table border="0">
								<%	for (int i = 0; i < list.size(); i++) {
										if (list.get(i).getImage() != null) {
								%>
									<tr>
										<td class="a" align="left">
											<b><%=list.get(i).getNo() %>.  <%=list.get(i).getQuestion() %></b><br />
											<img src="image/<%=list.get(i).getImage() %>" height="120" align="middle" />
										</td>
									</tr>
									<tr>
										<td align="left">
											<input type="radio" name="<%=i + 1 %>" value="<%=list.get(i).getExmaple1() %>" /> <%=list.get(i).getExmaple1() %><br />
											<input type="radio" name="<%=i + 1 %>" value="<%=list.get(i).getExmaple2() %>" /> <%=list.get(i).getExmaple2() %><br />
											<input type="radio" name="<%=i + 1 %>" value="<%=list.get(i).getExample3() %>" /> <%=list.get(i).getExample3() %><br />
											<input type="radio" name="<%=i + 1 %>" value="<%=list.get(i).getExample4() %>" /> <%=list.get(i).getExample4() %><br />
											<br/>
										</td>
									</tr>
								<%	} else { %>
									<tr>
										<td class="a" align="left">
											<b><%=list.get(i).getNo() %>.  <%=list.get(i).getQuestion() %></b>
										</td>
									</tr>
									<tr>
										<td align="left">
											<input type="radio" name="<%=i + 1 %>" value="<%=list.get(i).getExmaple1() %>" /> <%=list.get(i).getExmaple1() %><br />
											<input type="radio" name="<%=i + 1 %>" value="<%=list.get(i).getExmaple2() %>" /> <%=list.get(i).getExmaple2() %><br />
											<input type="radio" name="<%=i + 1 %>" value="<%=list.get(i).getExample3() %>" /> <%=list.get(i).getExample3() %><br />
											<input type="radio" name="<%=i + 1 %>" value="<%=list.get(i).getExample4() %>" /> <%=list.get(i).getExample4() %><br />
											<br/>
										</td>
									</tr>
								<%}
									} %>
							<tr>
								<td align="center">
									<input class="btn_1" type="submit" value="채점하기" />
								</td>
							</tr>
							</table>
							</div>
						</form>
					</td>
				</tr>
				<tr height="80">
					<td align="center">
						모든 문제는 <b>JSP 2.3 웹 프로그래밍 - 기초부터 중급까지 (최범균)</b> 으로부터 출제했습니다.<br />
						Contact : heidish005@gamil.com | Create by : Heidi Sohyeon Jeon
					</td>
				</tr>
			</table>
		</div>
</body>
</html>