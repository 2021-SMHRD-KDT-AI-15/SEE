<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page import="com.smhrd.controller.pop_dongService"%>
<!DOCTYPE html>
<html lang="en">
<head>
<link rel="icon" href="asset/img/symbol.png" />
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>광주광역시 스마트 시정 지원시스템</title>
<style>
@font-face {
	font-family: "GmarketSansTTFMedium";
	src: url("./asset/font/GmarketSansTTFMedium.woff") format("woff");
}

html, body {
	height: 100%;
}

body {
	background: linear-gradient(rgba(0, 0, 0, 0.75), rgba(0, 0, 0, 0.75)),
		url(asset/img/gwangju.png) no-repeat center;
	background-size: cover;
	height: 600px;
}

tspan {
	font-size: 25px;
	fill: white;
}

table {
	border-color: white;
	margin-right: 10px;
}

td {
	padding: 5px;
}

* {
	font-size: 13px;
	font-family: "GmarketSansTTFMedium";
	color: white;
}

button {
	color: white;
	background-color: transparent;
	border-color: white;
	padding: 3px;
}

button : active {
	background-color: white;
	color: black;
}

#full {
	max-height: 600px;
	max-width: 1920px;
	display: grid;
	grid-template-columns: 510px 860px 510px;
	grid-template-rows: 400px 300px 300px;
}

#left {
	float: left;
	margin-left: 20px;
}

#center {
	width: 800px;
}

#right {
	float: right;
}

#wheather {
	float: right;
}

#sns {
	width: 450px;
}

#card {
	width: 510px;
}

table {
	border: 1px solid #585858;
	border-collapse: collapse;
}

#span1 {
	width: 20px;
	height: 10px;
	background-color: rgba(54, 162, 235);
	display: inline-block;
}

#span2 {
	width: 20px;
	height: 10px;
	background-color: rgba(75, 192, 192);
	display: inline-block;
}

#span3 {
	width: 20px;
	height: 10px;
	background-color: rgba(153, 102, 255);
	display: inline-block;
}

.date {
	font-size: 10px;
}

.title {
	width: 510px;
	height: 30px;
	font-size: 18px;
	margin-top: 5px;
}

.head {
	font-size: 25px;
}

#logo {
	align: center;
}

#logo>a {
	text-decoration: none;
}

#dongChart {
	border-top: 1px solid white;
}

.title_md, .binding {
	color: #585858;
	font-size: 20px;
}

#unit {
	float: right;
}

#tit_job {
	width: 510px;
	margin-top: 30px;
}

.a_btn {
	height: 30px;
	font-size: 15px;
}

.a_btn:hover, .job_btn:hover, #news_btn:hover, #notice_btn:hover,
	#bul_btn:hover {
	background-color: gray;
	cursor: pointer;
}

#news_btn {
	background-color: white;
	color: rgb(30, 34, 35);
	font-weight: bold;
}

#dg:hover, #sg:hover, #ng:hover, #bg:hover, #gg:hover {
	background-color: gray;
	cursor: pointer;
}

#dg {
	background-color: white;
	color: rgb(31, 35, 32);
	font-weight: bold;
}

