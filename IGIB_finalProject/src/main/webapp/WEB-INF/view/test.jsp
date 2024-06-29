<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<title>Coming Soon - Start Bootstrap Theme</title>
<link rel="icon" type="image/x-icon" href="assets/favicon.ico">
<!-- Font Awesome icons (free version)-->
<script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>

<!-- Google fonts-->
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Tinos:ital,wght@0,400;0,700;1,400;1,700&amp;display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=DM+Sans:ital,wght@0,400;0,500;0,700;1,400;1,500;1,700&amp;display=swap" rel="stylesheet">
<!-- Core theme CSS (includes Bootstrap)-->
<link href="css/main.css" rel="stylesheet">
<style>
/* CSS 스타일은 여기에 추가 */
#loginForm, .form-select, .form-control, #submitButton {
	width: 100%;
}

#loginBtn {
	width: 10%
}

#userIdarea, #userPwarea {
	width: 70%;
}

#findId, #findPw {
	font-size: 12px;
	color: whitesmoke;
}

#kakaobtn {
	display: flex;
	justify-content: center;
}

.menu {
	position: absolute;
	top: 0;
	left: 0;
	margin: 20px;
	color: white;
}

.menu ul {
	list-style: none;
	padding: 0;
	margin: 0; /* Updated margin */
}

.menu ul li {
	display: inline-block;
	margin-right: 100px;
	position: relative; /* 추가: 하위 메뉴를 포함한 위치 설정 */
}

.menu ul li:last-child {
	margin-right: 0;
}

.submenu {
	display: none;
	position: absolute;
	top: 100%;
	left: -15px;
	min-width: 120px;
	box-shadow: 0px 8px 16px 0px rgba(0, 0, 0, 0.2);
	z-index: 1;
}

.submenu a {
	color: whitesmoke;
	padding: 12px 16px;
	text-decoration: none;
	display: block;
	font-size: 12px;
	width: max-content;
}

/* 수정: 메뉴에 마우스를 올리면 모든 서브메뉴가 나타나도록 변경 */
.menu:hover .submenu {
	display: block;
}

.bg-video {
	position: relative; /* 비디오를 상대적으로 위치시킵니다. */
	z-index: 0; /* 비디오의 쌓임 순서를 푸터 아래로 내립니다. */
}

#Discord {
	width: 100%;
}

.menuspan {
	font-size: 20px;
}

a {
	text-decoration: none;
}
/* 기존 스타일 */
.masthead:before {
	content: "";
	position: absolute;
	top: 0;
	bottom: 0;
	right: 0;
	left: 0;
	height: 100%;
	width: 0%; /* 초기에는 너비가 0% */
	background-color: rgba(0, 0, 0, 0.1);
	/* 변경될 스타일 추가 */
	transition: width 1s ease; /* 너비에만 트랜지션 적용 */
}

/* 추가된 스타일 */
.masthead.fixed:before {
	width: 100%; /* fixed 상태일 때 너비를 100%로 변경 */
}

/* 추가된 스타일 */
.masthead {
	transition: all 1s ease; /* .masthead의 모든 속성에 트랜지션 적용 */
	position: relative; /* fixed로 변환되기 전에는 relative로 설정 */
}

/* 추가된 스타일 */
.masthead.fixed {
	position: fixed; /* fixed로 변경될 때 위치 고정 */
	width: 100%; /* 너비를 100%로 설정하여 가득 찬 화면 효과 생성 */
}



/* 퍼센트바 스타일 시작 */
.progress-bar {
  width: 500px; /* 퍼센트 바의 전체 너비 */
  height: 24px; /* 퍼센트 바의 높이 */
  background: #ddd; /* 퍼센트 바의 기본 색상 */
  border-radius: 5px; /* 퍼센트 바의 모서리를 둥글게 */
  overflow: hidden; /* 넘치는 부분 숨기기 */
  position: relative; /* 위치 설정 */
}

.fill {
  height: 100%;
  background-color: #ff3223; /* 퍼센트 바가 채워지는 색상 */
  border-radius: 5px; /* 퍼센트 바의 모서리를 둥글게 */
  width: 0; /* 초기에는 너비를 0으로 설정 */
  animation: fillAnimation 2s ease forwards; /* 채워지는 애니메이션 적용 */
}

@keyframes fillAnimation {
  0% { width: 0; }
  100% { width: %; }
}

.percent-label {
  position: absolute; /* 절대 위치 설정 */
  top: 50%; /* 수직 중앙 정렬 */
  left: 50%; /* 수평 중앙 정렬 */
  transform: translate(-50%, -50%); /* 정확히 가운데에 위치하도록 조정 */
  font-size: 18px; /* 글자 크기 설정 */
  font-weight: bold; /* 글자 굵게 설정 */
  color: #333; /* 글자 색상 */
}
/* 퍼센트바 스타일 끝 */

/* 시간바 스타일 시작 */
.time-progress-container {
  position: relative;
  width: 500px;
  margin: 5px auto;
}

.time-progress-bar {
  width: 100%;
  height: 2px;
  background: #ddd;
  border-radius: 5px;
  overflow: hidden;
  position: relative;
}

.time-fill {
  height: 100%;
  background-color: #ff3223;
  width: 0%; /* 초기 너비 설정 */
}

