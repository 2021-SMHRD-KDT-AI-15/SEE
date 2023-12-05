<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
#span1 {
	width: 200px;
	height: 10px;
	background-color: rgba(54, 162, 235, 0.2);
}

#span2 {
	width: 100px;
	height: 10px;
	background-color: rgba(75, 192, 192, 0.2);
}

#span3 {
	width: 100px;
	height: 10px;
	background-color: rgba(153, 102, 255, 0.2);
}
</style>
</head>
<body>
<!-- 
<a href="javascript:void(0);" onclick="getData()">테스트</a>
 -->
	<script
		src="https://cdn.jsdelivr.net/npm/chart.js@3.7.1/dist/chart.min.js"></script>
		
	<script src="prom.js"></script>


	<table border="1">
		<tr>
			<td id="name1" colspan="2"></td>
			<td id="name2" colspan="2"></td>
			<td id="name3" colspan="2"></td>
			<td id="name4" colspan="2"></td>
			<td id="name5" colspan="2"></td>
		</tr>
		<tr>
			<%
			for (int i = 0; i < 5; i++) {
				out.print("<td>공약과제</td>");
				out.print("<td>세부사업</td>");
			}
			%>
		</tr>
		<tr>
			<td id="cnt1"></td>
			<td id="det1"></td>
			<td id="cnt2"></td>
			<td id="det2"></td>
			<td id="cnt3"></td>
			<td id="det3"></td>
			<td id="cnt4"></td>
			<td id="det4"></td>
			<td id="cnt5"></td>
			<td id="det5"></td>

		</tr>
		<tr>
			<td colspan="2"><canvas id="myChart1" width="170" height="50"></canvas> </td>
			<td colspan="2"><canvas id="myChart2" width="170" height="50"></canvas> </td>
			<td colspan="2"><canvas id="myChart3" width="170" height="50"></canvas> </td>
			<td colspan="2"><canvas id="myChart4" width="170" height="50"></canvas> </td>
			<td colspan="2"><canvas id="myChart5" width="170" height="50"></canvas> </td>

	
			</td>
		</tr>
		<tr>
			<td colspan="10"><span id="span1">완료</span> <span id="span2">진행중</span>
				<span id="span3">보류</span></td>
		</tr>
	</table>







</body>
</html>