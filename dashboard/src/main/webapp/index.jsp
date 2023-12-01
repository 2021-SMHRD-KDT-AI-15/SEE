<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page import="com.smhrd.controller.pop_dongService"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
<style>
		*{
			font-size: 11px;
		}
        #full {
            /* width: 300px;
            height:300px; */
        }
        #comp {
            width: 450px;
        }

        #pop {
            width: 450px;
        }

        #job {
            width: 450px;
        }

        #sns {
            width: 450px;
        }

        #prom {
            width: 450px;
        }
        #card {
            width: 450px;
        }
        #left{
       		width: 550px;
            float: left;
        }
        #right{
            width: 480px;
            float: right;
        }
        table{
           border: 1px solid black;
  	       border-collapse: collapse;
        }
        
        #ns1{
        	width:380;
       		display:block;
            text-overflow: ellipsis;
			white-space: nowrap;
			overflow:hidden; 
        }
        #ns2{
        	width:380;
       		display:block;
            text-overflow: ellipsis;
			white-space: nowrap;
			overflow:hidden; 
        }
        #ns3{
        	width:380;
       		display:block;
            text-overflow: ellipsis;
			white-space: nowrap;
			overflow:hidden; 
        }
        #ns4{
        	width:380;
       		display:block;
            text-overflow: ellipsis;
			white-space: nowrap;
			overflow:hidden; 
        }
        #ns5{
        	width:380;
       		display:block;
            text-overflow: ellipsis;
			white-space: nowrap;
			overflow:hidden; 
        }
       
    </style>
</head>
<body>
<div id="header">
        <h2>광주광역시</h2>
    </div>
    <div id="full">
        <div id="left">
            <div id="comp"></div>
            
            
            
            
            인구현황
		      <button id ="dg" onclick="getdongData()">동구</button>
		      <button id ="sg" onclick="getseoData()">서구</button>
		      <button id ="ng" onclick="getnamData()">남구</button>
		      <button id ="bg" onclick="getbookData()">북구</button>
		      <button id ="gg" onclick="getgsgData()">광산구</button>
		   	<div id="dgChart">
		      <canvas id="dongChart" width="510" height="300"></canvas>
		   	
            
            
            </div>
            
            
            
            <div id="job">
            <table id="general" border="1" width="510">
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
		<table id="young" border="1" width="510">
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
		<table id="old" border="1" width="510">
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
        </div>
        <div id="right">
            <div id="sns"></div>
            <div id="prom">
            <table border="1" border-collapse="collapse" width="450">
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
			<td colspan="2"><canvas id="myChart1" width="90" height="50"></canvas> </td>
			<td colspan="2"><canvas id="myChart2" width="90" height="50"></canvas> </td>
			<td colspan="2"><canvas id="myChart3" width="90" height="50"></canvas> </td>
			<td colspan="2"><canvas id="myChart4" width="90" height="50"></canvas> </td>
			<td colspan="2"><canvas id="myChart5" width="90" height="50"></canvas> </td>

	
			</td>
		</tr>
		<tr>
			<td colspan="10"><span id="span1">완료</span> <span id="span2">진행중</span>
				<span id="span3">보류</span></td>
		</tr>
	</table>
            </div>
            <div id="card">
            <table border="1" width="461">
		<tr>
			<td rowspan="6">
				<button id="news_btn">보도자료</button> <br>
				<button id="notice_btn">공지사항</button> <br>
				<button id="bul_btn">고시공고</button>
			</td>
		</tr>
	
		<tr>
			<td id="ns1" width="355"></td>
			<td id="date1"></td>
		</tr>
		<tr>
			<td id="ns2" width="355"></td>
			<td id="date2"></td>
		</tr>
		<tr>
			<td id="ns3" width="355"></td>
			<td id="date3"></td>
		</tr>
		<tr>
			<td id="ns4" width="355"></td>
			<td id="date4"></td>
		</tr>
		<tr>
			<td id="ns5" width="355"></td>
			<td id="date5"></td>
		</tr>
		</table>
            </div>
        </div>
    </div>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
    <script
		src="https://cdn.jsdelivr.net/npm/chart.js@3.7.1/dist/chart.min.js"></script>
