<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
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
<script type="text/javascript" src="script/questionMark.js"></script>

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
<link href="css/menu.css" rel="stylesheet">

<link href="css/questionMark.css" rel="stylesheet">


<style>
.bg-video {
	position: relative; /* 비디오를 상대적으로 위치시킵니다. */
	z-index: 0; /* 비디오의 쌓임 순서를 푸터 아래로 내립니다. */
}

#Discord {
	width: 100%;
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
	overflow: scroll;
}

.masthead .masthead-content {
	min-width: 1200px;
	max-height: 600px;
}

.container-fluid {
	display: flex;
	flex-direction: column;
	justify-content: center;
	align-items: center;
}

section {
	width: 1079px;
	display: flex;
	justify-content: space-between;
	background: border-box;
}

.mainBox {
	width: 95%;
	min-height: 1000px;
	margin: auto;
	display: flex;
	flex-direction: column;
	align-items: center;
	background-color: #2f2b2bd9;
	border-radius: 10px;
	margin-bottom: 25px;
}

.champInfo {
	width: 95%;
	min-height: 265px;
	display: flex;
	flex-wrap: wrap;
	margin-top: 25px;
	row-gap: 12px;
}

.inner-champImg {
	width: 13%;
	height: 50%;
}

.inner-champImg>img {
	width: 100%;
	height: 100%;
	border-radius: 10px;
}

.inner-champNameAndSkills {
	width: 30%;
	display: flex;
	flex-direction: column;
	justify-content: space-around;
	margin: 0 15px;
}

.champName {
	font-size: 23px;
	font-weight: bold;
}

.champPosition {
	font-size: 15px;
	color: #a5adaa;
}

.inner-champSkills {
	display: flex;
	align-items: center;
}

.inner-skillBox {
	position: relative;
	display: inline-block;
	margin-right: 3px;
}

.inner-skillBox>img {
	width: 42px;
	border-radius: 5px;
	display: block;
}

.inner-skillBox div {
	position: absolute;
	bottom: 0px;
	right: 0;
	background-color: rgb(0 0 0/ 76%);
	color: white;
	font-size: 17px;
	font-weight: bold;
	border-radius: 3px;
	width: 21px;
	height: 21px;
	display: flex;
	align-items: center;
	justify-content: center;
}

.champContent {
	width: 100%;
	height: 50%;
	font-size: 14px;
	padding: 15px;
	color: #ffe4c4c2;
}

.champContent>div {
	margin-top: 8px;
}

.inner-champStats {
	width: 95%;
}

.champRunes {
	width: 95%;
}

.champRunes>table>thead {
	color: #b17070;
}

p {
	margin: 0;
	width: 95%;
	margin-top: 55px;
	font-size: 17px;
	margin-bottom: 5px;
}

table {
	width: 100%;
	text-align: center;
}

table>thead {
	font-size: 13px;
	color: #568587;
}

th, td {
	border-right: 1px solid #cbbebe8c;
	border-left: 1px solid #cbbebe8c;
}

.inner-skillImg {
	position: relative;
	display: inline-block;
	margin-right: 3px;
}

.inner-skillImg>img {
	width: 42px;
	border-radius: 5px;
	display: block;
}

.inner-skillImg div {
	position: absolute;
	bottom: 0px;
	right: 0;
	background-color: rgb(0 0 0/ 76%);
	color: white;
	font-size: 17px;
	font-weight: bold;
	border-radius: 3px;
	width: 21px;
	height: 21px;
	display: flex;
	align-items: center;
	justify-content: center;
}

.skillsBox {
	width: 95%;
	min-height: 300px;
	display: flex;
	flex-direction: column;
	align-items: center;
	margin-bottom: 30px;
	font-size: x-large;
}

.skill-passive {
	width: 100%;
	margin-bottom: 25px;
	margin-top: 10px;
	border-left: 1px solid #cbbebe8c;
	padding-left: 5px;
}

.skillDescription {
	font-size: 14px;
}

.skill-QW {
	width: 100%;
	display: flex;
	justify-content: space-between;
	margin-bottom: 15px;
}

.skill-ER {
	width: 100%;
	display: flex;
	justify-content: space-between;
}

