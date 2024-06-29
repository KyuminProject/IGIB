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
<link href="css/movingPage.css" rel="stylesheet">
<link href="css/questionMark.css" rel="stylesheet">
<link href="css/sightScore.css" rel="stylesheet">

<!-- javaScript -->
<!-- 차트를 사용하기 위한 js -->
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
<script type="text/javascript" src="script/movingPage.js"></script>
<script type="text/javascript" src="script/questionMark.js"></script>
<script type="text/javascript" src="script/sightScore.js"></script>
</head>

<body>
	<!-- Background Video-->
	<%@ include file="../include/video.jsp"%>

	<div class="masthead">
		<!-- menu -->
		<%@ include file="../include/menu.jsp"%>

		<div id='masthead-content' class="masthead-content text-white">
			<div class="container-fluid px-4 px-lg-0">
				<h1 class="fst-italic lh-1 mb-4" style="font-size: 46px;">
					<a href="/" style="color: whitesmoke;">WARDS AND VISION SCORE BY TIER</a>
				</h1>
				<span id="questionMark" onmouseover="showTooltip()" onmouseout="hideTooltip()">
					<i class="fa-regular fa-circle-question"></i>
				</span>
				<div id="questionMarkBox" style="display: none; background-color: rgba(0, 0, 0, 0.7);">
					<div id="explainBox">
						<span>티어별 평균 와드 사용 횟수 및 티어별 평균 시야 점수</span>
					</div>
				</div>
				<table style="width: 100%; margin-bottom: 20px;">
					<tbody>
						<tr>
							<td class="ward_td">
								<div class='ward_class'>
									<a href="#" title="YELLOW_TRINKET" id="YELLOW_TRINKET">
										<img class="ward_img" src="/assets/img/ward/Warding_Totem.png">
									</a>
								</div>
							</td>
							<td class="ward_td">
								<div class='ward_class'>
									<a href="#" title="CONTROL_WARD" id="CONTROL_WARD">
										<img class="ward_img" src="/assets/img/ward/Control_Ward.png">
									</a>
								</div>
							</td>
							<td class="ward_td">
								<div class='ward_class'>
									<a href="#" title="BLUE_TRINKET" id="BLUE_TRINKET">
										<img class="ward_img" src="/assets/img/ward/Farsight_Alteration.png">
									</a>
								</div>
							</td>
							<td class="ward_td">
								<div class='ward_class'>
									<a href="#" title="SIGHT_WARD" id="SIGHT_WARD">
										<img class="ward_img" src="/assets/img/ward/SIGHT_WARD.png">
									</a>
								</div>
							</td>
						</tr>
					</tbody>
				</table>
				<div class="chart-container">
					<div class="myLineChart">
						<canvas id="myLineChart"></canvas>
					</div>
					<div class="myBarChart">
						<canvas id="myBarChart"></canvas>
					</div>
				</div>
			</div>
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