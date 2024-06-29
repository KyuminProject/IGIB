<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<title>Coming Soon - Start Bootstrap Theme</title>
<link rel="icon" type="image/x-icon"
	href="${pageContext.request.contextPath}/assets/favicon.ico">
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
<link href="${pageContext.request.contextPath}/css/main.css"
	rel="stylesheet">
<link href="${pageContext.request.contextPath}/css/menu.css"
	rel="stylesheet">
<link href="${pageContext.request.contextPath}/css/movingPage.css"
	rel="stylesheet">
<script type="text/javascript"
	src="${pageContext.request.contextPath}/script/movingPage.js"></script>
<style>
.bg-video {
	position: relative;
	z-index: 0;
}

.menuspan {
	font-size: 20px;
}

a {
	text-decoration: none;
}

.masthead:before {
	content: "";
	position: absolute;
	top: 0;
	bottom: 0;
	right: 0;
	left: 0;
	height: 100%;
	width: 0%;
	background-color: rgba(0, 0, 0, 0.1);
	transition: width 1s ease;
}

.masthead.fixed:before {
	width: 100%;
}

.masthead {
	transition: all 1s ease;
	position: relative;
}

.masthead-content {
	margin-top: 100px;
}

.masthead.fixed {
	position: fixed;
	width: 100%;
	text-align: center;
}

.progress-bar {
	width: 500px;
	height: 24px;
	background: #ddd;
	border-radius: 5px;
	overflow: hidden;
	position: relative;
}

.fill {
	height: 100%;
	background-color: #ff3223;
	border-radius: 5px;
	width: 0;
	animation: fillAnimation 2s ease forwards;
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
	position: absolute;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
	font-size: 18px;
	font-weight: bold;
	color: #333;
}

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

.tierImg:hover, .tierImg.clicked {
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
	width: 100px;
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

#selectBox {
	display: flex;
	align-items: center;
	justify-content: center;
}

#laneBox, #searchBox {
	display: flex;
}

#laneBox {
	margin-right: 20px;
}

.LaneImg {
	margin: 0 5px;
	width: 40px;
}

.LaneImg:hover {
	background-color: #778080bd;
	cursor: pointer;
}

#searchChampName {
	margin-right: 10px;
	width: 300px;
}

.championImg {
	width: 65px;
}

.championImg:hover, .championImg.clicked {
	border: 2px solid #ebbb39;
	cursor: pointer;
}

#championList {
	width: 640px;
	justify-content: space-between;
	display: flex;
	margin-top: 10px;
}

#championImgBox {
	overflow-y: auto;
	height: 350px;
}

#championImgBox::-webkit-scrollbar {
	width: 0;
	display: none;
}

