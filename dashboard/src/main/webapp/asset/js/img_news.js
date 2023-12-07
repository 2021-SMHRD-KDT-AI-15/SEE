const sliderWrap = document.querySelector(".slider__wrap");
const sliderImg = sliderWrap.querySelector(".slider__img");             // 보여지는 영역
const sliderInner = sliderWrap.querySelector(".slider__inner");         // 움직이는 영역
const slider = sliderWrap.querySelectorAll(".slider");                  // 개별 이미지

let currentIndex = 0;               // 현재 보이는 이미지
let sliderCount = slider.length;    // 이미지 갯수
let sliderInterval = 1000;          // 이미지 변경 간격 시간
let sliderWidth = slider[0].clientWidth;   // 이미지 가로값 구하기
let sliderClone = sliderInner.firstElementChild.cloneNode(true);  // 첫 번째 이미지 복사

sliderInner.style.transition = "all 0.4s";
setInterval(() => {
	currentIndex = (currentIndex + 1) % sliderCount;
	sliderInner.style.transform = "translateX(" + -170 * currentIndex + "px)";
}, sliderInterval);
