<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
		td {
			border-bottom: 1px solid #e4e4e4;
			text-align: center;
		}
	</style>
</head>
<body>
	<div width="500" align="center">
		<form action="QuizServlet">
			<br />
			<br />
			<table border="0">
				<tr height="100">
					<td><b>JSP 2.3 웹 프로그래밍 : By Sohyeon</b></td>
				</tr>
				<tr height="150">
					<td>
						<img src="image/exam.jpg" height="30" /><br />
							<select name="chapterno">
								<% for (int idx = 2; idx < 21; idx++) { %>
								<option value="<%=idx%>">Chapter.<%=idx %></option>
								<% } %>
							</select>
						<input type="hidden" name="command" value="content_quiz" />
						<input type="submit" value="GO" />	
					</td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>