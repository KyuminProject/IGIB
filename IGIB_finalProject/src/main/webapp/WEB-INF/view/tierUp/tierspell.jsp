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
<link href="css/tierspell.css" rel="stylesheet">
<link href="css/questionMark.css" rel="stylesheet">


<!-- javaScript -->
<script type="text/javascript" src="script/movingPage.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
<script type="text/javascript" src="script/tierspell.js"></script>
<script type="text/javascript" src="script/questionMark.js"></script>

</head>

<body>
	<!-- Background Video-->
	<%@ include file="../include/video.jsp"%>

	<div class="masthead">
		<!-- menu -->
		<%@ include file="../include/menu.jsp"%>

		<div class="masthead-content text-white">
			<div class="container-fluid px-4 px-lg-0" style="text-align: center;">
				<h1 class="fst-italic lh-1 mb-4">
					<a href="/" style="color: whitesmoke;">Spell usage count by tier</a>
				</h1>
				<span id="questionMark" onmouseover="showTooltip()" onmouseout="hideTooltip()">
					<i class="fa-regular fa-circle-question"></i>
				</span>
				<div id="questionMarkBox" style="display: none; z-index: 10; background-color: rgba(0, 0, 0, 0.7);">
					<div id="explainBox">
						<span>티어별 특정 스펠 사용횟수</span>
					</div>
				</div>

				<table>
					<tbody>
						<tr>
							<td class="spell_td">
								<div>
									<a href="#" title="유체화" id="Ghost" data-spell-id="6">
										<img class="spell_img" src="/assets/img_spell/SummonerHaste.png">
									</a>
								</div>
							</td>
							<td class="spell_td">
								<div>
									<a href="#" title="회복" id="Heal" data-spell-id="7">
										<img class="spell_img" src="/assets/img_spell/SummonerHeal.png">
									</a>
								</div>
							</td>
							<td class="spell_td">
								<div>
									<a href="#" title="방어막" id="Barrier" data-spell-id="21">
										<img class="spell_img" src="/assets/img_spell/SummonerBarrier.png">
									</a>
								</div>
							</td>
							<td class="spell_td">
								<div>
									<a href="#" title="탈진" id="Exhaust" data-spell-id="3">
										<img class="spell_img" src="/assets/img_spell/SummonerExhaust.png">
									</a>
								</div>
							</td>
							<td class="spell_td">
								<div>
									<a href="#" title="순간이동" id="Teleport" data-spell-id="12">
										<img class="spell_img" src="/assets/img_spell/SummonerTeleport.png">
									</a>
								</div>
							</td>
							<td class="spell_td">
								<div>
									<a href="#" title="점멸" id="Flash" data-spell-id="4">
										<img class="spell_img" src="/assets/img_spell/SummonerFlash.png">
									</a>
								</div>
							</td>
							<td class="spell_td">
								<div>
									<a href="#" title="강타" id="Smite" data-spell-id="11">
										<img class="spell_img" src="/assets/img_spell/SummonerSmite.png">
									</a>
								</div>
							</td>
							<td class="spell_td">
								<div>
									<a href="#" title="점화" id="Ignite" data-spell-id="14">
										<img class="spell_img" src="/assets/img_spell/SummonerDot.png">
									</a>
								</div>
							</td>
							<td class="spell_td">
								<div>
									<a href="#" title="정화" id="Cleanse" data-spell-id="1">
										<img class="spell_img" src="/assets/img_spell/SummonerBoost.png">
									</a>
								</div>
							</td>

						</tr>
					</tbody>
				</table>
				<div>
					<canvas id="myChart"></canvas>
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