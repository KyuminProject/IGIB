<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<title>Coming Soon - Start Bootstrap Theme</title>
<link rel="icon" type="image/x-icon" href="assets/favicon.ico">
<!-- Font Awesome icons (free version)-->
<script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js"
	crossorigin="anonymous"></script>

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>

<!-- Google fonts-->
<link rel="preconnect" href="https://fonts.gstatic.com">
<link
	href="https://fonts.googleapis.com/css2?family=Tinos:ital,wght@0,400;0,700;1,400;1,700&amp;display=swap"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css2?family=DM+Sans:ital,wght@0,400;0,500;0,700;1,400;1,500;1,700&amp;display=swap"
	rel="stylesheet">
<!-- Core theme CSS (includes Bootstrap)-->
<link href="css/main.css" rel="stylesheet">
<link href="css/lolmain.css" rel="stylesheet">
<link href="css/movingPage.css" rel="stylesheet">
<link href="css/menu.css" rel="stylesheet">
<link href="css/questionMark.css" rel="stylesheet">

<script type="text/javascript" src="script/questionMark.js"></script>


<style>

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

@
keyframes fillAnimation { 0% {
	width: 0;
}

100


%
{
width


:


%;
}
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

#tierBox1 {
	margin-bottom: 5px;
}

#teamBox {
	display: flex;
	align-items: center;
	height: 90px;
	justify-content: center;
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

#baron {
	height: 100px;
	width: 100x;
	margin: 6px;
	padding: 6px;
}

#baron:hover {
	border: 1px solid #ffffff7a;
	background-color: #ffffff7a;
}

#dragon:hover {
	border: 1px solid #ffffff7a;
	background-color: #ffffff7a;
}

#dragon {
	height: 100px;
	width: 100px;
	margin: 6px;
	padding: 3px;
}
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
	<%@ include file="../include/video.jsp"%>

	<!-- Masthead-->
	<div class="masthead">
		<!-- menu -->
		<%@ include file="../include/menu.jsp"%>

		<div class="masthead-content text-white">
			<div class="container-fluid px-4 px-lg-0">
				<h1 class="fst-italic lh-1">
					<a href="/" style="color: whitesmoke;">GOLD PER MINUTE</a>
				</h1>
				<span id="questionMark" onmouseover="showTooltip()"
					onmouseout="hideTooltip()"> <i
					class="fa-regular fa-circle-question"></i>
				</span>
				<div id="questionMarkBox"
					style="display: none; z-index: 10; background-color: rgba(0, 0, 0, 0.7);">
					<div id="explainBox">
						<span>티어별 분당 골드를 알려주는 페이지</span>
					</div>
				</div>


				<div id="tierBox1">
					<form id="tierForm" action="/minuteGoldInfo" method="POST">
						<input type="hidden" name="tier" id="selectTierInput">
					</form>
					<img class="tierImg" id="IRON" alt="IRON"
						src="/assets/img_tier/Rank=Iron.png"
						onclick="selectTierImg('IRON')"> <img class="tierImg"
						id="BRONZE" alt="BRONZE" src="/assets/img_tier/Rank=Bronze.png"
						onclick="selectTierImg('BRONZE')"> <img class="tierImg"
						id="SILVER" alt="SILVER" src="/assets/img_tier/Rank=Silver.png"
						onclick="selectTierImg('SILVER')"> <img class="tierImg"
						id="GOLD" alt="GOLD" src="/assets/img_tier/Rank=Gold.png"
						onclick="selectTierImg('GOLD')"> <img class="tierImg"
						id="PLATINUM" alt="PLATINUM"
						src="/assets/img_tier/Rank=Platinum.png"
						onclick="selectTierImg('PLATINUM')">
				</div>
				<div id="tierBox2">
					<img class="tierImg" id="EMERALD" alt="EMERALD"
						src="/assets/img_tier/Rank=Emerald.png"
						onclick="selectTierImg('EMERALD')"> <img class="tierImg"
						id="DIAMOND" alt="DIAMOND" src="/assets/img_tier/Rank=Diamond.png"
						onclick="selectTierImg('DIAMOND')"> <img class="tierImg"
						id="MASTER" alt="MASTER" src="/assets/img_tier/Rank=Master.png"
						onclick="selectTierImg('MASTER')"> <img class="tierImg"
						id="GRANDMASTER" alt="GRANDMASTER"
						src="/assets/img_tier/Rank=Grandmaster.png"
						onclick="selectTierImg('GRANDMASTER')"> <img class="tierImg"
						id="CHALLENGER" alt="CHALLENGER"
						src="/assets/img_tier/Rank=Challenger.png"
						onclick="selectTierImg('CHALLENGER')">
				</div>
			</div>
		</div>

		<div class="social-icons">
			<div
				class="d-flex flex-row flex-lg-column justify-content-center align-items-center h-100 mt-3 mt-lg-0">
				<a class="btn btn-dark m-3" href="/"> <i
					class="fa-solid fa-house"></i>
				</a>
			</div>
		</div>
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
            
             // 폼 제출
            document.getElementById("tierForm").submit();
         }
         
          window.onload = function() {
                 var message = "<%=request.getAttribute("msg")%>"; // 메시지 가져오기
				if (message && message.trim() !== ""
						&& message.trim() !== "null") { // 메시지가 null이 아니고 공백이 아닐 때만 표시
					alert(message); // 알림창 표시
				}
			}
		</script>