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
<link href="css/menu.css" rel="stylesheet">
<link href="css/movingPage.css" rel="stylesheet">
<script type="text/javascript" src="script/movingPage.js"></script>
<style>
/* CSS 스타일은 여기에 추가 */
.bg-video {
	position: relative; /* 비디오를 상대적으로 위치시킵니다. */
	z-index: 0; /* 비디오의 쌓임 순서를 푸터 아래로 내립니다. */
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

.masthead-content {
	margin-top: 100px;
}

/* 추가된 스타일 */
.masthead.fixed {
	position: fixed; /* fixed로 변경될 때 위치 고정 */
	width: 100%; /* 너비를 100%로 설정하여 가득 찬 화면 효과 생성 */
	text-align: center;
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
	0% { width: 0;}
	100% {	width: %;}
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
form {
	margin-top: 25px;
}

.tierImg {
	width: 90px;
	height: 90px;
	cursor: pointer;
}

.clicked {
	border: 1px solid #ffffff7a;
	background-color: #ffffff7a;
}

.tierImg:hover {
	border: 1px solid #ffffff7a;
	background-color: #ffffff7a;
}

#tierBox, #tierBox2 {
	margin: 5px;
}

#teamBox {
	display: flex;
	align-items: center;
	height: 90px;
	justify-content: center;
	margin: 5px;
}

.team {
	display: inline-block;
	width: 90px;
	font-size: x-large;
	margin: 5px;
	cursor: pointer;
}

#redTeam:hover {
	border: 1px solid #ffffff7a;
	background-color: #ffffff7a;
	color: red;
}

#blueTeam:hover {
	border: 1px solid #ffffff7a;
	background-color: #ffffff7a;
	color: blue;
}

#horde &DragonBox {
	margin: 15px;
}

#HORDE {
	height: 100px;
	width: 100x;
	margin: 6px;
	padding: 6px;
}

#HORDE:hover {
	border: 1px solid #ffffff7a;
	background-color: #ffffff7a;
}

#DRAGON:hover {
	border: 1px solid #ffffff7a;
	background-color: #ffffff7a;
}

#DRAGON {
	height: 100px;
	width: 100px;
	margin: 6px;
	padding: 3px;
}

#btnBox {
	margin: 15px;
}

#btn {
	background-color: #2a5555;
	width: 100px;
	height: 35px;
	border: none;
	border-radius: 6px;
	color: white;
	margin: 20px;
}

#btn:hover {
	background-color: #244848;
}

#resultBox {
	margin: 25px;
	text-align: -webkit-center;
}

h1 {
	display: inline-block;
}

#questionMark {
	margin-left: 11px;
	font-size: larger;
	position: absolute;
	cursor: pointer;
}

#questionMarkBox {
	margin-top: 10px;
	margin-left: 32px;
	width: 300px;
	height: 150px;
	padding: 2px;
	border: 1px solid;
	border-radius: 10px;
	position: absolute;
}

#explainBox {
	display: flex;
	height: 100%;
	justify-content: center;
	align-items: center;
}
}
}
</style>


