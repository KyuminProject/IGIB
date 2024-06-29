<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<title>IGIB - Welcome to our site</title>
<link rel="icon" type="image/x-icon" href="assets/favicon.ico">
<!-- jQuery -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<!-- Font Awesome icons (free version)-->
<script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
<!-- Google fonts-->
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Tinos:ital,wght@0,400;0,700;1,400;1,700&amp;display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=DM+Sans:ital,wght@0,400;0,500;0,700;1,400;1,500;1,700&amp;display=swap" rel="stylesheet">
<!-- CSS -->
<link href="css/main.css" rel="stylesheet">
<link href="css/menu.css" rel="stylesheet">
<link href="css/roamingkill.css" rel="stylesheet">
<link href="css/movingPage.css" rel="stylesheet">
<link href="css/questionMark.css" rel="stylesheet">

<!-- javaScript -->
<script type="text/javascript" src="script/movingPage.js"></script>
<script type="text/javascript" src="script/roamingkill.js"></script>
<script type="text/javascript" src="script/questionMark.js"></script>


<style type="text/css">
/* 퍼센트바 스타일 시작 */
.progress-bar {
	width: 500px; /* 퍼센트 바의 전체 너비 */
	height: 24px; /* 퍼센트 바의 높이 */
	background: #ddd; /* 퍼센트 바의 기본 색상 */
	border-radius: 5px; /* 퍼센트 바의 모서리를 둥글게 */
	overflow: hidden; /* 넘치는 부분 숨기기 */
	position: relative; /* 위치 설정 */
	margin-top: 5px; /* 각 퍼센트 바 간의 간격 */
	margin-bottom: 10px;
}

.fill {
	height: 100%;
	background-color: #ff3223; /* 퍼센트 바가 채워지는 색상 */
	border-radius: 5px; /* 퍼센트 바의 모서리를 둥글게 */
	width: 0; /* 초기에는 너비를 0으로 설정 */
	animation: fillAnimation 2s ease forwards; /* 채워지는 애니메이션 적용 */
}

@keyframes fillAnimation { 
	0% {width: 0;}
	100%{width:%;}
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
</style>

</head>

<body>
	<!-- Background Video-->
	<%@ include file="../include/video.jsp"%>

	<div class="masthead">
		<!-- menu -->
		<%@ include file="../include/menu.jsp"%>

		<div class="masthead-content text-white">
			<div class="container-fluid px-4 px-lg-0">
				<h1 class="fst-italic lh-1 mb-4">
					<a href="/" style="color: whitesmoke;">Jungle VS Line Champion</a>
				</h1>
				<span id="questionMark" onmouseover="showTooltip()" onmouseout="hideTooltip()">
					<i class="fa-regular fa-circle-question"></i>
				</span>
				<div id="questionMarkBox" style="display: none; z-index: 10; background-color: rgba(0, 0, 0, 0.7);">
					<div id="explainBox">
						<span>정글이 킬을 할 때 승률, 선택된 다른 라인이 킬을 할 때 승률 출력</span>
					</div>
				</div>
			</div>

			<table class="Jungtable">
				<tbody>
					<tr>
						<td class="position_td">
							<div>
								<a href="#" title="정글" id="">
									<img class="position_img" src="/assets/position/Position_Challenger-Jungle.png">
								</a>
							</div>
						</td>
					</tr>
				</tbody>
			</table>

			<table class="Linetable">
				<tbody>
					<tr>
						<td class="position_td">
							<div>
								<a href="#" title="탑" id="TOP">
									<img class="tposition_img" src="/assets/position/Position_Challenger-Top.png">
								</a>
							</div>
						</td>
						<td class="position_td">
							<div>
								<a href="#" title="미드" id="MIDDLE">
									<img class="tposition_img" src="/assets/position/Position_Challenger-Mid.png">
								</a>
							</div>
						</td>
						<td class="position_td">
							<div>
								<a href="#" title="원딜" id="BOTTOM">
									<img class="tposition_img" src="/assets/position/Position_Challenger-Bot.png">
								</a>
							</div>
						</td>
						<td class="position_td">
							<div>
								<a href="#" title="서폿" id="UTILITY">
									<img class="tposition_img" src="/assets/position/Position_Challenger-Support.png">
								</a>
							</div>
						</td>
					</tr>
				</tbody>
			</table>

			<div id="roamingkillbar" style="margin-top: 20px; color: white;"></div>
		</div>
	</div>

	<div class="social-icons">
		<div class="d-flex flex-row flex-lg-column justify-content-center align-items-center h-100 mt-3 mt-lg-0">
			<a class="btn btn-dark m-3" href="/">
				<i class="fa-solid fa-house"></i>
			</a>
		</div>
	</div>

</body>

</html>