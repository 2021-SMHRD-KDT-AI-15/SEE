<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>고용테이블</title>
</head>
<body>
<script src="job.js"></script>

	<div id="job">
		<table id="general" border="1" width="450">
			<tr>
				<td rowspan="4" width="65">일반</td>
				<td rowspan="2">일반목표</td>
				<td>2분기</td>
				<td>3분기</td>
				<td rowspan="4">일반고용률</td>
				<td rowspan="2">2분기</td>
				<td rowspan="2">3분기</td>
			</tr>
			<tr>
					<td id="g_goal1"></td>
					<td id="g_goal2"></td>
			</tr>
			<tr>
				<td rowspan="2">일반취업자</td>
				<td>2분기</td>
				<td>3분기</td>
					<td id="g_rate1" rowspan="2"></td>
					<td id="g_rate2" rowspan="2"></td>
			</tr>
			<tr>
					<td id="g_job1" rowspan="2"></td>
					<td id="g_job2" rowspan="2"></td>
			</tr>
		</table>
		<table id="young" border="1" width="450">
			<tr>
				<td rowspan="2" width="65">청년</td>
				<td rowspan="2">청년목표</td>
				<td>2분기</td>
				<td>3분기</td>
				<td rowspan="4">청년고용률</td>
				<td rowspan="2">2분기</td>
				<td rowspan="2">3분기</td>
			</tr>
			<tr>
					<td id="y_goal1" width=50></td>
					<td id="y_goal2" width=50></td>
			</tr>
			<tr>
				<td rowspan="2"><a href="https://gjyouthcenter.kr/index.do?contentId=294">고용정책</a></td>
				<td rowspan="2">청년취업자</td>
				<td>2분기</td>
				<td>3분기</td>
				<td id="y_rate1" rowspan="2"></td>
				<td id="y_rate2" rowspan="2"></td>
			</tr>
			<tr>
					<td id="y_job1" rowspan="2"></td>
					<td id="y_job2" rowspan="2"></td>
			</tr>
		</table>
		<table id="old" border="1" width="450">
			<tr>
				<td rowspan="2" width="65">노인</td>
				<td rowspan="2">노인목표</td>
				<td>2분기</td>
				<td>3분기</td>
				<td rowspan="4">노인고용률</td>
				<td rowspan="2">2분기</td>
				<td rowspan="2">3분기</td>
			</tr>
			<tr>
				<td id="o_goal1" width=50></td>
				<td id="o_goal2" width=50></td>
			</tr>
			<tr>
				<td rowspan="2"><a href="https://gjsenior.kr/news">고용정책</a></td>
				<td rowspan="2">노인취업자</td>
				<td>2분기</td>
				<td>3분기</td>
				<td id="o_rate1" rowspan="2"></td>
				<td id="o_rate2" rowspan="2"></td>
			</tr>
			<tr>
				<td id="o_job1" rowspan="2"></td>
				<td id="o_job2" rowspan="2"></td>
			</tr>

		</table>
	</div>
	
</body>
</html>