document.addEventListener("DOMContentLoaded", getData_comp)

function getData_comp() {

	//비동기통신 api
	fetch("compService") //주소 : urlmapping 값 작성
		.then(res => res.json())
		.then(json => callBackFunc_comp(json));
}

//차트 출력
function callBackFunc_comp(data) {

	let cnt_lst = []
	for (let i = 0; i < 10; i++) {
		cnt_lst.push(data[i].comp_cnt)
	}

	let name_lst = []
	for (let j = 0; j < 10; j++) {
		name_lst.push(data[j].comp_name)
	}

	const ctx = document.getElementById('comp_chart').getContext('2d');
	const comp_chart = new Chart(ctx, {
		type: 'bar',
		data: {
			labels: name_lst,
			datasets: [{
				label: '민원현황',
				data: cnt_lst,
				backgroundColor: ['rgba(247, 163, 92)'],
				borderColor: ['rgba(247, 163, 92)'],
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
			scales: {
					grid: {
						display: false,
					},
					x: {
					ticks: {
						color: '#FFFFFF'
						}
					},
					y: {
						beginAtZero: true,
						display: false,
					}
				}
			
			}
		});
}