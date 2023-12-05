document.addEventListener("DOMContentLoaded", getData_job)

function getData_job() {
	//비동기통신 api
	fetch("jobService") //주소 : urlmapping 값 작성
		.then(res => res.json())
		.then(json => callBackFunc_job(json));
}
function callBackFunc_job(data) {
	document.getElementById("g_goal1").textContent = Number(data[0].general_goal).toLocaleString('ko-KR',{});
	document.getElementById("g_goal2").textContent = Number(data[1].general_goal).toLocaleString('ko-KR',{});
	document.getElementById("g_rate1").textContent = data[0].general_rate+'%';
	document.getElementById("g_rate2").textContent = data[1].general_rate+'%';
	document.getElementById("g_job1").textContent = data[0].general_job;
	document.getElementById("g_job2").textContent = data[1].general_job;

	document.getElementById("y_goal1").textContent = data[0].young_goal.toString().replace(/\B(?<!\.\d*)(?=(\d{3})+(?!\d))/g, ",");
	document.getElementById("y_goal2").textContent = data[1].young_goal.toString().replace(/\B(?<!\.\d*)(?=(\d{3})+(?!\d))/g, ",");
	document.getElementById("y_rate1").textContent = data[0].young_rate+'%';
	document.getElementById("y_rate2").textContent = data[1].young_rate+'%';
	document.getElementById("y_job1").textContent = data[0].young_job;
	document.getElementById("y_job2").textContent = data[1].young_job;

	document.getElementById("o_goal1").textContent = data[0].old_goal.toString().replace(/\B(?<!\.\d*)(?=(\d{3})+(?!\d))/g, ",");
	document.getElementById("o_goal2").textContent = data[1].old_goal.toString().replace(/\B(?<!\.\d*)(?=(\d{3})+(?!\d))/g, ",");
	document.getElementById("o_rate1").textContent = data[0].old_rate+'%';
	document.getElementById("o_rate2").textContent = data[1].old_rate+'%';
	document.getElementById("o_job1").textContent = data[0].old_job;
	document.getElementById("o_job2").textContent = data[1].old_job;
}