#pause, #start {
	border : none;
	cursor: pointer;
	float : right;
}
</style>
</head>
<body>
	<div class="bgimg"></div>
	<span id="logo"><a href="main.jsp"><img width="25px"
			src="asset/img/로고.svg"> <span class="head">광주광역시</span></a></span>
	</div>
	<div id="body">
		<div id="header">
			<hr>
			<div id="full">
				<div id="left">
					<div>
						<div class="title">
							<img src="asset/img/home.png" width="20"
								style="margin-bottom: -4px;"> 인구현황
							<div id="pop_btn">
								<button id="dg" onclick="getdongData()">동구</button>
								<button id="sg" onclick="getseoData()">서구</button>
								<button id="ng" onclick="getnamData()">남구</button>
								<button id="bg" onclick="getbookData()">북구</button>
								<button id="gg" onclick="getgsgData()">광산구</button>
							</div>
						</div>
						<div id="dgChart">
							<canvas id="dongChart" width="510" height="300"></canvas>
						</div>
					</div>
					<p></p>
					<p></p>
					<div class="title" id="tit_job">
						<img src="asset/img/job.png" width="20"
							style="margin-bottom: -4px;"> 일자리
						<div id="unit" style="position: relative; bottom: -15px;">단위
							(목표 : 명, 취업자 수 : 천명)</div>
					</div>
					<div id="job">
						<table id="general" border="1px" width="510">
							<tr>
								<td rowspan="4" width="65">일반</td>
								<td rowspan="2" width="100"><img src="asset/img/goal.png"
									style="margin-bottom: -10px"><br> <br>목표</td>
								<td>2분기</td>
								<td>3분기</td>
								<td rowspan="4"><img src="asset/img/rise.png"
									style="margin-bottom: -7px"><br> <br>고용률</td>
								<td rowspan="2" width="50">2분기</td>
								<td rowspan="2" width="50">3분기</td>
							</tr>
							<tr>
								<td id="g_goal1"></td>
								<td id="g_goal2"></td>
							</tr>
							<tr>
								<td rowspan="2"><img src="asset/img/opportunity.png"
									style="margin-bottom: -10px"><br> <br>취업자 수</td>
								<td width="50">2분기</td>
								<td width="50">3분기</td>
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
								<td rowspan="4" width="65">청년 <a
									href="https://gjyouthcenter.kr/index.do?contentId=294"
									target="_blank"><br> <span height="1px"></span><br>
										</span>
										<button class="job_btn">고용정책</button></a>
								</td>
								<td rowspan="2" width="100"><img src="asset/img/goal.png"
									style="margin-bottom: -10px"><br> <br>목표</td>
								<td>2분기</td>
								<td>3분기</td>
								<td rowspan="4"><img src="asset/img/rise.png"
									style="margin-bottom: -7px"><br> <br>고용률</td>
								<td rowspan="2" width="50">2분기</td>
								<td rowspan="2" width="50">3분기</td>
							</tr>
							<tr>
								<td id="y_goal1" width=50></td>
								<td id="y_goal2" width=50></td>
							</tr>
							<tr>
								<td rowspan="2"><img src="asset/img/opportunity.png"
									style="margin-bottom: -10px"><br> <br>취업자 수</td>
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
								<td rowspan="4" width="65">노인 <a
									href="https://gjsenior.kr/news" target="_blank"><br> <span
										height="1px"></span><br>
										<button class="job_btn">고용정책</button></a>
								</td>
								<td rowspan="2" width="100"><img src="asset/img/goal.png"
									style="margin-bottom: -10px"><br> <br>목표</td>
								<td>2분기</td>
								<td>3분기</td>
								<td rowspan="4"><img src="asset/img/rise.png"
									style="margin-bottom: -7px"><br> <br>고용률</td>
								<td rowspan="2" width="50">2분기</td>
								<td rowspan="2" width="50">3분기</td>
							</tr>
							<td id="o_goal1" width=50></td>
							<td id="o_goal2" width=50></td>
							</tr>
							<tr>
								<td rowspan="2"><img src="asset/img/opportunity.png"
									style="margin-bottom: -10px"><br> <br>취업자 수</td>
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
					<div style="position: relative; top: 30px;">
						<table>
							<tr>
								<a href="https://bigdata.gwangju.go.kr/usr/main/goMain.rd"
									target="_blank"><img src="asset/img/big.png"></a>
							</tr>
						</table>
					</div>
				</div>
				<div id="center">
					<div id="wheather">
						<div
							style="background-color: rgb(81, 83, 85); background-color: rgba(0, 0, 0, 0.4); padding: 40px; color: #fff; width: 250px; height: 25px; border-radius: 20px; border: 2px outset;">
							<div style="float: left;">
								<div class="weather_icon">
									<img src="" id="img"></img>
								</div>
							</div>
							<div
								style="float: right; font-size: 11pt; position: relative; right: -13px; top: -17px;">
								<div class="humidity"></div>
								<div class="wind" style="margin-top: 10px;"></div>
								<div class="cloud" style="margin-top: 10px;"></div>
							</div>
							<div style="float: left;">
								<div class="city"
									style="font-size: 18pt; position: relative; top: -20px; left: 40px"
									align="left"></div>
								<span class="weather_description"
									style="font-size: 5pt; position: relative; left: -25px; top: -40px;"></span>
								<span class="current_temp"
									style="font-size: 30pt; position: relative; left: -25px; top: -30px;"></span>
							</div>
						</div>
					</div>
					<div id="modal-box-dg">
						<div id="modal-contents">
							<a href="#none" class="btn-close"><img
								src="asset/img/icon_x.png" width="20"></a>
							<h2 class="title_md">
								<span class="binding">동구</span> 통계 <span class="binding">(2023년
									12월 기준)</span>
							</h2>
							<table class="vertic-table">
								<tr>
									<th>주민등록</th>
									<td style="color: black;">106,675 명</td>
								</tr>
								<tr>
									<th>성비(남/여)</th>
									<td style="color: black;">96.9 명</td>
								</tr>
								<tr>
									<th>세대수</th>
									<td style="color: black;">46,449 세대</td>
								</tr>
							</table>
						</div>
					</div>
					<div id="modal-box-sg">
						<div id="modal-contents">
							<a href="#none" class="btn-close"><img
								src="asset/img/icon_x.png" width="20"></a>
							<h2 class="title_md">
								<span class="binding">서구</span> 통계 <span class="binding">(2023년
									12월 기준)</span>
							</h2>
							<table class="vertic-table">
								<tr>
									<th>주민등록</th>
									<td style="color: black;">285,537 명</td>
								</tr>
								<tr>
									<th>성비(남/여)</th>
									<td style="color: black;">95.7 명</td>
								</tr>
								<tr>
									<th>세대수</th>
									<td style="color: black;">111,381 세대</td>
								</tr>
							</table>
						</div>
					</div>
					<div id="modal-box-ng">
						<div id="modal-contents">
							<a href="#none" class="btn-close"><img
								src="asset/img/icon_x.png" width="20"></a>
							<h2 class="title_md">
								<span class="binding">남구</span> 통계 <span class="binding">(2023년
									12월 기준)</span>
							</h2>
							<table class="vertic-table">
								<tr>
									<th>주민등록</th>
									<td style="color: black;">210,329 명</td>
								</tr>
								<tr>
									<th>성비(남/여)</th>
									<td style="color: black;">92.0 명</td>
								</tr>
								<tr>
									<th>세대수</th>
									<td style="color: black;">81,316 세대</td>
								</tr>
							</table>
						</div>
					</div>
					<div id="modal-box-bg">
						<div id="modal-contents">
							<a href="#none" class="btn-close"><img
								src="asset/img/icon_x.png" width="20"></a>
							<h2 class="title_md">
								<span class="binding">북구</span> 통계 <span class="binding">(2023년
									12월 기준)</span>
							</h2>
							<table class="vertic-table">
								<tr>
									<th>주민등록</th>
									<td style="color: black;">422,776 명</td>
								</tr>
								<tr>
									<th>성비(남/여)</th>
									<td style="color: black;">97.9 명</td>
								</tr>
								<tr>
									<th>세대수</th>
									<td style="color: black;">174,151 세대</td>
								</tr>
							</table>
						</div>
					</div>
					<div id="modal-box-gg">
						<div id="modal-contents">
							<a href="#none" class="btn-close"><img
								src="asset/img/icon_x.png" width="20"></a>
							<h2 class="title_md">
								<span class="binding">광산구</span> 통계 <span class="binding">(2023년
									12월 기준)</span>
							</h2>
							<table class="vertic-table">
								<tr>
									<th>주민등록</th>
									<td style="color: black;">397,682 명</td>
								</tr>
								<tr>
									<th>성비(남/여)</th>
									<td style="color: black;">101.8 명</td>
								</tr>
								<tr>
									<th>세대수</th>
									<td style="color: black;">127,578 세대</td>
								</tr>
							</table>
						</div>
					</div>
					<div class="map-svg">
						<svg xmlns="http://www.w3.org/2000/svg" version="1.2"
							baseProfile="tiny" width="800" height="600"
							viewBox="-150 80 1000 500" stroke-width="1"
							stroke-linecap="round" stroke-linejoin="round">
            <g id="hangjeongdong_광주광역시">
                <g ng-repeat="pop_rank in dong_pop_rank_list" ng-switch
								on="pop_rank.HJD">
                    <g class="group" id="d-g" stroke-width="1">
                    
                        <path class="cls-1" stroke-width="1"
								stroke="white"
								d="M 614.77 252.63 619.28 252.35 622.06 256.26 621.76 257.55 621.62 258.54 623.84 259.48 624.4 260.08 624.71 260.38 625.98 260.73 629.98 260.17 630.31 260.23 632.81 260.48 635.91 262.8 636.87 267.34 644.13 271.42 645.9 271.63 646.88 271.77 647.46 271.85 648.88 272.01 654.75 276 656.33 276.83 657.81 280.77 657.39 281.37 656.43 285.62 653.64 288.81 653.85 289.84 654.35 291.92 653.14 295.48 652.32 296 650.53 296.34 649.64 297.1 649.17 298.89 649.21 299.31 649.46 300.36 653.81 303.8 656.15 306.56 660.04 307.03 663.15 308.7 664.17 307.51 664.66 307.29 674.05 309.18 681.44 314.67 684 316.81 690.91 317.65 698.84 314.39 703.89 313.52 704.49 313.34 709.53 314.16 712.89 314.59 722.31 329.45 725.51 338.54 730.28 343.77 732.27 347.22 735.44 353.32 743.11 352.09 745.44 352.41 760.43 357.26 748.46 371.43 751.07 375.83 728.63 384.24 722.26 396.54 727.28 408.44 727.61 424.75 705.97 432.97 696.03 432.63 672.74 444.16 663.17 457.51 665.32 461.81 655.53 476.19 638.06 481.61 615.36 476.89 597.88 461.46 591.61 441.99 580.15 432.83 581.28 428.97 582.9 424.62 583.26 423.42 583.39 420.97 584.68 418.43 582.19 414.52 579.86 414.42 578.28 413.86 576.47 404.76 571.17 399.15 570.29 397.38 570.24 396.66 569.04 392.66 567.18 386.03 565.9 380.87 567.21 377.34 568.51 375.63 567.81 373.54 567.25 373.26 565.63 371.98 564.9 370.88 566.8 370.1 569.05 368.72 569.78 368.46 571.09 368.26 572.46 367.14 575.89 367.59 577.18 367.27 578.57 366.88 581.14 364.75 581.25 363.67 582.33 361.46 583.35 361.15 583.58 360.93 585.1 360.39 585.64 360.2 587.15 357.95 587.69 357.45 587.96 357.12 588.08 354.56 588.37 353.05 588.71 352.59 591.88 350.21 591.98 349.99 597.36 345.55 600.61 344.76 602.41 343.42 602.66 343.1 602.14 342.59 597.98 337.97 597.98 337.91 598.06 336.6 595.13 332.39 594.7 331.02 594.26 329.37 594.09 328.97 593.85 328.34 592.5 326.3 591.05 324.19 590.06 323.3 589.37 322.86 587.79 321.34 584.56 315.66 583.62 313.89 582.42 312.4 581.4 311 581.32 309.93 580.1 308.22 578.64 306.13 577.61 304.6 576.45 303.09 575.35 301.7 575.12 301.48 574.06 300.73 573.62 300.27 572.33 298.95 569.06 295.66 568.31 294.69 567.89 294.1 566.99 292.92 565.88 291.35 565.73 291.15 565.11 290.27 564.06 288.74 562.77 286.93 562.51 286.55 562.1 285.98 561.82 285.59 561.67 285.39 561.38 285 561.03 284.51 560.99 284.4 555.55 278.58 555.82 278.33 557.73 276.47 558.2 276.03 558.35 275.89 558.98 275.4 559.05 275.34 559.8 274.64 560.08 274.37 560.57 273.9 560.81 273.58 561.38 273.04 562.17 272.27 563.35 271.14 564.09 270.44 564.58 269.84 565.26 269.19 566.49 268.07 566.55 267.98 566.86 267.47 570.91 255.31 573.19 248.41 573.92 246.23 575.13 242.56 579.41 243.75 580.53 244.06 591.27 247.33 603.44 252.74 614.77 252.63 Z" />
                        <g>
                            <text class="cls-2"
								transform="translate(630 370)">
                                <tspan x="0" y="0" color="white">동구</tspan>
                            </text>
                        </g>
                    </g>
                    <g class="group" id="s-g">
                        <path class="cls-1" stroke="white"
								d="M 525.23 254.44 526.06 254.87 528.81 256.58 530.35 257.49 533.18 258.93 536.26 260.31 538.46 261.79 541.58 264.66 541.93 265.08 544.4 268.16 546.03 269.95 546.19 270.1 546.59 270.46 547.45 271.24 548.08 271.81 548.24 271.96 550.01 273.56 550.22 273.74 550.87 274.29 552.53 275.83 553.76 276.96 553.9 277.08 555.51 278.54 555.55 278.58 560.99 284.4 560.57 284.82 560.59 284.87 559.69 285.06 557.18 285.26 556.2 285.42 554.84 285.79 553.23 286.23 552.52 286.47 551.99 286.64 550.02 285.76 549.65 285.56 549.02 285.17 548.93 285.11 548.74 284.98 548.65 284.91 548.11 284.49 546.81 283.16 546.19 282.21 544.76 278.92 543.25 276.65 542.72 276.19 542.27 275.94 541.03 275.83 539.82 276 538.64 276.21 536.81 276.21 534.89 275.88 529.5 277.98 528.4 278.4 528.87 279.94 522.79 283.9 521.56 284.16 519.8 284.55 519 284.99 518.75 285.15 516.63 286.44 515.42 287.22 513.45 288.44 512.08 289.25 511.16 289.82 510.08 291.74 514.41 302.22 514.51 302.36 513.91 302.78 513.01 303.25 512.78 303.37 512.19 303.68 511.7 303.94 510.97 304.32 510.43 304.61 509.9 304.37 509.52 305.14 509.41 305.65 509.4 307.04 508.75 308.1 508.31 308.26 508.21 308.68 507.58 309.25 506.68 309.87 504.65 311.81 505.17 312.86 506.65 313.92 508.85 315.56 509.93 316.4 510.57 318.87 511.69 322.21 512.99 323.4 513.08 323.57 513.24 324.92 513.52 325.35 513.86 326.91 512.73 329.72 512.33 330.13 512.17 331.15 512.22 331.39 512.07 333.02 512.1 333.29 512.13 333.45 512.42 335.01 512.54 335.63 512.09 336.45 512.09 336.53 513.1 342.83 513.16 344.51 514.44 345.73 514.84 346.48 514.97 347.42 515.43 351.91 515.33 353.06 515.45 357.86 515.44 358.11 513.89 360.89 513.92 363.12 515.32 364.3 514.84 365.85 513.83 366.91 511.67 366.98 498.15 368.07 494.48 366.75 490.6 364.97 487.79 363.07 485.72 359.14 484.02 362.65 482.54 363.72 482.13 364.76 480.32 365.57 480.32 366.1 477.96 368.42 477.03 369.02 475.85 369.22 475.46 369.74 475.74 370.72 477.84 373.92 478.41 374.8 476.95 383.69 471.84 383.97 471.33 383.97 470.33 383.48 468.57 383.27 463.49 386.65 462.07 385.57 460.97 386.01 460.33 386.26 459.01 386.74 458.6 387.08 458.23 387.29 457.58 386.91 456.73 386.76 456.25 386.81 455.22 387.57 454.69 388.09 454.12 388.84 454.88 389.3 456.38 389.57 457.33 390.14 457.79 390.95 457.89 391.56 456.53 393.97 448.22 394.33 443.26 393.27 441.68 393.83 435.75 394.94 431.91 395.9 427.11 396.33 425.18 398.24 420.95 398.84 419.15 402.79 417.49 405.55 416.74 406.18 415.8 406.93 413.71 406.98 413.26 406.92 411.71 406.68 410.67 405.92 408.87 404.28 407.84 405.61 407.49 406.47 405.71 412.67 399.28 415.5 397.8 415.19 394.79 414.88 392.72 418.15 390.97 420.14 388.7 422.28 387.97 423.01 387.87 423.14 387.45 424.15 386.26 424.19 385.24 424.5 384.55 425.46 384.21 426.02 382.6 427.24 380.76 427.28 380.24 427.71 378.04 429.36 376.73 430.49 376.01 430.69 374.4 431.13 367.08 430.53 364.43 428.07 359.95 426.37 359.62 426.49 359.52 426.54 358.82 427.06 358.76 427.06 358.21 426.58 358.25 426.89 357.68 427.79 356.69 428.82 355.98 429.55 354.32 430.99 352.38 432.58 352.1 432.87 351.55 432.5 350.1 432.29 349.93 431.89 349.5 431.12 349.09 430.6 348.43 429.45 348.29 428.96 347.03 426.4 342.05 415.8 341.57 416.6 341.37 416.65 340.82 417.44 340.45 417.79 340.4 417.82 340.29 417.95 339.89 418.35 339.19 419.9 339.17 419.99 339.3 420.49 339.43 420.74 339.44 421.35 339.05 422.26 337.71 423.41 337.6 423.66 335.98 425.47 335.71 425.24 335.57 425.29 335.47 425.68 335.21 426.01 334.84 426.05 333.47 426.25 330.41 407.18 341.85 402.19 334.41 377.91 348.37 377.68 348.93 367.49 363.96 366.99 364.44 356.36 375.75 341.2 369.02 325.28 379.04 319.14 390.94 305.42 390.68 284.79 382.84 271.74 384.42 254.32 380.46 245.5 388.45 234.85 409.02 226.81 411.51 208.23 412.67 208.34 412.91 208.43 412.99 208.54 413.31 208.35 413.59 208.07 413.96 208.12 414.22 208.03 415.5 208.38 418.08 210.02 418.22 210.08 419.37 211.36 419.49 211.98 420.97 212.2 421.1 212.3 420.25 213.92 455.4 224.11 473.34 225.64 477.96 225.98 483.36 226.41 483.52 226.43 489.32 226.91 489.3 227.36 489.29 228.83 489.78 228.71 490.43 228.57 490.75 228.49 491.08 228.42 492.37 228.08 492.98 227.92 493.21 227.92 493.68 227.9 493.95 227.88 494.16 227.88 494.57 227.89 495.22 227.93 495.51 227.94 495.7 227.94 495.84 227.94 496.06 227.94 496.39 227.95 496.67 227.95 497.06 227.96 497.5 228.03 497.69 228.06 497.98 228.11 498.47 228.16 498.8 228.2 499.07 228.25 499.5 228.35 499.69 228.39 500.6 228.61 500.89 228.69 501.2 228.77 501.43 228.83 501.57 228.89 501.76 228.95 502.07 229.04 502.42 229.14 502.78 229.26 502.87 229.29 503.32 229.46 504.19 229.77 504.37 229.83 504.71 229.97 504.88 230.03 505.71 230.36 505.87 230.43 506.05 230.53 506.19 230.62 506.65 230.89 506.92 231.05 507.18 232.3 507.11 232.92 509.77 240.05 510.16 240.45 514.78 252.71 525.23 254.44 Z" />
                        <g>
                            <text class="cls-2"
								transform="translate(420 330)">
                                <tspan x="0" y="0">서구</tspan>
                            </text>
                        </g>
                    </g>
                    <g class="group" id="n-g">
                        <path class="cls-1" stroke="white"
								d="M 542.72 276.19 543.25 276.65 544.76 278.92 546.19 282.21 546.81 283.16 548.11 284.49 548.65 284.91 548.74 284.98 548.93 285.11 549.02 285.17 549.65 285.56 550.02 285.76 551.99 286.64 552.52 286.47 553.23 286.23 554.84 285.79 556.2 285.42 557.18 285.26 559.69 285.06 560.59 284.87 560.57 284.82 561.03 284.51 561.38 285 561.67 285.39 561.82 285.59 562.1 285.98 562.51 286.55 562.77 286.93 564.06 288.74 565.11 290.27 565.73 291.15 565.88 291.35 566.99 292.92 567.89 294.1 568.31 294.69 569.06 295.66 572.33 298.95 573.62 300.27 574.06 300.73 575.12 301.48 575.35 301.7 576.45 303.09 577.61 304.6 578.64 306.13 580.1 308.22 581.32 309.93 581.4 311 582.42 312.4 583.62 313.89 584.56 315.66 587.79 321.34 589.37 322.86 590.06 323.3 591.05 324.19 592.5 326.3 593.85 328.34 594.09 328.97 594.26 329.37 594.7 331.02 595.13 332.39 598.06 336.6 597.98 337.91 597.98 337.97 602.14 342.59 602.66 343.1 602.41 343.42 600.61 344.76 597.36 345.55 591.98 349.99 591.88 350.21 588.71 352.59 588.37 353.05 588.08 354.56 587.96 357.12 587.69 357.45 587.15 357.95 585.64 360.2 585.1 360.39 583.58 360.93 583.35 361.15 582.33 361.46 581.25 363.67 581.14 364.75 578.57 366.88 577.18 367.27 575.89 367.59 572.46 367.14 571.09 368.26 569.78 368.46 569.05 368.72 566.8 370.1 564.9 370.88 565.63 371.98 567.25 373.26 567.81 373.54 568.51 375.63 567.21 377.34 565.9 380.87 567.18 386.03 569.04 392.66 570.24 396.66 570.29 397.38 571.17 399.15 576.47 404.76 578.28 413.86 579.86 414.42 582.19 414.52 584.68 418.43 583.39 420.97 583.26 423.42 582.9 424.62 581.28 428.97 580.15 432.83 561.97 440.11 548.94 458.74 529 460.35 522.34 467.44 508.5 457.98 479.36 476.45 445.45 465.89 440.66 477.57 429.64 482.28 420.63 499.11 405.8 496.82 403.66 502.92 384.16 507.07 373.76 512.77 366.77 531.09 359.88 529.49 335.17 532 325.85 513.81 309.71 510.94 295.86 523.52 276.86 530.47 262.3 527.36 261.19 511.34 253.82 500.57 242.21 505.4 228.92 500.16 236.71 490.12 257.89 490.78 267.14 485.73 284.72 482.17 299.53 471.95 319.55 440.26 333.47 426.25 334.84 426.05 335.21 426.01 335.47 425.68 335.57 425.29 335.71 425.24 335.98 425.47 337.6 423.66 337.71 423.41 339.05 422.26 339.44 421.35 339.43 420.74 339.3 420.49 339.17 419.99 339.19 419.9 339.89 418.35 340.29 417.95 340.4 417.82 340.45 417.79 340.82 417.44 341.37 416.65 341.57 416.6 342.05 415.8 347.03 426.4 348.29 428.96 348.43 429.45 349.09 430.6 349.5 431.12 349.93 431.89 350.1 432.29 351.55 432.5 352.1 432.87 352.38 432.58 354.32 430.99 355.98 429.55 356.69 428.82 357.68 427.79 358.25 426.89 358.21 426.58 358.76 427.06 358.82 427.06 359.52 426.54 359.62 426.49 359.95 426.37 364.43 428.07 367.08 430.53 374.4 431.13 376.01 430.69 376.73 430.49 378.04 429.36 380.24 427.71 380.76 427.28 382.6 427.24 384.21 426.02 384.55 425.46 385.24 424.5 386.26 424.19 387.45 424.15 387.87 423.14 387.97 423.01 388.7 422.28 390.97 420.14 392.72 418.15 394.79 414.88 397.8 415.19 399.28 415.5 405.71 412.67 407.49 406.47 407.84 405.61 408.87 404.28 410.67 405.92 411.71 406.68 413.26 406.92 413.71 406.98 415.8 406.93 416.74 406.18 417.49 405.55 419.15 402.79 420.95 398.84 425.18 398.24 427.11 396.33 431.91 395.9 435.75 394.94 441.68 393.83 443.26 393.27 448.22 394.33 456.53 393.97 457.89 391.56 457.79 390.95 457.33 390.14 456.38 389.57 454.88 389.3 454.12 388.84 454.69 388.09 455.22 387.57 456.25 386.81 456.73 386.76 457.58 386.91 458.23 387.29 458.6 387.08 459.01 386.74 460.33 386.26 460.97 386.01 462.07 385.57 463.49 386.65 468.57 383.27 470.33 383.48 471.33 383.97 471.84 383.97 476.95 383.69 478.41 374.8 477.84 373.92 475.74 370.72 475.46 369.74 475.85 369.22 477.03 369.02 477.96 368.42 480.32 366.1 480.32 365.57 482.13 364.76 482.54 363.72 484.02 362.65 485.72 359.14 487.79 363.07 490.6 364.97 494.48 366.75 498.15 368.07 511.67 366.98 513.83 366.91 514.84 365.85 515.32 364.3 513.92 363.12 513.89 360.89 515.44 358.11 515.45 357.86 515.33 353.06 515.43 351.91 514.97 347.42 514.84 346.48 514.44 345.73 513.16 344.51 513.1 342.83 512.09 336.53 512.09 336.45 512.54 335.63 512.42 335.01 512.13 333.45 512.1 333.29 512.07 333.02 512.22 331.39 512.17 331.15 512.33 330.13 512.73 329.72 513.86 326.91 513.52 325.35 513.24 324.92 513.08 323.57 512.99 323.4 511.69 322.21 510.57 318.87 509.93 316.4 508.85 315.56 506.65 313.92 505.17 312.86 504.65 311.81 506.68 309.87 507.58 309.25 508.21 308.68 508.31 308.26 508.75 308.1 509.4 307.04 509.41 305.65 509.52 305.14 509.9 304.37 510.43 304.61 510.97 304.32 511.7 303.94 512.19 303.68 512.78 303.37 513.01 303.25 513.91 302.78 514.51 302.36 514.41 302.22 510.08 291.74 511.16 289.82 512.08 289.25 513.45 288.44 515.42 287.22 516.63 286.44 518.75 285.15 519 284.99 519.8 284.55 521.56 284.16 522.79 283.9 528.87 279.94 528.4 278.4 529.5 277.98 534.89 275.88 536.81 276.21 538.64 276.21 539.82 276 541.03 275.83 542.27 275.94 542.72 276.19 Z" />
                        <g>
                            <text class="cls-2"
								transform="translate(420 440)">
                                <tspan x="0" y="0">남구</tspan>
                            </text>
                        </g>
                    </g>
                    <g class="group" id="b-g">
                        <path class="cls-1" stroke="white"
								d="M 745.44 352.41 743.11 352.09 735.44 353.32 732.27 347.22 730.28 343.77 725.51 338.54 722.31 329.45 712.89 314.59 709.53 314.16 704.49 313.34 703.89 313.52 698.84 314.39 690.91 317.65 684 316.81 681.44 314.67 674.05 309.18 664.66 307.29 664.17 307.51 663.15 308.7 660.04 307.03 656.15 306.56 653.81 303.8 649.46 300.36 649.21 299.31 649.17 298.89 649.64 297.1 650.53 296.34 652.32 296 653.14 295.48 654.35 291.92 653.85 289.84 653.64 288.81 656.43 285.62 657.39 281.37 657.81 280.77 656.33 276.83 654.75 276 648.88 272.01 647.46 271.85 646.88 271.77 645.9 271.63 644.13 271.42 636.87 267.34 635.91 262.8 632.81 260.48 630.31 260.23 629.98 260.17 625.98 260.73 624.71 260.38 624.4 260.08 623.84 259.48 621.62 258.54 621.76 257.55 622.06 256.26 619.28 252.35 614.77 252.63 603.44 252.74 591.27 247.33 580.53 244.06 579.41 243.75 575.13 242.56 573.92 246.23 573.19 248.41 570.91 255.31 566.86 267.47 566.55 267.98 566.49 268.07 565.26 269.19 564.58 269.84 564.09 270.44 563.35 271.14 562.17 272.27 561.38 273.04 560.81 273.58 560.57 273.9 560.08 274.37 559.8 274.64 559.05 275.34 558.98 275.4 558.35 275.89 558.2 276.03 557.73 276.47 555.82 278.33 555.51 278.54 553.9 277.08 553.76 276.96 552.53 275.83 550.87 274.29 550.22 273.74 550.01 273.56 548.24 271.96 548.08 271.81 547.45 271.24 546.59 270.46 546.19 270.1 546.03 269.95 544.4 268.16 541.93 265.08 541.58 264.66 538.46 261.79 536.26 260.31 533.18 258.93 530.35 257.49 528.81 256.58 526.06 254.87 525.23 254.44 514.78 252.71 510.16 240.45 509.77 240.05 507.11 232.92 507.18 232.3 506.92 231.05 506.65 230.89 506.19 230.62 506.05 230.53 505.87 230.43 505.71 230.36 504.88 230.03 504.71 229.97 504.37 229.83 504.19 229.77 503.32 229.46 502.87 229.29 502.78 229.26 502.42 229.14 502.07 229.04 501.76 228.95 501.57 228.89 501.43 228.83 501.2 228.77 500.89 228.69 500.6 228.61 499.69 228.39 499.5 228.35 499.07 228.25 498.8 228.2 498.47 228.16 497.98 228.11 497.69 228.06 497.5 228.03 497.06 227.96 496.67 227.95 496.39 227.95 496.06 227.94 495.84 227.94 495.7 227.94 495.51 227.94 495.22 227.93 494.57 227.89 494.16 227.88 493.95 227.88 493.68 227.9 493.21 227.92 492.98 227.92 492.37 228.08 491.08 228.42 490.75 228.49 490.43 228.57 489.78 228.71 489.29 228.83 489.3 227.36 489.32 226.91 483.52 226.43 483.36 226.41 477.96 225.98 473.34 225.64 455.4 224.11 420.25 213.92 421.1 212.3 420.97 212.2 419.49 211.98 419.37 211.36 418.22 210.08 418.08 210.02 415.5 208.38 414.22 208.03 413.96 208.12 413.59 208.07 413.31 208.35 412.99 208.54 412.91 208.43 412.67 208.34 411.51 208.23 417.13 199.45 429.19 205.42 442.22 198.18 453.74 196.31 457.37 189.83 453.34 166.1 441.28 161.35 446.89 149.49 441.4 125.35 442.42 96.54 427.97 96.37 424.94 86.25 412.07 90.87 411.83 76.04 416.81 64.31 432.17 60.95 441.29 53.94 457.9 48.77 464.93 35.47 475.89 34.51 487.55 24.48 513.05 34.5 542.38 15.13 553.63 3.83 573.03 4.05 586.44 16.49 607.92 23.27 613.19 33.67 609.96 49.41 632.08 62.8 633.56 72.47 642.08 75 651 90.95 644.86 100.4 648.65 115.56 655.62 127 677.39 153.69 665.05 172.65 666.78 178.72 692.29 206.3 693.26 193.15 718.13 187.89 737.67 189.47 752.11 183.51 766.92 192.82 780.34 205.35 785.37 217.59 799 228.65 795.99 239.19 787.38 244.1 775.88 241.89 776.6 254.37 769.05 269.32 772.09 284.43 766.78 299.2 771.18 304.6 769.81 325.91 776.39 340.55 773.76 349.54 760.43 357.26 745.44 352.41 Z" />
                        <g>
                            <text class="cls-2"
								transform="translate(550 190)">
                                <tspan x="0" y="0">북구</tspan>
                            </text>
                        </g>
                    </g>
                    <g class="group" id="gsg">
                        <path class="cls-1" stroke="white"
								d="M 1 286.97 10.31 285.6 19.85 270.67 15.37 265.98 23.73 255.6 20.97 241.9 27.58 235.73 55.84 228.5 59.48 219.34 51.82 214.66 36.77 187.91 29.79 185.15 19.97 169.03 32.35 169.79 54.63 164.25 64.89 172.69 71.98 142.86 78.32 129.71 86.5 125.02 92.06 111.25 112.81 126.72 124.48 131.19 141.77 119.21 156.54 119.03 163.06 102.51 158.38 94.84 172.2 64.41 181.1 55.14 182.93 39.49 196.58 20.63 208.13 20.6 222.14 14.21 224.43 7.66 249.23 1 254.45 14.36 248.24 29.56 237.15 40.03 233.34 56.09 236.26 63.12 246.92 64.2 278.62 73.17 288.73 85.85 308.41 90.58 320.44 101.2 343.55 102.62 363.53 89 381.07 86.23 384.13 70.47 408.37 82.34 412.07 90.87 424.94 86.25 427.97 96.37 442.42 96.54 441.4 125.35 446.51 138.07 446.89 149.49 441.28 161.35 453.34 166.1 457.37 189.83 453.74 196.31 442.22 198.18 429.19 205.42 417.13 199.45 409.27 212.79 409.02 226.81 388.45 234.85 380.46 245.5 384.42 254.32 382.84 271.74 390.68 284.79 390.94 305.42 379.04 319.14 369.02 325.28 375.75 341.2 364.44 356.36 363.96 366.99 348.93 367.49 348.37 377.68 334.41 377.91 341.85 402.19 330.41 407.18 332.78 431.03 319.55 440.26 299.53 471.95 284.72 482.17 267.14 485.73 253.45 463.54 247.49 431.91 231.45 430.14 220.71 407.9 207.83 394.89 194.05 387.28 182.03 388.44 157.43 386.12 149.82 380.47 135.29 383.46 128.45 374.64 107.92 388.04 99.07 381.19 85.2 376.67 85.55 385.88 74.77 388.07 66.93 394.86 52.32 395.47 51.8 378.34 39.79 369.13 26.38 372.92 15.12 354.49 22.44 311.84 19.14 293.94 6.99 293.64 1 286.97 Z" />
                        <g>
                            <text class="cls-2"
								transform="translate(200 269)">
                                <tspan x="0" y="0">광산구</tspan>
                            </text>
                        </g>
                    </g>
                </g>
            </g>
        </svg>
					</div>
				</div>
				<div id="right">
					<div id="sns"></div>
					<div class="title">
						<img src="asset/img/mega.png" width="20"
							style="margin-bottom: -4px;"> 민원현황
						<div id="comp_btn">
							<a
								href="https://baroeungdap.gwangju.go.kr/contentsView.do?menuId=baroeungda0210101000"
								target="_blank">
								<button class="a_btn">민원접수</button>
							</a>
						</div>
					</div>
					<div id="comp">
						<canvas id="comp_chart" width="500" height="230"></canvas>
					</div>
					<div class="title">
						<img src="asset/img/promise.png" width="20"
							style="margin-bottom: -4px;"> 공약현황
						<div id="prom_btn">
							<a
								href="https://www.gwangju.go.kr/gjmayor/contentsView.do?pageId=newgjmayor38"
								target="_blank">
								<button class="a_btn">상세보기</button>
							</a>
						</div>
					</div>
					<div id="prom">
						<table border="1" border-collapse="collapse" width="510"
							id="prom_table">
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
									out.print("<td>공약</td>");
									out.print("<td>세부</td>");
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
								<td colspan="2"><canvas id="myChart1" width="90"
										height="50"></canvas></td>
								<td colspan="2"><canvas id="myChart2" width="90"
										height="50"></canvas></td>
								<td colspan="2"><canvas id="myChart3" width="90"
										height="50"></canvas></td>
								<td colspan="2"><canvas id="myChart4" width="90"
										height="50"></canvas></td>
								<td colspan="2"><canvas id="myChart5" width="90"
										height="50"></canvas></td>
								</td>
							</tr>
							<tr>
								<td colspan="10"><span id="span1"></span> <span> 완료</span>
									<span id="span2"></span> <span> 진행중</span> <span id="span3"></span>
									<span> 보류</span></td>
							</tr>
						</table>
					</div>
					<p></p>
					<p></p>
					<div class="title">
						<img src="asset/img/news.png" width="20"
							style="margin-bottom: -4px;">시정뉴스
					</div>
					<div id="card">
						<table id="news_table" border="1" width="510">
							<tr colspan=2>
								<button id="news_btn">보도자료</button>
								<button id="notice_btn">공지사항</button>
								<button id="bul_btn">고시공고</button>
							</tr>
							<tr>
								<td width="420"><span id="ns1" onclick="location1();" style="cursor:pointer" width="420"></span></td>
								<td class="date" id="date1" width="75"></td>
							</tr>
							<tr>
								<td width="420"><span id="ns2" onclick="location2();" style="cursor:pointer" width="420"></span></td>
								<td class="date" id="date2"></td>
							</tr>
							<tr>
								<td width="420"><span id="ns3" onclick="location3();" style="cursor:pointer" width="420"></span></td>
								<td class="date" id="date3"></td>
							</tr>
							<tr>
								<td width="420"><span id="ns4" onclick="location4();" style="cursor:pointer" width="420"></span></td>
								<td class="date" id="date4"></td>
							</tr>
							<tr>
								<td width="420"><span id="ns5" onclick="location5();" style="cursor:pointer" width="420"></span></td>
								<td class="date" id="date5"></td>
							</tr>
						</table>
						<div class="title" id="img_title">
							<img src="asset/img/mega.png" width="20"
								style="margin-bottom: -4px;"> 카드뉴스
							<button id="pause" width="20">
								<img src="asset/img/video-pause-button.png" width="20">
							</button>
							<button id="start" width="20">
								<img src="asset/img/play-button.png" width="20">
							</button>
						</div>
						<table>
							<tr colspan=2>
								<div id="img_news">
									<div class="slider__wrap">
										<div class="slider__img">
											<div class="slider__inner">
												<div class="slider">
													<a
														href="https://www.gwangju.go.kr/boardView.do?pageId=www802&boardId=GR_0302000000&seq=1118&movePage=1"
														target="_blank"><img class="img_news"
														src="https://www.gwangju.go.kr/imageView/25fe88FFfBCbeQxjRRPIMPVOCEPj9gEWE6l1JJeEXXnf0NdDwnLJgUh7mS2IwFqn"
														alt="이미지1"></a>
												</div>
												<div class="slider">
													<a
														href="https://www.gwangju.go.kr/boardView.do?pageId=www802&boardId=GR_0302000000&seq=1116"
														target="_blank"><img class="img_news"
														src="https://www.gwangju.go.kr/imageView/25fe88FFfBCbeQxjRRPIMMOha9t9ZPj7H+KimZw/+t7f0NdDwnLJgUh7mS2IwFqn"
														alt="이미지2"></a>
												</div>
												<div class="slider">
													<a
														href="https://www.gwangju.go.kr/boardView.do?pageId=www802&boardId=GR_0302000000&seq=1115&movePage=2&searchTy=TM"
														target="_blank"><img class="img_news"
														src="https://www.gwangju.go.kr/imageView/25fe88FFfBCbeQxjRRPIMAhKvJKrJ2VNDTT5sfdN4Ozf0NdDwnLJgUh7mS2IwFqn"
														alt="이미지3"></a>
												</div>
												<div class="slider">
													<a
														href="https://www.gwangju.go.kr/boardView.do?pageId=www802&boardId=GR_0302000000&seq=1114"
														target="_blank"><img class="img_news"
														src="https://www.gwangju.go.kr/imageView/25fe88FFfBCbeQxjRRPIMAdQEc1DiXZARckyjN4hIVXf0NdDwnLJgUh7mS2IwFqn"
														alt="이미지4"></a>
												</div>
												<div class="slider">
													<a
														href="https://www.gwangju.go.kr/boardView.do?pageId=www802&boardId=GR_0302000000&seq=1111"
														target="_blank"><img class="img_news"
														src="https://www.gwangju.go.kr/imageView/25fe88FFfBCbeQxjRRPIMCrJmB7BbuhqpkqL67xpnhff0NdDwnLJgUh7mS2IwFqn"
														alt="이미지5"></a>
												</div>
												<div class="slider">
													<a
														href="https://www.gwangju.go.kr/boardView.do?pageId=www802&boardId=GR_0302000000&seq=1120"
														target="_blank"><img class="img_news"
														src="https://www.gwangju.go.kr/imageView/25fe88FFfBCbeQxjRRPIMElZ5TVBvkRtSyZ41K6bxajf0NdDwnLJgUh7mS2IwFqn"
														alt="이미지6"></a>
												</div>
												<div class="slider">
													<a
														href="https://www.gwangju.go.kr/boardView.do?pageId=www802&boardId=GR_0302000000&seq=1123"
														target="_blank"><img class="img_news"
														src="https://www.gwangju.go.kr/imageView/25fe88FFfBCbeQxjRRPIMHJwZBQxmJhJ5NFho1AZ2EHf0NdDwnLJgUh7mS2IwFqn"
														alt="이미지7"></a>
												</div>
											</div>
										</div>
									</div>
								</div>
							</tr>
						</table>
					</div>
				</div>
			</div>
		</div>
		<script
			src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
		<script
			src="https://cdn.jsdelivr.net/npm/chart.js@3.7.1/dist/chart.min.js"></script>
		<script src="asset/js/job.js"></script>
		<script src="asset/js/prom.js"></script>
		<script src="asset/js/card.js"></script>
		<script src="pop.js"></script>
		<script src="asset/js/comp.js"></script>
		<script src="asset/js/modal.js"></script>
		<script src="asset/js/wheater.js"></script>
		<script src="asset/js/img_news.js"></script>
		<link rel="stylesheet" href="asset/css/modal.css">
		<link rel="stylesheet" href="asset/css/map.css">
		<link rel="stylesheet" href="asset/css/card.css">
		<link rel="stylesheet" href="asset/css/comp.css">
		<link rel="stylesheet" href="asset/css/pop.css">
		<link rel="stylesheet" href="asset/css/prom.css">
		<link rel="stylesheet" href="asset/css/job.css">
		<link rel="stylesheet" href="asset/css/img_news.css">
</body>
</html>