.time-slider {
  position: absolute;
  top: -10px;
  left: 0;
  width: 100%;
  height: 20px;
  background: transparent;
  -webkit-appearance: none;
}

.time-slider::-webkit-slider-thumb {
  -webkit-appearance: none;
  appearance: none;
  width: 20px;
  height: 20px;
  border-radius: 50%;
  background: #333;
  cursor: pointer;
}

.time-slider::-moz-range-thumb {
  width: 20px;
  height: 20px;
  border-radius: 50%;
  background: #333;
  cursor: pointer;
}

.time-label {
  position: absolute;
  top: -30px;
  left: 0%;
  transform: translateX(-50%);
  font-size: 16px;
  font-weight: bold;
  color: white;
}
/* 시간바 스타일 끝 */


</style>
<script>
        // 페이지 로딩 후 실행되는 JavaScript
        document.addEventListener("DOMContentLoaded", function() {
            // .masthead 요소 선택
            var masthead = document.querySelector(".masthead");
            // 페이지 로딩 후 1초 후에 masthead 클래스에 fixed 클래스 추가
            setTimeout(function() {
                masthead.classList.add("fixed");
            }, 1000);
        });
        
        

    </script>


</head>
<body>
	<!-- Background Video-->
	<video class="bg-video" playsinline="playsinline" autoplay="autoplay" muted="muted" loop="loop">
		<source src="assets/mp4/bg.mp4" type="video/mp4">
	</video>
	<!-- Masthead-->
	<div class="masthead">
		<div class="menu" onmouseover="showSubmenu()" onmouseout="hideSubmenu()">
			<ul>
				<li><span class="menuspan" style="color: whitesmoke;">승률</span>
					<div class="submenu">
						<a href="#">라인별 궁합 승률</a> <a href="#">내 친구와의 승률</a> <a href="#">용별 승률</a> <a href="#">공허 VS 용</a>
					</div></li>
				<li><span class="menuspan" style="color: whitesmoke;">티어 올리기</span>
					<div class="submenu">
						<a href="#">챔피언 추천</a> <a href="#">티어별 와드 위치 맵</a> <a href="#">챌린저의 정글 및 로밍 동선</a> <a href="#">로밍 킬)정글 vs 라인챔</a>
					</div></li>
				<li><span class="menuspan" style="color: whitesmoke;">롤 정보</span>
					<div class="submenu">
						<a href="#">챔피언 상세 정보</a> <a href="#">아이템별 상성 선택률</a>
					</div></li>
				<li><span class="menuspan" style="color: whitesmoke;">나의 롤 정보</span>
					<div class="submenu">
						<a href="#">라인별 타워 파괴 속도</a> <a href="#">라인별 첫 킬 시간</a> <a href="#">라인별 분당 CS</a> <a href="#">퍼블 속도 및 라인별 퍼블 빈도</a>
					</div></li>
				<li><span class="menuspan" style="color: whitesmoke;">유사도</span>
					<div class="submenu">
						<a href="#">서로 닮은 챔피언은?</a> <a href="#">서로 닮은 아이템은?</a> <a href="#">나와 프로의 유사도는?</a>
					</div></li>
			</ul>
		</div>
		<div class="masthead-content text-white">
			<div class="container-fluid px-4 px-lg-0">
				<h1 class="fst-italic lh-1 mb-4">
					<a href="/" style="color: whitesmoke;">퍼센트바</a>
				</h1>
				<!-- 퍼센트바 html -->
				<div class="progress-bar" data-percent="50">
					<div class="fill"></div>
					<span class="percent-label"></span>
				</div>

				<hr>
				
				<h1 class="fst-italic lh-1 mb-4">
					<a href="/" style="color: whitesmoke;">시간바</a>
				</h1>
				<!-- 시간바 html -->
				<div class="time-progress-container">
					<div class="time-progress-bar">
						<div class="time-fill"></div>
					</div>
					<input type="range" class="time-slider" min="0" max="100" value="0">
					<span class="time-label">0분</span>
				</div>


			</div>
			
		</div>
	</div>

	<div class="social-icons">
		<div class="d-flex flex-row flex-lg-column justify-content-center align-items-center h-100 mt-3 mt-lg-0">
			<a class="btn btn-dark m-3" href="/join"><i class="fa-regular fa-address-card"></i></a>
		</div>
	</div>
	<script type="text/javascript">
		/* 퍼센트 바 */
		document.addEventListener("DOMContentLoaded", function() {
			var progressBars = document.querySelectorAll(".progress-bar");

			progressBars.forEach(function(progressBar) {
				var fill = progressBar.querySelector(".fill");
				var percentLabel = progressBar.querySelector(".percent-label");
				var percent = progressBar.getAttribute("data-percent");

				fill.style.width = percent + "%"; // 바의 너비 설정
				percentLabel.textContent = percent + "%"; // 퍼센트 값 설정
			});
		});
	</script>
	<script type="text/javascript">
		/* 시간 바 */
		document.addEventListener("DOMContentLoaded", function() {
			var slider = document.querySelector(".time-slider");
			var fill = document.querySelector(".time-fill");
			var timeLabel = document.querySelector(".time-label");

			slider.addEventListener("input", function() {
				var percent = slider.value;
				fill.style.width = percent + "%";
				timeLabel.textContent = percent + "분";
				timeLabel.style.left = percent + "%";
			});
		});
	</script>