</head>
<body>
	<!-- Background Video-->
	<%@ include file="../include/video.jsp"%>
	
	<!-- Masthead-->
	<div class="masthead">
	
		<!-- menu -->
		<%@ include file="../include/menu.jsp"%>
		
		<div class="masthead-content text-white">
			<div class="container-fluid px-4 px-lg-0">
				<h1 class="fst-italic lh-1">Horde vs Dragon</h1>
				<span id="questionMark" onmouseover="showTooltip()" onmouseout="hideTooltip()">
					<i class="fa-regular fa-circle-question"></i>
				</span>
				<div id="questionMarkBox" style="display: none;
    z-index: 10;
    background-color: rgba(0, 0, 0, 0.7);">
					<div id="explainBox">
						<span> 공허를 먼저 먹을 때 vs 용을 먼저 먹을 때 티어별로, 팀별로 승률 계산 </span>
					</div>
				</div>
				<form action="/winningHordeVsDragon" method="post" onsubmit="return formCheck(this)">
					<div id="tierBox1">
						<input type="hidden" name="tier" id="selectTierInput">
						<img class="tierImg" id="IRON" alt="IRON" src="/assets/img_tier/Rank=Iron.png" onclick="selectTierImg('IRON')">
						<img class="tierImg" id="BRONZE" alt="BRONZE" src="/assets/img_tier/Rank=Bronze.png" onclick="selectTierImg('BRONZE')">
						<img class="tierImg" id="SILVER" alt="SILVER" src="/assets/img_tier/Rank=Silver.png" onclick="selectTierImg('SILVER')">
						<img class="tierImg" id="GOLD" alt="GOLD" src="/assets/img_tier/Rank=Gold.png" onclick="selectTierImg('GOLD')">
						<img class="tierImg" id="PLATINUM" alt="PLATINUM" src="/assets/img_tier/Rank=Platinum.png" onclick="selectTierImg('PLATINUM')">
					</div>
					<div id="tierBox2">
						<img class="tierImg" id="EMERALD" alt="EMERALD" src="/assets/img_tier/Rank=Emerald.png" onclick="selectTierImg('EMERALD')">
						<img class="tierImg" id="DIAMOND" alt="DIAMOND" src="/assets/img_tier/Rank=Diamond.png" onclick="selectTierImg('DIAMOND')">
						<img class="tierImg" id="MASTER" alt="MASTER" src="/assets/img_tier/Rank=Master.png" onclick="selectTierImg('MASTER')">
						<img class="tierImg" id="GRANDMASTER" alt="GRANDMASTER" src="/assets/img_tier/Rank=Grandmaster.png" onclick="selectTierImg('GRANDMASTER')">
						<img class="tierImg" id="CHALLENGER" alt="CHALLENGER" src="/assets/img_tier/Rank=Challenger.png" onclick="selectTierImg('CHALLENGER')">
					</div>
					<div id="teamBox">
						<input type="hidden" name="team" id="selectTeamInput">
						<span class="team" id="redTeam" onclick="selectTeam(this.id,200)">RED</span>
						<span class="team" id="blueTeam" onclick="selectTeam(this.id,100)">BLUE</span>
					</div>
					<div id="horde&DragonBox">
						<input type="hidden" name="hordeOrDragon" id="selectHordeVsDragonInput">
						<img class="icon" id="HORDE" alt="horde" src="/assets/img/icon/baron.png" onclick="selectHordeVsDragon(this.id)" style="height: 100px; margin-bottom: 6px">
						<img class="icon" id="DRAGON" alt="dragon" src="/assets/img/icon/dragon.png" onclick="selectHordeVsDragon(this.id)" style="height: 100px; margin-bottom: 6px">
					</div>
					<div id="resultBox">
						<!-- 퍼센트바 html -->
						<div id="percentBar" class="progress-bar" data-percent="${hordeVsDragonResult}" style="display: none">
							<div class="fill"></div>
							<span class="percent-label"></span>
						</div>
					</div>
					<div id="btnBox">
						<button id="btn" type="submit">승률 확인</button>
					</div>
				</form>
			</div>
		</div>

	<div class="social-icons">
		<div class="d-flex flex-row flex-lg-column justify-content-center align-items-center h-100 mt-3 mt-lg-0">
			<a class="btn btn-dark m-3" href="/">
				<i class="fa-solid fa-house"></i>
			</a>
		</div>
	</div>
	
		<script type="text/javascript">
			/* 물음표 아이콘 hover -> 해당 페이지 설명  */
			function showTooltip() {
			    var tooltip = document.getElementById("questionMarkBox");
			    tooltip.style.display = "inline-block";
			}
	
			function hideTooltip() {
			    var tooltip = document.getElementById("questionMarkBox");
			    tooltip.style.display = "none";
			}
		</script>
		<script type="text/javascript">
			/* 티어 선택 */
			function selectTierImg(tier) {
				// 선택된 tier를 hidden input에 설정
				document.getElementById("selectTierInput").value = tier;
				console.log("티어 : " + document.getElementById("selectTierInput").value)

				// tier 클래스 초기화
				var tierImgs = document.querySelectorAll('.tierImg');
				tierImgs.forEach(function(img) {
					img.classList.remove('clicked');
				});

				// 클릭한 이미지에 'clicked' 클래스 추가
				var tierImg = document.getElementById(tier);
				tierImg.classList.add('clicked');
			}
			
			/* 팀 선택 */
			function selectTeam(team, teamVal) {
				document.getElementById("selectTeamInput").value = teamVal;
				console.log("팀 : " + document.getElementById("selectTeamInput").value)

				// team 클래스 초기화
				var teams = document.querySelectorAll('.team');
				teams.forEach(function(x) {
					x.classList.remove('clicked');
				});

				// 클릭한 이미지에 'clicked' 클래스 추가
				var selectedTeam = document.getElementById(team);
				selectedTeam.classList.add('clicked');

			}
			
			/* Horde vs Dragon 선택 */
			function selectHordeVsDragon(selected) {
				// 선택된 tier를 hidden input에 설정
				document.getElementById("selectHordeVsDragonInput").value = selected;
				console.log("공허 vs 용 : " + document.getElementById("selectHordeVsDragonInput").value)

				// tier 클래스 초기화
				var options = document.querySelectorAll('.icon');
				options.forEach(function(x) {
					x.classList.remove('clicked');
				});

				// 클릭한 이미지에 'clicked' 클래스 추가
				var option = document.getElementById(selected);
				option.classList.add('clicked');
			}
		</script>

		<script type="text/javascript">
			/* 모두 입력해야 기능 실행 */
			function formCheck(formObj){
				console.log("formCheck() 호출")
				
				// 티어 
				var inputTier = formObj.tier.value;
				if(inputTier == ""){
					alert("티어를 선택해 주세요")
					return false;
				}
				
				// 팀
				var inputTeam = formObj.team.value;
				if(inputTeam == ""){
					alert("팀을 선택해 주세요")
					return false;
				}
				
				// 공허 vs 용
				var inputHordeOrDragon = formObj.hordeOrDragon.value;
				if(inputHordeOrDragon == ""){
					alert("Horde과 Dragon 중 하나를 선택해 주세요")
					return false;
				}

			}
		</script>

		<script type="text/javascript">
			/* 결과 출력 */
			document.addEventListener("DOMContentLoaded", function() {
				selectTierImg("${tier}");
				if(${team} == "200"){
					var teamName = "redTeam"
				} else{
					var teamName = "blueTeam"
				}
				selectTeam(teamName, "${team}");
				selectHordeVsDragon("${hordeOrDragon}");
				
				var winningRate = "${hordeVsDragonResult}";
				console.log("winningRate : " + winningRate)
				
				if(winningRate != "failure"){
					document.getElementById('percentBar').style.removeProperty('display');
				} else{
					alert("전적 데이터를 불러올 수 없습니다. \n 관리자에게 문의해 주세요!")
				}
			});
		</script>

		<script type="text/javascript">
			/* 퍼센트 바 */
			document.addEventListener("DOMContentLoaded", function() {
				var progressBars = document.querySelectorAll(".progress-bar");

				progressBars.forEach(function(progressBar) {
					var fill = progressBar.querySelector(".fill");
					var percentLabel = progressBar
							.querySelector(".percent-label");
					var percent = progressBar.getAttribute("data-percent");

					fill.style.width = percent + "%"; // 바의 너비 설정
					percentLabel.textContent = "승률 : " + percent + "%"; // 퍼센트 값 설정
				});
			});
		</script>