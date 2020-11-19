<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*, com.heidi.dto.*" %>
<%
	ArrayList<String> checks = (ArrayList<String>) request.getAttribute("checks");
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
		}
		th.a {
			background-color : gray;
		}
		td {
			border-bottom: 1px solid #e4e4e4;
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
					<br /><b>Chapter <%=chapterno %> Test 결과</b>
					</div>
					<hr>
					<div class="b">
					<br /><b>정오표</b><br /><br />
					</div>
					<div class="c">
					<table border="0" style="back-ground : gray" >
						<tr>
						<%for (int i = 0; i < list.size(); i++) { %>
							<th class="a" width="20"><%=i %></th>
						<%}%>
						</tr>
						<tr>
						<%for (int i = 0; i < list.size(); i++) { %>
							<%if (list.get(i).getAnswer().equals(checks.get(i))) { %>
							<td width="20">O</td>
						<%} else { %>
							<td width="20">X</td>
						<%}
							}%>
						</tr>
					</table>
					<hr>
					<br />
						<form action="" method="get" >
							<input type="hidden" name="command" value="" />
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
											제출한 답 : <%=checks.get(i) %> | 정답 : <%=list.get(i).getAnswer() %><br /><br />
											<b>Solution</b><br />
											<%=list.get(i).getSolution() %><br /><br />
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
											제출한 답 : <%=checks.get(i) %> | 정답 : <%=list.get(i).getAnswer() %><br /><br />
											<b>Solution</b><br />
											<%=list.get(i).getSolution() %><br /><br />
										</td>
									</tr>
								<%		}
									} %>
							</table>
							<input class="btn_1" type="button" value="Main" style="align-self: center;" onclick="location.href='select_main.jsp'" />
						</form>
						</div>
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