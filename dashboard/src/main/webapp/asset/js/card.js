document.addEventListener("DOMContentLoaded", getData);

function getData() {
	//비동기통신 api
	fetch("cardService") //주소 : urlmapping 값 작성
		.then(res => res.json())
		.then(json => callBackFunc_card(json));
}
var news_list = new Array();
var notice_list = new Array();
var bul_list = new Array();
var date_list = new Array();

function callBackFunc_card(data) {
	
	console.log(data)
	
	for (let i = 0; i < 5; i++) {
		news_list.push(data[i].news_tit)
		notice_list.push(data[i].notice_tit)
		bul_list.push(data[i].bulletin_tit)
		date_list.push(data[i].cardnews_date)
	}
	
	console.log(news_list[0])
	
	document.getElementById("ns1").textContent = news_list[0];
	document.getElementById("ns2").textContent = news_list[1];
	document.getElementById("ns3").textContent = news_list[2];
	document.getElementById("ns4").textContent = news_list[3];
	document.getElementById("ns5").textContent = news_list[4];
	document.getElementById("date1").textContent = date_list[0];
	document.getElementById("date2").textContent = date_list[1];
	document.getElementById("date3").textContent = date_list[2];
	document.getElementById("date4").textContent = date_list[3];
	document.getElementById("date5").textContent = date_list[4];

	let news_btn = document.getElementById("news_btn")
	let notice_btn = document.getElementById("notice_btn")
	let bul_btn = document.getElementById("bul_btn")

	notice_btn.addEventListener("click", function() {
		document.getElementById("ns1").textContent = notice_list[0];
		document.getElementById("ns2").textContent = notice_list[1];
		document.getElementById("ns3").textContent = notice_list[2];
		document.getElementById("ns4").textContent = notice_list[3];
		document.getElementById("ns5").textContent = notice_list[4];
	})
	bul_btn.addEventListener("click", function() {
		document.getElementById("ns1").textContent = bul_list[0];
		document.getElementById("ns2").textContent = bul_list[1];
		document.getElementById("ns3").textContent = bul_list[2];
		document.getElementById("ns4").textContent = bul_list[3];
		document.getElementById("ns5").textContent = bul_list[4];
	})
	news_btn.addEventListener("click", function() {
		document.getElementById("ns1").textContent = news_list[0];
		document.getElementById("ns2").textContent = news_list[1];
		document.getElementById("ns3").textContent = news_list[2];
		document.getElementById("ns4").textContent = news_list[3];
		document.getElementById("ns5").textContent = news_list[4];
	})




}