.skillQ, .skillW, .skillE, .skillR {
	width: 48%;
	border-left: 1px solid #cbbebe8c;
	padding-left: 5px;
}

.skillName {
	color: #fff400e8;
}

.inner-mainRunes>span>img {
	width: 36px;
}

.inner-runes>span>img {
	width: 36px;
}

.runeArea {
	display: flex;
	justify-content: space-around;
}

.mainRuneBox, .runeBox {
	display: flex;
	flex-direction: column;
	justify-content: space-between;
	height: 73px;
}

.rmtitle>img, .rntitle>img {
	width: 25px;
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
	<video class="bg-video" playsinline="playsinline" autoplay="autoplay"
		muted="muted" loop="loop">
		<source src="assets/mp4/bg.mp4" type="video/mp4">
	</video>
	<!-- Masthead-->
	<div class="masthead">
		<%@ include file="../include/menu.jsp"%>
		<div class="masthead-content text-white">
			<div class="container-fluid px-4 px-lg-0">
				<div>
					<h1 class="fst-italic lh-1 mb-4">
						<a href="/" style="color: whitesmoke;">Champion</a>
					</h1>
					<span id="questionMark" onmouseover="showTooltip()"
						onmouseout="hideTooltip()"> <i
						class="fa-regular fa-circle-question"></i>
					</span>
					<div id="questionMarkBox" style="display: none; background-color: rgba(0, 0, 0, 0.7);">
						<div id="explainBox">
							<span>각 챔피언 정보</span>
						</div>
					</div>
				</div>

				<section>
					<div class="mainBox">
						<div class="champInfo">
							<div class="inner-champImg">
								<img alt=""
									src="assets/champion/tiles_mini/${champInfo.MCCHAMPIONNAME }.png">
							</div>

							<div class="inner-champNameAndSkills">
								<span class="champName">${champInfo.CNAME }</span> <span
									class="champPosition">${champInfo.MCTEAMPOSITION }</span>
								<div class="inner-champSkills">
									<div class="inner-skillBox">
										<img alt=""
											src="assets/img/championskills/${champInfo.SKILL_P_IMG}">
									</div>
									<div class="inner-skillBox">
										<img alt=""
											src="assets/img/championskills/${champInfo.SKILL_Q_IMG}">
										<div>Q</div>
									</div>
									<div class="inner-skillBox">
										<img alt=""
											src="/assets/img/championskills/${champInfo.SKILL_W_IMG}">
										<div>W</div>
									</div>
									<div class="inner-skillBox">
										<img alt=""
											src="assets/img/championskills/${champInfo.SKILL_E_IMG}">
										<div>E</div>
									</div>
									<div class="inner-skillBox">
										<img alt=""
											src="assets/img/championskills/${champInfo.SKILL_R_IMG}">
										<div>R</div>
									</div>
								</div>
							</div>
							<div class="champContent">
								${champInfo.CCONTENT}
								<div>" ${champInfo.VOICE}"</div>
							</div>
						</div>
						<p>
							스탯 <span>(+레벨업당 증가량)</span>
						</p>
						<div class="inner-champStats">
							<table>
								<thead>
									<tr>
										<th>체력</th>
										<th>마나</th>
										<th>이동 속도</th>
										<th>방어력</th>
										<th>마법 저항력</th>
										<th>사거리</th>
										<th>체력 회복량</th>
										<th>마나 회복량</th>
										<th>치명타 확률</th>
										<th>공격력</th>
										<th>공격 속도</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td id="health"></td>
										<td id="mana">418 / 25</td>
										<td id="speed">330</td>
										<td id="amory">21 / 4.7</td>
										<td id=magicRegistory>30 / 1.3</td>
										<td id="attackrange">550</td>
										<td id="healthRecovery">2.5 / 0.6</td>
										<td id="manaRecovery">8 / 0.8</td>
										<td id="critical">0 / 0</td>
										<td id="attack">53 / 3</td>
										<td id="attackspeed">2.2 / 0.668</td>
									</tr>
								</tbody>
							</table>
						</div>
						<p>에메랄드+ 에서의 '${champInfo.CNAME}' 정보들을 확인하세요!</p>
						<div class="champRunes">
							<table>
								<thead>
									<tr>
										<th>티어</th>
										<th>픽률</th>
										<th>승률</th>
										<th style="width: 410px;">룬</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>${champInfo.TIER}</td>
										<td>${champInfo.PICK_RATE}</td>
										<td>${champInfo.WIN_RATE}</td>
										<td class="runeArea">
											<div class="mainRuneBox">
												<span class="rune-number rmtitle"
													data-rune="${champInfo.RMTITLE}"><img alt="" src=""></span>
												<div class="inner-mainRunes">
													<span class="rune-number" data-rune="${champInfo.RM1}"><img
														alt="" src=""></span> <span class="rune-number"
														data-rune="${champInfo.RM2}"><img alt="" src=""></span>
													<span class="rune-number" data-rune="${champInfo.RM3}"><img
														alt="" src=""></span> <span class="rune-number"
														data-rune="${champInfo.RM4}"><img alt="" src=""></span>
												</div>
											</div>
											<div class="runeBox">
												<span class="rune-number rntitle"
													data-rune="${champInfo.RNTITLE}"><img alt="" src=""></span>
												<div class="inner-runes">
													<span class="rune-number" data-rune="${champInfo.RN1}"><img
														alt="" src=""></span> <span class="rune-number"
														data-rune="${champInfo.RN2}"><img alt="" src=""></span>
												</div>
											</div>

										</td>
									</tr>
								</tbody>
							</table>
						</div>
						<p>SKILLS</p>
						<div class="skillsBox">
							<div class="skill-passive">
								<div class="inner-skillImg">
									<img alt=""
										src="assets/img/championskills/${champInfo.SKILL_P_IMG}">
								</div>
								<div class="skillDescription">
									<c:set var="skillP" value="${fn:split(champInfo.SKILL_P, ',')}" />
									<div class="skillName">${skillP[0]}</div>
									${skillP[1]}
								</div>
							</div>
							<div class="skill-QW">
								<div class="skillQ">
									<div class="inner-skillImg">
										<img alt=""
											src="assets/img/championskills/${champInfo.SKILL_Q_IMG}">
										<div>Q</div>
									</div>
									<c:set var="skillQ" value="${fn:split(champInfo.SKILL_Q, ',')}" />
									<c:set var="length" value="${fn:length(skillQ)}" />
									<div class="skillDescription">
										<div class="skillName">${skillQ[0]}</div>
										<div>재사용 대기 시간(초): ${skillQ[length - 3]}</div>
										<div>소모: ${skillQ[length - 2]}</div>
										<div>범위: ${skillQ[length - 1]}</div>
										<div>
											<c:if test="${length > 4}">
												<c:forEach var="i" begin="1" end="${length - 4}">
                									${skillQ[i]}<c:if test="${i lt length - 4}">,</c:if>
												</c:forEach>
											</c:if>
										</div>
									</div>
								</div>
								<div class="skillW">
									<div class="inner-skillImg">
										<img alt=""
											src="assets/img/championskills/${champInfo.SKILL_W_IMG}">
										<div>W</div>
									</div>
									<c:set var="skillW" value="${fn:split(champInfo.SKILL_W, ',')}" />
									<c:set var="length" value="${fn:length(skillW)}" />
									<div class="skillDescription">
										<div class="skillName">${skillW[0]}</div>
										<div>재사용 대기 시간(초): ${skillW[length - 3]}</div>
										<div>소모: ${skillW[length - 2]}</div>
										<div>범위: ${skillW[length - 1]}</div>
										<div>
											<c:if test="${length > 4}">
												<c:forEach var="i" begin="1" end="${length - 4}">
                									${skillW[i]}<c:if test="${i lt length - 4}">,</c:if>
												</c:forEach>
											</c:if>
										</div>
									</div>
								</div>
							</div>
							<div class="skill-ER">
								<div class="skillE">
									<div class="inner-skillImg">
										<img alt=""
											src="assets/img/championskills/${champInfo.SKILL_E_IMG}">
										<div>E</div>
									</div>
									<c:set var="skillE" value="${fn:split(champInfo.SKILL_E, ',')}" />
									<c:set var="length" value="${fn:length(skillE)}" />
									<div class="skillDescription">
										<div class="skillName">${skillE[0]}</div>
										<div>재사용 대기 시간(초): ${skillE[length - 3]}</div>
										<div>소모: ${skillE[length - 2]}</div>
										<div>범위: ${skillE[length - 1]}</div>
										<div>
											<c:if test="${length > 4}">
												<c:forEach var="i" begin="1" end="${length - 4}">
                									${skillE[i]}<c:if test="${i lt length - 4}">,</c:if>
												</c:forEach>
											</c:if>
										</div>
									</div>
								</div>
								<div class="skillR">
									<div class="inner-skillImg">
										<img alt=""
											src="assets/img/championskills/${champInfo.SKILL_R_IMG}">
										<div>R</div>
									</div>
									<c:set var="skillR" value="${fn:split(champInfo.SKILL_R, ',')}" />
									<c:set var="length" value="${fn:length(skillR)}" />

									<div class="skillDescription">
										<div class="skillName">${skillR[0]}</div>
										<div>재사용 대기 시간(초): ${skillR[length - 3]}</div>
										<div>소모: ${skillR[length - 2]}</div>
										<div>범위: ${skillR[length - 1]}</div>
										<div>
											<c:if test="${length > 4}">
												<c:forEach var="i" begin="1" end="${length - 4}">
                									${skillR[i]}<c:if test="${i lt length - 4}">,</c:if>
												</c:forEach>
											</c:if>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</section>

			</div>

		</div>
	</div>

	<div class="social-icons">
		<div
			class="d-flex flex-row flex-lg-column justify-content-center align-items-center h-100 mt-3 mt-lg-0">
			<a class="btn btn-dark m-3" href="/join"><i
				class="fa-regular fa-address-card"></i></a>
		</div>
	</div>
</body>
<script type="text/javascript">
	const str = $
	{
		champInfo.STATS
	}
	console.log(str)
	$("#health").text(str[0][1] + " (+" + str[1][1] + ")");
	$("#mana").text(str[2][1] + " (+" + str[3][1] + ")");
	$("#speed").text(str[4][1]);
	$("#amory").text(str[5][1] + " (+ " + str[6][1] + ")");
	$("#magicRegistory").text(str[7][1] + " (+ " + str[8][1] + ")");
	$("#attackrange").text(str[9][1]);
	$("#healthRecovery").text(str[10][1] + " (+ " + str[11][1] + ")");
	$("#manaRecovery").text(str[12][1] + " (+ " + str[13][1] + ")");
	$("#critical").text(str[14][1] + " (+ " + str[15][1] + ")");
	$("#attack").text(str[16][1] + " (+ " + str[17][1] + ")");
	$("#attackspeed").text(str[19][1] + " (+" + str[18][1] + "%)");
</script>
<script>
	// 룬 번호를 문자열로 변환하는 함수
	function getRuneString(runeNum, callback) {
		$.ajax({
			type : 'POST',
			url : 'http://kyu233.iptime.org:200/RuneImgPath',
			data : {
				Rune_num : runeNum
			},
			success : function(response) {
				callback(response); // 성공적으로 데이터를 받으면 콜백 함수 호출
				console.log(response)
			},
			error : function(error) {
				console.error('Error:', error);
				callback(null); // 에러가 발생한 경우 null 반환
			}
		});
	}

	// 모든 룬 번호를 문자열로 변환하여 페이지에 표시하는 함수
	function replaceRuneNumbers() {
		$('.rune-number').each(function() {
			var $this = $(this);
			var runeNum = $this.data('rune'); // 현재 요소의 데이터 속성(룬 번호)를 가져옴
			console.log(runeNum)

			getRuneString(runeNum, function(response) {
				if (response) {
					$this.find('img').attr('src', 'assets/img/' + response); // 룬 번호를 문자열로 대체
				}
			});
		});
	}

	// 페이지 로드 시 룬 번호 변환 함수 호출
	$(document).ready(function() {
		replaceRuneNumbers();
	});
</script>
</html>
