<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
<style>
#ch1 {
	border-style: solid;
	box-sizing: content-box;
	width: 450px;
	height: 300px;
	float: right;
}
</style>
</head>
<body>
	<script
		src="https://cdn.jsdelivr.net/npm/chart.js@3.7.1/dist/chart.min.js"></script>

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
</body>
</html>
