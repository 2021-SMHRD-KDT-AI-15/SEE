document.addEventListener("DOMContentLoaded", getData_prom)

function getData_prom() {
	//비동기통신 api
	fetch("promservice") //주소 : urlmapping 값 작성
		.then(res => res.json())
		.then(json => callBackFunc_prom(json));
}
var name_list = new Array();
var cnt_list = new Array();
var det_list = new Array();
var fin_list = new Array();
var ing_list = new Array();
var hold_list = new Array();

function callBackFunc_prom(data) {
	for (let i = 0; i < 5; i++) {
		name_list.push(data[i].prom_name)
		cnt_list.push(data[i].prom_cnt)
		det_list.push(data[i].prom_cnt_detail)
		fin_list.push(data[i].prom_finish)
		ing_list.push(data[i].prom_ing)
		hold_list.push(data[i].prom_hold)
	}
	document.getElementById("cnt1").textContent = cnt_list[0];
	document.getElementById("cnt2").textContent = cnt_list[1];
	document.getElementById("cnt3").textContent = cnt_list[2];
	document.getElementById("cnt4").textContent = cnt_list[3];
	document.getElementById("cnt5").textContent = cnt_list[4];

	document.getElementById("det1").textContent = det_list[0];
	document.getElementById("det2").textContent = det_list[1];
	document.getElementById("det3").textContent = det_list[2];
	document.getElementById("det4").textContent = det_list[3];
	document.getElementById("det5").textContent = det_list[4];

	document.getElementById("name1").textContent = name_list[0];
	document.getElementById("name2").textContent = name_list[1];
	document.getElementById("name3").textContent = name_list[2];
	document.getElementById("name4").textContent = name_list[3];
	document.getElementById("name5").textContent = name_list[4];

	const chartArea1 = document.getElementById('myChart1').getContext('2d');
	const myChart1 = new Chart(chartArea1, {
		type: 'bar',
		data: {
			labels: ['완료', '진행중', '보류'],
			datasets: [{
				label: '신경제도시',
				data: [fin_list[0], ing_list[0], hold_list[0]],
				backgroundColor: [
					'rgba(54, 162, 235)',
					'rgba(75, 192, 192)',
					'rgba(153, 102, 255)'],
				borderColor: [
					'rgba(54, 162, 235)',
					'rgba(75, 192, 192)',
					'rgba(153, 102, 255)'],
				borderWidth: 1
			}]
		},
		options: {
			plugins: {
				legend: {
					display: false
				},
			},
			responsive: false,
			indexAxis: 'y',
			scales: {
				y: {
					beginAtZero: true,
					display: false,
				},
				x: {
					display: false,
				}
			}
		}
	});
	const chartArea2 = document.getElementById('myChart2').getContext('2d');
	const myChart2 = new Chart(chartArea2, {
		type: 'bar',
		data: {
			labels: ['완료', '진행중', '보류'],
			datasets: [{
				label: '꿀잼도시',
				data: [fin_list[1], ing_list[1], hold_list[1]],
				backgroundColor: [
					'rgba(54, 162, 235)',
					'rgba(75, 192, 192)',
					'rgba(153, 102, 255)'],
				borderColor: [
					'rgba(54, 162, 235)',
					'rgba(75, 192, 192)',
					'rgba(153, 102, 255)'],
				borderWidth: 1
			}]
		},
		options: {
			plugins: {
				legend: {
					display: false
				},
			},
			responsive: false,
			indexAxis: 'y',
			scales: {
				y: {
					beginAtZero: true,
					display: false,
				},
				x: {
					display: false,
				}
			}
		}
	});
	const chartArea3 = document.getElementById('myChart3').getContext('2d');
	const myChart3 = new Chart(chartArea3, {
		type: 'bar',
		data: {
			labels: ['완료', '진행중', '보류'],
			datasets: [{
				label: '돌봄도시',
				data: [fin_list[2], ing_list[2], hold_list[2]],
				backgroundColor: [
					'rgba(54, 162, 235,1)',
					'rgba(75, 192, 192,1)',
					'rgba(153, 102, 255,1)'],
				borderColor: [
					'rgba(54, 162, 235,1)',
					'rgba(75, 192, 192,1)',
					'rgba(153, 102, 255,1)'],
				borderWidth: 1
			}]
		},
		options: {
			plugins: {
				legend: {
					display: false
				},
			},
			responsive: false,
			indexAxis: 'y',
			scales: {
				y: {
					beginAtZero: true,
					display: false,
				},
				x: {
					display: false,
				}
			}
		}
	});

	const chartArea4 = document.getElementById('myChart4').getContext('2d');
	const myChart4 = new Chart(chartArea4, {
		type: 'bar',
		data: {
			labels: ['완료', '진행중', '보류'],
			datasets: [{
				label: '안심도시',
				data: [fin_list[3], ing_list[3], hold_list[3]],
				backgroundColor: [
					'rgba(54, 162, 235)',
					'rgba(75, 192, 192)',
					'rgba(153, 102, 255)'],
				borderColor: [
					'rgba(54, 162, 235)',
					'rgba(75, 192, 192)',
					'rgba(153, 102, 255)'],
				borderWidth: 1
			}]
		},
		options: {
			plugins: {
				legend: {
					display: false
				},
			},
			responsive: false,
			indexAxis: 'y',
			scales: {
				y: {
					beginAtZero: true,
					display: false,
				},
				x: {
					display: false,
				}
			}
		}
	});
	const chartArea5 = document.getElementById('myChart5').getContext('2d');
	const myChart5 = new Chart(chartArea5, {
		type: 'bar',
		data: {
			labels: ['완료', '진행중', '보류'],
			datasets: [{
				label: '교육도시',
				data: [fin_list[4], ing_list[4], hold_list[4]],
				backgroundColor: [
					'rgba(54, 162, 235)',
					'rgba(75, 192, 192)',
					'rgba(153, 102, 255)'],
				borderColor: [
					'rgba(54, 162, 235)',
					'rgba(75, 192, 192)',
					'rgba(153, 102, 255)'],
				borderWidth: 1
			}]
		},
		options: {
			plugins: {
				legend: {
					display: false
				},
			},
			responsive: false,
			indexAxis: 'y',
			scales: {
				y: {
					beginAtZero: true,
					display: false,
				},
				x: {
					display: false,
				}
			}
		}
	});
}