<%@page import="com.smhrd.controller.pop_dongService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

</head>
<body>
	<script src="https://cdn.jsdelivr.net/npm/chart.js@3.7.1/dist/chart.min.js"></script>

	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
		인구현황
		<button id ="dg" onclick="getdongData()">동구</button>
		<button id ="sg" onclick="getseoData()">서구</button>
		<button id ="ng" onclick="getnamData()">남구</button>
		<button id ="bg" onclick="getbookData()">북구</button>
		<button id ="gg" onclick="getgsgData()">광산구</button>
	<div id="dgChart">
		<canvas id="dongChart" width="510" height="300"></canvas>
	</div>
<script>
		fetch("pop_dongService")
		.then(res => res.json())
		.then(json => callBackFunc(json));
		function getdongData(){
		      
		      fetch("pop_dongService")
		       .then(res => res.json())
		       .then(json => callBackFunc(json));
		}
		function getseoData(){
		      
		      fetch("pop_seoService")
		       .then(res => res.json())
		       .then(json => callBackFunc(json)); 
		}
		function getnamData(){
		      
		      fetch("pop_namService")
		       .then(res => res.json())
		       .then(json => callBackFunc(json));
		}
		function getbookData(){
		      
		      fetch("pop_bookService")
		       .then(res => res.json())
		       .then(json => callBackFunc(json));
		}
		function getgsgData(){
		      
		      fetch("pop_gsgService")
		       .then(res => res.json())
		       .then(json => callBackFunc(json));
		}
	
		let MyChart;
		
		function callBackFunc(data){
			
			console.log(data)
			
			var name = [];
			var male = [];
			var female = [];
			
			for(let i=0; i<data.length;i++){
				name.push(data[i].pop_dong);
				male.push(data[i].pop_male);
				female.push(data[i].pop_female);
			}

			var ctx = document.getElementById('dongChart').getContext('2d');

			var options = {
				maintainAspectRatio : false,
				responsive : false,
				scales : {
					x : {
						stacked : true,
						beginAtZero : true
					},
					y : {
						stacked : true,
						beginAtZero : true
					}
				}
			}
			var pop_Chart = {
				type : 'bar',
				options : options,
				data : {
					labels : name,
					datasets : [ {
						label : '남자',
						data : male,
						backgroundColor : [ 'rgba(124,181,236,0.2)' ]
					}, {
						label : '여자',
						data : female,
						backgroundColor : [ 'rgba(255, 99, 132, 0.2)' ]
					} ]
				}
			};	
			if(MyChart){
				MyChart.destroy();
			}
			MyChart = new Chart(ctx,pop_Chart);
		}
		</script>

</body>
</html>