<<<<<<< HEAD
	<div id="ch1">
		<canvas id="myChart" width="450" height="300"></canvas>
		<script>
            const ctx = document.getElementById('myChart').getContext('2d');
            const myChart = new Chart(ctx, {
            type: 'bar',
            data: {
                labels: ['Red', 'Blue', 'Yellow', 'Green', 'Purple', 'Orange'],
	            datasets: [{
		            label: '1번',
		            data: [12, 19, 3, 5, 2, 3],
		            backgroundColor: [
		            'rgba(255, 99, 132, 0.2)'
	            	],
		            borderColor: [
		            'rgba(255, 99, 132, 1)'
		            ],
	            	borderWidth: 1
	        	}]
    		},
	            options: {
	                responsive : false,
	                scales: {
	                    y: {
	                        beginAtZero: true,
	                        display : false
	            		}
	        		}
	    		}
			});
    </script>
		<canvas id="myChart2" width="300" height="300"></canvas>
		<script>
     // 차트를 그럴 영역을 dom요소로 가져온다.
     var chartArea = document.getElementById('myChart2').getContext('2d');
     // 차트를 생성한다. 
     var myChart2 = new Chart(chartArea, {
         // ①차트의 종류(String)
         type: 'bar',
         // ②차트의 데이터(Object)
         data: {
             // ③x축에 들어갈 이름들(Array)
             labels: ['Red', 'Blue', 'Yellow', 'Green', 'Purple', 'Orange'],
             // ④실제 차트에 표시할 데이터들(Array), dataset객체들을 담고 있다.
             datasets: [{
                 // ⑤dataset의 이름(String)
                 label: '2번',
                 // ⑥dataset값(Array)
                 data: [12, 19, 3, 5, 2, 3],
                 // ⑦dataset의 배경색(rgba값을 String으로 표현)
                 backgroundColor: 'rgba(255, 99, 132, 0.2)',
                 // ⑧dataset의 선 색(rgba값을 String으로 표현)
                 borderColor: 'rgba(255, 99, 132, 1)',
                 // ⑨dataset의 선 두께(Number)
                 borderWidth: 1
             }]
         },
         // ⑩차트의 설정(Object)
         options: {
             // ⑪축에 관한 설정(Object)
             responsive : false,
             scales: {
                 // ⑫y축에 대한 설정(Object)
                 y: {
                     // ⑬시작을 0부터 하게끔 설정(최소값이 0보다 크더라도)(boolean)
                     beginAtZero: true,
                     display : false
                 }
             }
         }
     });
     </script>
		<canvas id="myChart3" width="300" height="300"></canvas>
		<script>
     // 차트를 그럴 영역을 dom요소로 가져온다.
     var chartArea = document.getElementById('myChart3').getContext('2d');
     // 차트를 생성한다. 
     var myChart3 = new Chart(chartArea, {
         // ①차트의 종류(String)
         type: 'bar',
         // ②차트의 데이터(Object)
         data: {
             // ③x축에 들어갈 이름들(Array)
             labels: ['Red', 'Blue', 'Yellow', 'Green', 'Purple', 'Orange'],
             // ④실제 차트에 표시할 데이터들(Array), dataset객체들을 담고 있다.
             datasets: [{
                 // ⑤dataset의 이름(String)
                 label: '3번',
                 // ⑥dataset값(Array)
                 data: [12, 19, 3, 5, 2, 3],
                 // ⑦dataset의 배경색(rgba값을 String으로 표현)
                 backgroundColor: 'rgba(255, 99, 132, 0.2)',
                 // ⑧dataset의 선 색(rgba값을 String으로 표현)
                 borderColor: 'rgba(255, 99, 132, 1)',
                 // ⑨dataset의 선 두께(Number)
                 borderWidth: 1
             }]
         },
         // ⑩차트의 설정(Object)
         options: {
             // ⑪축에 관한 설정(Object)
             responsive : false,
             scales: {
                 // ⑫y축에 대한 설정(Object)
                 y: {
                     // ⑬시작을 0부터 하게끔 설정(최소값이 0보다 크더라도)(boolean)
                     beginAtZero: true,
                     display : false
                 }
             }
         }
     });
     </script>
	</div>


	<div id="ch2">
		<canvas id="myChart4" width="450" height="300"></canvas>
		<script>
     // 차트를 그럴 영역을 dom요소로 가져온다.
     var chartArea = document.getElementById('myChart4').getContext('2d');
     // 차트를 생성한다. 
     var myChart4 = new Chart(chartArea, {
         // ①차트의 종류(String)
         type: 'bar',
         // ②차트의 데이터(Object)
         data: {
             // ③x축에 들어갈 이름들(Array)
             labels: ['Red', 'Blue', 'Yellow', 'Green', 'Purple', 'Orange'],
             // ④실제 차트에 표시할 데이터들(Array), dataset객체들을 담고 있다.
             datasets: [{
                 // ⑤dataset의 이름(String)
                 label: '4번',
                 // ⑥dataset값(Array)
                 data: [12, 19, 3, 5, 2, 3],
                 // ⑦dataset의 배경색(rgba값을 String으로 표현)
                 backgroundColor: 'rgba(255, 99, 132, 0.2)',
                 // ⑧dataset의 선 색(rgba값을 String으로 표현)
                 borderColor: 'rgba(255, 99, 132, 1)',
                 // ⑨dataset의 선 두께(Number)
                 borderWidth: 1
             }]
         },
         // ⑩차트의 설정(Object)
         options: {
             // ⑪축에 관한 설정(Object)
             responsive : false,
             scales: {
                 // ⑫y축에 대한 설정(Object)
                 y: {
                     // ⑬시작을 0부터 하게끔 설정(최소값이 0보다 크더라도)(boolean)
                     beginAtZero: true,
                     display : false
                 }
             }
         }
     });
     </script>
		<canvas id="myChart5" width="450" height="300"></canvas>
		<script>
     // 차트를 그럴 영역을 dom요소로 가져온다.
     var chartArea = document.getElementById('myChart5').getContext('2d');
     // 차트를 생성한다. 
     var myChart5 = new Chart(chartArea, {
         // ①차트의 종류(String)
         type: 'bar',
         // ②차트의 데이터(Object)
         data: {
             // ③x축에 들어갈 이름들(Array)
             labels: ['Red', 'Blue', 'Yellow', 'Green', 'Purple', 'Orange'],
             // ④실제 차트에 표시할 데이터들(Array), dataset객체들을 담고 있다.
             datasets: [{
                 // ⑤dataset의 이름(String)
                 label: '5번',
                 // ⑥dataset값(Array)
                 data: [12, 19, 3, 5, 2, 3],
                 // ⑦dataset의 배경색(rgba값을 String으로 표현)
                 backgroundColor: 'rgba(255, 99, 132, 0.2)',
                 // ⑧dataset의 선 색(rgba값을 String으로 표현)
                 borderColor: 'rgba(255, 99, 132, 1)',
                 // ⑨dataset의 선 두께(Number)
                 borderWidth: 1
             }]
         },
         // ⑩차트의 설정(Object)
         options: {
             // ⑪축에 관한 설정(Object)
             responsive : false,
             scales: {
                 // ⑫y축에 대한 설정(Object)
                 y: {
                     // ⑬시작을 0부터 하게끔 설정(최소값이 0보다 크더라도)(boolean)
                     beginAtZero: true,
                     display : false
                 }
             }
         }
     });
     </script>
		<canvas id="myChart6" width="450" height="300"></canvas>
		<script>
     // 차트를 그럴 영역을 dom요소로 가져온다.
     var chartArea = document.getElementById('myChart6').getContext('2d');
     // 차트를 생성한다. 
     var myChart6 = new Chart(chartArea, {
         // ①차트의 종류(String)
         type: 'bar',
         // ②차트의 데이터(Object)
         data: {
             // ③x축에 들어갈 이름들(Array)
             labels: ['Red', 'Blue', 'Yellow', 'Green', 'Purple', 'Orange'],
             // ④실제 차트에 표시할 데이터들(Array), dataset객체들을 담고 있다.
             datasets: [{
                 // ⑤dataset의 이름(String)
                 label: '6번',
                 // ⑥dataset값(Array)
                 data: [12, 19, 3, 5, 2, 3],
                 // ⑦dataset의 배경색(rgba값을 String으로 표현)
                 backgroundColor: 'rgba(255, 99, 132, 0.2)',
                 // ⑧dataset의 선 색(rgba값을 String으로 표현)
                 borderColor: 'rgba(255, 99, 132, 1)',
                 // ⑨dataset의 선 두께(Number)
                 borderWidth: 1
             }]
         },
         // ⑩차트의 설정(Object)
         options: {
             // ⑪축에 관한 설정(Object)
             responsive : false,
             scales: {
                 // ⑫y축에 대한 설정(Object)
                 y: {
                     // ⑬시작을 0부터 하게끔 설정(최소값이 0보다 크더라도)(boolean)
                     beginAtZero: true,
                     display : false
                 }
             }
         }
     });
     </script>
	</div>
=======
    <script src="job.js"></script>
	<script src="prom.js"></script>
	<script src="card.js"></script>
	<script src="pop.js"></script>
>>>>>>> branch 'master' of https://github.com/2021-SMHRD-KDT-AI-15/SEE.git
</body>
</html>