.championImg.dimmed {
	opacity: 0.2;
	filter: blur(2px);
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
				<h1 class="fst-italic lh-1">LANE WINNING RATE</h1>
				<span id="questionMark" onmouseover="showTooltip()"
					onmouseout="hideTooltip()"> <i
					class="fa-regular fa-circle-question"></i>
				</span>
				<div id="questionMarkBox"
					style="display: none; z-index: 10; background-color: rgba(0, 0, 0, 0.7); left: 650px; top: -100px;">
					<div id="explainBox">
						<span> 두 라인에 어떤 챔피언을 골랐을때 승률이 높은지 알아볼 수 있는 페이지 </span>
					</div>
				</div>
				<form action="${pageContext.request.contextPath}/laneWinningRate"
					method="post" onsubmit="return formCheck(this)">
					<div id="selectBox">
						<div id="laneBox">
							<input type="hidden" name="position1" id="position1"
								value="${position1}"> <input type="hidden"
								name="position2" id="position2" value="${position2}"> <input
								type="hidden" name="champion1" id="champion1"
								value="${champion1}"> <input type="hidden"
								name="champion2" id="champion2" value="${champion2}"> <img
								class="LaneImg ${position1 == 'TOP' || position2 == 'TOP' ? 'clicked' : ''}"
								id="TOP" alt="TOP"
								src="${pageContext.request.contextPath}/assets/position/Position_challenger-Top.png"
								onclick="selectLaneImg('TOP')"> <img
								class="LaneImg ${position1 == 'JUNGLE' || position2 == 'JUNGLE' ? 'clicked' : ''}"
								id="JUNGLE" alt="JUNGLE"
								src="${pageContext.request.contextPath}/assets/position/Position_challenger-Jungle.png"
								onclick="selectLaneImg('JUNGLE')"> <img
								class="LaneImg ${position1 == 'MIDDLE' || position2 == 'MIDDLE' ? 'clicked' : ''}"
								id="MIDDLE" alt="MIDDLE"
								src="${pageContext.request.contextPath}/assets/position/Position_challenger-Mid.png"
								onclick="selectLaneImg('MIDDLE')"> <img
								class="LaneImg ${position1 == 'BOTTOM' || position2 == 'BOTTOM' ? 'clicked' : ''}"
								id="BOTTOM" alt="BOTTOM"
								src="${pageContext.request.contextPath}/assets/position/Position_challenger-Bot.png"
								onclick="selectLaneImg('BOTTOM')"> <img
								class="LaneImg ${position1 == 'UTILITY' || position2 == 'UTILITY' ? 'clicked' : ''}"
								id="UTILITY" alt="UTILITY"
								src="${pageContext.request.contextPath}/assets/position/Position_challenger-Support.png"
								onclick="selectLaneImg('UTILITY')">
						</div>
						<div id="searchBox">
							<div id="searchChampName">
								<input class="form-control" id="champname" type="text"
									placeholder="Enter ChampionName"
									aria-label="Enter ChampionName" />
							</div>
							<div id="searchBtn">
								<button class="btn btn-primary" id="submitButton" type="button"
									onclick="searchChampion()">Find</button>
							</div>
						</div>
					</div>
					<div id="championImgBox">
						<c:forEach items="${championName}" var="champion" varStatus="loop">
							<c:if test="${loop.index % 8 == 0}">
								<div id="championList">
							</c:if>
							<img
								class="championImg ${champion1 == champion.cid || champion2 == champion.cid ? 'clicked' : ''}"
								id="${champion.cid}" alt="${champion.cname}"
								src="${pageContext.request.contextPath}/assets/champion/tiles_mini/${champion.cid}.png"
								value="${champion.cname}" data-cid="${champion.cid}"
								onclick="selectChampion('${champion.cid}', this)">
							<c:if test="${loop.index % 8 == 7 or loop.last}">
					</div>
					</c:if>
					</c:forEach>
			</div>

			<div id="resultBox">
				<!-- 퍼센트바 html -->
				<div id="percentBar" class="progress-bar"
					data-percent="${LaneWinningRate}"
					style="display: none; z-index: 10;">
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
		<div
			class="d-flex flex-row flex-lg-column justify-content-center align-items-center h-100 mt-3 mt-lg-0">
			<a class="btn btn-dark m-3" href="/"> <i
				class="fa-solid fa-house"></i>
			</a>
		</div>
	</div>

	<script type="text/javascript">
let selectedLanes = [];
let selectedChampions = [];

function selectLaneImg(lane) {
    const laneElement = document.getElementById(lane);
    if (!laneElement) {
        console.warn(`Element with ID ${lane} not found`);
        return;
    }

    if (selectedLanes.includes(lane)) {
        selectedLanes = selectedLanes.filter(item => item !== lane);
        laneElement.classList.remove("clicked");
    } else {
        if (selectedLanes.length < 2) {
            selectedLanes.push(lane);
            laneElement.classList.add("clicked");
        } else {
            alert("이미 2개의 라인을 선택했습니다.");
        }
    }
    updateHiddenFields();
}

function selectChampion(champion, elem) {
    if (selectedChampions.includes(champion)) {
        selectedChampions = selectedChampions.filter(item => item !== champion);
        elem.classList.remove("clicked");
    } else {
        if (selectedChampions.length < 2) {
            selectedChampions.push(champion);
            elem.classList.add("clicked");
        } else {
            alert("이미 2개의 챔피언을 선택했습니다.");
        }
    }
    updateHiddenFields();
}

function updateHiddenFields() {
    document.getElementById('position1').value = selectedLanes[0] || "";
    document.getElementById('position2').value = selectedLanes[1] || "";
    document.getElementById('champion1').value = selectedChampions[0] || "";
    document.getElementById('champion2').value = selectedChampions[1] || "";
}

function formCheck(form) {
    if (selectedLanes.length !== 2) {
        alert("2개의 라인을 선택하세요.");
        return false;
    }
    if (selectedChampions.length !== 2) {
        alert("2개의 챔피언을 선택하세요.");
        return false;
    }
    return true;
}

/* 퍼센트 바 */
document.addEventListener("DOMContentLoaded", function() {
    var progressBars = document.querySelectorAll(".progress-bar");

    progressBars.forEach(function(progressBar) {
        var fill = progressBar.querySelector(".fill");
        var percentLabel = progressBar.querySelector(".percent-label");
        var percent = parseFloat(progressBar.getAttribute("data-percent"));
        
        let currentPercent = 0;
        let interval = setInterval(function() {
            if (currentPercent >= percent) {
                clearInterval(interval);
                currentPercent = percent;  // Ensure it ends exactly at the target percent
            } else {
                currentPercent += 0.1; // Increment by 0.1 for finer steps
            }
            fill.style.width = currentPercent.toFixed(1) + "%";
            percentLabel.textContent = "승률 : " + currentPercent.toFixed(1) + "%";
        }, 1);
    });

    // 초기 상태 설정
    let position1 = "${position1}";
    let position2 = "${position2}";
    let champion1 = "${champion1}";
    let champion2 = "${champion2}";

    if (position1) {
        document.getElementById(position1).classList.add("clicked");
        selectedLanes.push(position1);
    }
    if (position2) {
        document.getElementById(position2).classList.add("clicked");
        selectedLanes.push(position2);
    }
    if (champion1) {
        document.getElementById(champion1).classList.add("clicked");
        selectedChampions.push(champion1);
    }
    if (champion2) {
        document.getElementById(champion2).classList.add("clicked");
        selectedChampions.push(champion2);
    }
});

// 툴팁 보이기
function showTooltip() {
    document.getElementById('questionMarkBox').style.display = 'block';
}

// 툴팁 숨기기
function hideTooltip() {
    document.getElementById('questionMarkBox').style.display = 'none';
}

// 초성 분해 함수
function decomposeHangul(str) {
    const initialConsonants = ["ㄱ", "ㄲ", "ㄴ", "ㄷ", "ㄸ", "ㄹ", "ㅁ", "ㅂ", "ㅃ", "ㅅ", "ㅆ", "ㅇ", "ㅈ", "ㅉ", "ㅊ", "ㅋ", "ㅌ", "ㅍ", "ㅎ"];
    const decomposed = [];
    for (let i = 0; i < str.length; i++) {
        const code = str.charCodeAt(i) - 44032;
        if (code > -1 && code < 11172) {
            const initialConsonantIndex = Math.floor(code / 588);
            decomposed.push(initialConsonants[initialConsonantIndex]);
        } else {
            decomposed.push(str[i]);
        }
    }
    return decomposed.join('');
}

function includesInitialConsonants(full, search) {
    return decomposeHangul(full).includes(decomposeHangul(search));
}

function isChosung(str) {
    return str.split('').every(char => (char >= 'ㄱ' && char <= 'ㅎ'));
}

function searchChampion() {
    var input = document.getElementById("champname").value.toLowerCase();
    var championImages = document.querySelectorAll(".championImg");
    championImages.forEach(function(championImg) {
        var championName = championImg.getAttribute("value").toLowerCase();
        if (isChosung(input)) {
            if (includesInitialConsonants(championName, input)) {
                championImg.classList.remove("dimmed");
            } else {
                championImg.classList.add("dimmed");
            }
        } else {
            if (championName.includes(input)) {
                championImg.classList.remove("dimmed");
            } else {
                championImg.classList.add("dimmed");
            }
        }
    });
}
/* 결과 출력 */
document.addEventListener("DOMContentLoaded", function() {
	var winningRate = "${LaneWinningRate}";
	
	console.log("winningRate : " + winningRate)
	
	
	if(winningRate != "failure" && winningRate != ""){
		document.getElementById('percentBar').style.removeProperty('display');
	}
	else if(winningRate == "failure" && winningRate != ""){
		alert("전적 데이터를 불러올 수 없습니다. \n 관리자에게 문의해 주세요!");
	}
	
});
</script>

	</div>
</body>
</html>