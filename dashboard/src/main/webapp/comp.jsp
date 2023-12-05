<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<a href="javascript:void(0);" onclick="getData()">테스트</a>
	<script
		src="https://cdn.jsdelivr.net/npm/chart.js@3.7.1/dist/chart.min.js"></script>

	<div id="ch4">
		<canvas id="myChart" width="450" height="300"></canvas>
		<script>
		
		function getData(){
			
			//비동기통신 api
			fetch("compService") //주소 : urlmapping 값 작성
		    .then(res => res.json())
		    .then(json => callBackFunc(json));
		}
		
		//차트 출력
		function callBackFunc(data){
			
			let cnt_list = []
			for(let i = 0; i < 10; i++){
				cnt_list.push(data[i].comp_cnt)
			}
			
			let name_list = []
			for(let j = 0; j < 10; j++){
				name_list.push(data[j].comp_name)
			}
			
			const ctx = document.getElementById('myChart').getContext('2d');
			const myChart = new Chart(ctx, {
				type : 'bar',
				data : {
					labels : name_list,
					datasets : [ {
						label : '민원현황',
						data : cnt_list ,
						backgroundColor : [ 'rgba(255, 99, 132, 0.2)' ],
						borderColor : [ 'rgba(255, 99, 132, 1)' ],
						borderWidth : 1
					} ]
				},
				options : {
					plugins:{
		                legend: {
		                    display: false
		                },
		            },
					responsive : false,
					scales : {
						y : {
							beginAtZero : true,
							display : false
						}
					}
				}
			});
		}
		</script>
	</div>

</body>
</html>