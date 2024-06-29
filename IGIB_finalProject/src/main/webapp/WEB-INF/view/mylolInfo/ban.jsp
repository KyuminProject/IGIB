<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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

<!-- Google fonts-->
<link rel="preconnect" href="https://fonts.gstatic.com">
<link
	href="https://fonts.googleapis.com/css2?family=Tinos:ital,wght@0,400;0,700;1,400;1,700&amp;display=swap"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css2?family=DM+Sans:ital,wght@0,400;0,500;0,700;1,400;1,500;1,700&amp;display=swap"
	rel="stylesheet">
<!-- CSS -->
<link href="css/main.css" rel="stylesheet">
<link href="css/menu.css" rel="stylesheet">
<link href="css/movingPage.css" rel="stylesheet">
<link href="css/dragonWinning.css" rel="stylesheet">
<link href="css/percentBar.css" rel="stylesheet">
<link href="css/questionMark.css" rel="stylesheet">
<script type="text/javascript" src="script/movingPage.js"></script>
<script type="text/javascript" src="script/questionMark.js"></script>
<script type="text/javascript" src="script/dragonWinning.js"></script>

<!-- javaScript -->
<script type="text/javascript" src="script/movingPage.js"></script>
<script type="text/javascript" src="script/questionMark.js"></script>

<style>
.fill-red {
	background-color: #ff3223;
}

.fill-blue {
	background-color: royalblue;
}

/* movingPage 수정 */
.masthead-content {
	max-width: 10000px !important;
}

.masthead.fixed {
	position: fixed; /* fixed로 변경될 때 위치 고정 */
	width: 100%; /* 너비를 100%로 설정하여 가득 찬 화면 효과 생성 */
	max-width: 10000px;
}
/* movingPage 수정 끝 */

/* 여기부터 */
.container {
	width: 60%;
	height: 150px;
	padding: 5px;
	gap: 5px;
	display: flex;
	border: 1px solid #353232ab;
	background-color: #353232ab;
	margin-top: 20px;
	border-radius: 5px;
}

.rank-type {
	width: 15%;
}

.rankType {
	display: block;
	font-size: large;
	padding: 5px;
	font-weight: bold;
}

.time {
	display: block;
	font-size: 18px;
	padding: 0 5px;
}

.gameOutcome {
	display: block;
	font-size: medium;
	padding: 5px;
	margin-top: 5px;
}

.champ {
	width: 12%;
}

.champ>img {
	width: 100%;
	height: 100%;
	border-radius: 5px;
}

.mainInfo {
	width: 30%;
	display: flex;
	flex-direction: column;
	justify-content: space-between;
}

.spellAndKda {
	width: 100%;
	height: 60%;
	display: flex;
}

.spell {
	width: 26%;
	height: 100%;
	display: grid;
	grid-template-columns: 1fr 1fr;
	grid-template-rows: 1fr 1fr;
}

.inner {
	display: flex;
	justify-content: center;
	align-items: center;
	padding: 2px;
}

.inner>img {
	vertical-align: middle;
	width: 100%;
	height: 100%;
	border-radius: 10px;
}

.kda {
	width: 72%;
	height: 100%;
	display: flex;
	align-items: center;
	flex-direction: column;
	justify-content: center;
}

.inner-kda {
	font-weight: bold;
	font-size: 17px;
	color: black;
}

.avg-kda {
	font-size: 12px;
	font-weight: lighter;
}

.item {
	width: 100%;
	height: 31%;
	display: flex;
}

.inner-item {
	width: 100%;
	height: 100%;
	display: flex;
	justify-content: center;
	align-items: center;
	padding: 2.5px;
}

.inner-item>img, .ward>img {
	vertical-align: middle;
	width: 100%;
	height: 100%;
	border-radius: 10px;
}

.inner-wardImg {
	width: 100%;
	height: 100%;
}

.inner-wardImg>img {
	width: 100%;
	height: 100%;
	border-radius: 15px;
}

.vertical-line {
	border-left: 1px solid #e8e8e82e;
	height: 100%;
}

.p-kill {
	padding: 5px;
	width: 10%;
	display: flex;
	flex-direction: column;
	align-items: flex-start;
	justify-content: flex-start;
	margin-top: 6px;
}

.inner-pkill {
	font-size: 14px;
	font-weight: bold;
	margin-bottom: 5px;
}

.inner-ward {
	font-size: 12px;
	margin-bottom: 2px;
}

.inner-cs {
	font-size: 12px;
}

.players {
	width: 27%;
	display: flex;
	justify-content: space-around;
	margin-top: 9px;
}

.redPlayers, .bluePlayers {
	width: 50%;
	max-height: 100%;
	display: inline-block;
}

.bluePlayers {
	margin-right: 20px;
	margin-left: 4px;
}

.player {
	width: 100%;
	white-space: nowrap;
	overflow: hidden;
	text-overflow: ellipsis;
	color: black;
}

.btn {
	width: 3%;
	display: flex;
	align-items: flex-end;
	padding: 0;
	justify-content: flex-end;
	margin-left: 10px;
}

.downBtn {
	border: none;
	background-color: unset;
	font-size: 21px;
	color: #ffffffb8;
}

.Table {
	display: flex;
	flex-direction: column;
	align-items: center;
	border-radius: 5px;
	border: 1px solid #353232ab;
	background-color: #353232ab;
	width: 60%;
	max-height: 910px;
	margin-top: 5px;
	padding: 5px;
	margin-left: auto;
	margin-right: auto;
}

.blueTable>table>tbody>tr {
	border: 1px solid darkgrey;
}

.redTable>table>tbody>tr {
	border: 1px solid darkgrey;
}

.blueTable, .redTable {
	width: 100%;
	height: 400px;
}

.blueTable>table, .redTable>table {
	width: 100%;
	height: 100%;
}

.blueTable>table>thead, .redTable>table>thead {
	height: 10%;
}

thead {
	text-align: center;
	font-size: 15px;
}

.table-td {
	display: flex;
	width: 100%;
	margin-left: 10px;
}

.table-champ {
	width: 20%;
}

.table-champ>img {
	border-radius: 35px;
	width: 100%;
	height: 100%;
}

.table-spell {
	width: 20%;
	height: 100%;
	display: grid;
	grid-template-columns: 1fr 1fr;
	grid-template-rows: 1fr 1fr;
}

.table-inner {
	display: flex;
	justify-content: center;
	align-items: center;
}

.table-inner>img {
	vertical-align: middle;
	width: 100%;
	height: 100%;
	border-radius: 40px;
}

.table-lolName {
	width: 60%;
	font-size: smaller;
	white-space: nowrap;
	overflow: hidden;
	text-overflow: ellipsis;
	display: flex;
	justify-content: center;
	align-items: center;
}

.table-ban {
	width: 100%;
	font-size: smaller;
	white-space: nowrap;
	overflow: hidden;
	text-overflow: ellipsis;
	display: flex;
	justify-content: center;
	align-items: center;
}

.table-kda {
	width: 100%;
	height: 100%;
	text-align: center;
}

.table-inner-kda {
	font-size: 12px;
	margin-bottom: -3px;
}

.table-avg-kda {
	font-size: 9px;
	font-weight: lighter;
}

.table-damage {
	display: flex;
	width: 100%;
	height: 100%;
	justify-content: center;
	align-items: center;
}

.table-inner-damage {
	width: 48%;
	height: 70%;
	display: flex;
	flex-direction: column;
	align-items: center;
	justify-content: center;
}

.table-inner-damage>span {
	font-size: 12px;
}

.table-ward {
	text-align: center;
	font-size: 12px;
}

.table-cs {
	font-size: 12px;
	display: flex;
	flex-direction: column;
	align-items: center;
}

.table-item {
	width: 97%;
	height: 53%;
	display: flex;
}

.table-inner-item {
	width: 100%;
	height: 100%;
	display: flex;
	justify-content: center;
	align-items: center;
	padding: 2px;
}

.table-inner-item>img {
	vertical-align: middle;
	width: 100%;
	height: 100%;
	border-radius: 5px;
}

.table-inner-wardImg {
	width: 100%;
	height: 100%;
}

.table-inner-wardImg>img {
	width: 100%;
	height: 100%;
	border-radius: 15px;
}

/* 퍼센트바 스타일 시작 */
.progress-bar {
	width: 90%;
	height: 10%;
	background: #ddd;
	border-radius: 2px;
	overflow: hidden;
	position: relative;
	margin: 0 auto;
}

.fill {
	height: 100%;
	border-radius: 2px; /* 퍼센트 바의 모서리를 둥글게 */
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
#title {
	display: flex;
	width: 60%;
	margin-left: auto;
	margin-right: auto;
}

.win-background {
	background-color: lightsteelblue;
}

.lose-background {
	background-color: indianred;
}

tbody .lose-background {
	background-color: lightcoral;
}

tbody .win-background {
	background-color: slateblue;
}

.blueTable>table>tbody>tr.highlight-parent.lose-background {
	border: 1px solid darkgrey;
	background-color: indianred;
}

.blueTable>table>tbody>tr.highlight-parent.win-background {
	border: 1px solid darkgrey;
	background-color: indigo;
}

.redTable>table>tbody>tr.highlight-parent.lose-background {
	border: 1px solid darkgrey;
	background-color: indianred;
}

.redTable>table>tbody>tr.highlight-parent.win-background {
	border: 1px solid darkgrey;
	background-color: indigo;
}

.container span, a {
	color: black;
}

.container span.win-color {
	color: royalblue; /* 승리일 때 파란색 */
	font-weight: bold;
	font-size: 16px;
}

.container span.lose-color {
	color: darksalmon; /* 패배일 때 빨간색 */
	font-weight: bold;
	font-size: 16px;
}

a.highlight-player {
	font-weight: bold;
	color: initial;
}

.table-lolName>span {
	color: white;
}
/* 여기까지 */
</style>

<!-- 로딩중 CSS -->
<style type="text/css">
.wrap-loading { /*화면 전체를 어둡게 합니다.*/
	position: fixed;
	left: 0;
	right: 0;
	top: 0;
	bottom: 0;
	background: rgba(0, 0, 0, 0.2); /*not in ie */
	filter: progid:DXImageTransform.Microsoft.Gradient(startColorstr='#20000000',
		endColorstr='#20000000'); /* ie */
}

.wrap-loading div { /*로딩 이미지*/
	position: fixed;
	top: 50%;
	left: 50%;
	margin-left: -21px;
	margin-top: -21px;
}

.display-none { /*감추기*/
	display: none;
}
</style>

<style type="text/css">
#contactForm, .form-select, .form-control, #submitButton {
	width: 100%;
}

#contactForm {
	justify-content: space-between;
}

#selectServer {
	width: 20%;
}

#searchBtn {
	width: 15%;
}

#searchNickname {
	width: 63%;
}

.form-container {
	width: 60%;
	margin-left: auto;
	margin-right: auto;
	margin-top: 12px;
}

#searchBtn {
	margin-top: 5px;
	align-content: end;
}

#searchBtn .btn {
	padding: 0.375rem 0.75rem;
	justify-content: space-evenly;
}
</style>

</head>

<body>
	<c:choose>
		<c:when test="${sessionScope.loginId != null}">
			<!-- Background Video-->
			<%@ include file="../include/video.jsp"%>

			<!-- Masthead-->
			<div class="masthead">
				<!-- menu -->
				<%@ include file="../include/menu.jsp"%>
				<div class="masthead-content text-white"
					style="margin-bottom: -60px; margin-top: auto;">
					<div class="container-fluid px-4 px-lg-0" id="Main-Container"
						style="overflow: auto; height: 700px">
						<div id="title" style="width: 100%; text-align: center; justify-content: center;">
            <h1 class="fst-italic lh-1 mb-4;" style="color: whitesmoke;">Van Recommendation
            </h1>
            <span id="questionMark" onmouseover="showTooltip()" onmouseout="hideTooltip()" style="    position: relative;">
               <i class="fa-regular fa-circle-question"></i>
            </span>
            <div id="questionMarkBox" style="display: none;z-index: 10; background-color: rgba(0, 0, 0, 0.7); right: 250px;">
               <div id="explainBox">
                  <span>플레이한 게임의 악질 유저 추천</span>
               </div>
            </div>
           </div>

						<!-- 검색 결과가 여기 표시됩니다 -->

						<!-- 로딩 아이콘 -->
						<div class="wrap-loading display-none">
							<div>
								<img src="/assets/img/loading.gif" />
							</div>
						</div>
						<!-- 로딩 아이콘 끝-->
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
            let clickState = false;
            function printTable() {
                const tableDiv = event.target.closest('.container').nextElementSibling;
                if (tableDiv.style.display === "none") {
                    tableDiv.style.display = ""; // 보이도록 설정
                } else {
                    tableDiv.style.display = "none"; // 숨기도록 설정
                }
            }
        </script>

			<script type="text/javascript">
            /* 퍼센트 바 */
            document.addEventListener("DOMContentLoaded", function() {
                var progressBars = document.querySelectorAll(".progress-bar");

                progressBars.forEach(function(progressBar) {
                    var fill = progressBar.querySelector(".fill");
                    var percentLabel = progressBar.querySelector(".percent-label");
                    var percent = progressBar.getAttribute("data-percent");

                    fill.style.width = percent + "%"; // 바의 너비 설정
                });
            });
        </script>

			<!-- api 호출 -->
			<script>
    $(document).ready(function() {
        const username = "<%=(String) session.getAttribute("loginLolName")%>";
        const tag = "<%=(String) session.getAttribute("loginLolTag")%>";
        
        console.log(username);
        console.log(tag);
        
        $.ajax({
            type: "GET",
            url: "http://kyu233.iptime.org:200/hello?username=" + username + "&tag=" + tag, 
            dataType: "json",
            async : "false",
            success: function(response) {
                console.log(response);
                const container = $("#Main-Container");

                for (const game of response) {
                    console.log(game.player_champion);

                    let red_win = '';
                    let blue_win = '';
                    if ((game.teamId == 200 && game.win == true) || (game.teamId == 100 && game.win == false)) {
                        red_win = '승리';
                        blue_win = '패배';
                    } else {
                        red_win = '패배';
                        blue_win = '승리';
                    }

                    let containerClass = game.win ? 'win-background' : 'lose-background';

                    // Calculate KDA and minion_per_min sums
                    let blueKdaSum = 0;
                    let redKdaSum = 0;
                    let blueMinionSum = 0;
                    let redMinionSum = 0;

                    for (let i = 0; i < 5; i++) {
                        blueKdaSum += parseFloat(game.other_team_info[i].kda);
                        blueMinionSum += parseFloat(game.other_team_info[i].minion_per_min);
                    }
                    for (let i = 5; i < 10; i++) {
                        redKdaSum += parseFloat(game.other_team_info[i].kda);
                        redMinionSum += parseFloat(game.other_team_info[i].minion_per_min);
                    }

                    // 문자열 연결로 HTML 생성
                    let gameHtml = '<div class="container ' + containerClass + '">'; //container div-open
                    
                    gameHtml += '<div class="rank-type">'
                    gameHtml += '<span class="rankType">솔로랭크</span> <span class="gameOutcome ' + (game.win ? 'win-color' : 'lose-color') + '">'+(game.win ? '승리' : '패배')+'</span>';
                    gameHtml += '<span class="time">'+game.match_time+'</span>'
                    gameHtml +='</div>'
                    
                    gameHtml += '<div class="champ">'
                    gameHtml += '<img alt="" src="/assets/img/champion/'+game.player_champion_pic+'">'
                    gameHtml += '</div>'
                    
                    gameHtml += '<div class="mainInfo">' // mainInfo div-open
                    gameHtml += '<div class="spellAndKda">' // spellAndKda div-open
                    gameHtml += '<div class="spell">' // spell div-open
                                                
                    gameHtml += '<div class="inner" id = "main_perks_1">'
                        gameHtml += '<img alt="" src="/assets/img/'+game.player_main_rune+'">'
                        gameHtml += '</div>'
                        
                        gameHtml += '<div class="inner" id = "sub_perks_title">'
                        gameHtml += '<img alt="" src="/assets/img/'+game.player_sub_rune_title+'">'
                        gameHtml += '</div>'
                        
                        gameHtml += '<div class="inner" id = "summoner_spell_1">'
                        gameHtml += '<img alt="" src="/assets/img/spell/'+game.player_summor1spell+'.png">'
                        gameHtml += '</div>'
                        
                        gameHtml += '<div class="inner" id = "summoner_spell_2">'
                        gameHtml += '<img alt="" src="/assets/img/spell/'+game.player_summor2spell+'.png">'
                        gameHtml += '</div>'
                        
                        gameHtml += '</div>'// spell div-close
                        
                        gameHtml += '<div class="kda">' // kda div-open
                        
                        gameHtml += '<div class="inner-kda">'
                        gameHtml += '<span class="kill">'+game.kills+'</span> / <span>'+game.deaths+'</span> / <span>'+game.assists+'</span>'
                        gameHtml += '</div>'
                        
                        gameHtml += '<div class="inner-kda">'
                        gameHtml += '<span class="avg-kda">'+game.player_KDA+' KDA</span>'
                        gameHtml += '</div>'
                        
                        gameHtml += '</div>' // kda div-close
                        gameHtml += '</div>' // spellAndKda div-close
                        
                        gameHtml += '<div class="item">' // item div-open
                        
                        for (const itemKey in game.player_item_lst) {
                            const itemValue = game.player_item_lst[itemKey];
                            gameHtml += '<div class="inner-item">'
                            gameHtml += '<img alt="" src="/assets/img/item/'+itemValue+'.png">'
                            gameHtml += '</div>'
                        }
                        gameHtml += '</div>' // item div-close
                        
                        gameHtml += '</div>' // mainInfo div-close
                        
                        gameHtml += '<div class="vertical-line"></div>'
                        
                        gameHtml += '<div class="p-kill">'
                        gameHtml += '<span class="inner-pkill">킬관여 '+game.player_kill_help*100+'%</span>'
                        gameHtml += '<span class="inner-ward">제어와드 3</span>' 
                        gameHtml += '<span class="inner-cs">CS '+game.minion_kill+' ('+game.minion_per_min+')</span>'
                        gameHtml += '</div>'
                        
                        gameHtml += '<div class="vertical-line"></div>'
                        
                        gameHtml += '<div class="players">' // players div-open
                        
                        gameHtml += '<div class="bluePlayers">'
                        for (let i = 0; i < 5; i++) {
                            gameHtml += '<div class="player">'
                            
                            if (game.other_team_info[i].riotIdGameName === decodeURIComponent(username)) {
                                gameHtml += '<a class="highlight-player" href="http://localhost:8081/search?username='+game.other_team_info[i].riotIdGameName+'&tag='+game.other_team_info[i].riotIdTagline+'">'+game.other_team_info[i].riotIdGameName+'</a>'
                            } else {
                                gameHtml += '<a href="http://localhost:8081/search?username='+game.other_team_info[i].riotIdGameName+'&tag='+game.other_team_info[i].riotIdTagline+'">'+game.other_team_info[i].riotIdGameName+'</a>'                                
                            }
                            gameHtml += '</div>'
                        }
                        
                        gameHtml += '</div>'
                        
                        gameHtml += '<div class="redPlayers">'
                        for (let i = 5; i < 10; i++) {
                            gameHtml += '<div class="player">'
                            if (game.other_team_info[i].riotIdGameName === decodeURIComponent(username)) {
                                gameHtml += '<a class="highlight-player" href="http://localhost:8081/search?username='+game.other_team_info[i].riotIdGameName+'&tag='+game.other_team_info[i].riotIdTagline+'">'+game.other_team_info[i].riotIdGameName+'</a>'
                            } else {
                                gameHtml += '<a href="http://localhost:8081/search?username='+game.other_team_info[i].riotIdGameName+'&tag='+game.other_team_info[i].riotIdTagline+'">'+game.other_team_info[i].riotIdGameName+'</a>'                                
                            }
                            gameHtml += '</div>'
                        }
                        gameHtml += '</div>'
                        gameHtml += '</div>'// players div-open                        
                        
                        gameHtml += '<div class="btn">'
                        gameHtml += '<button class="downBtn" onclick="printTable()">'
                        gameHtml += '<svg class="svg-inline--fa fa-angles-down" aria-hidden="true" focusable="false" data-prefix="fas" data-icon="angles-down" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 384 512" data-fa-i2svg=""><path fill="currentColor" d="M214.6 470.6c-12.5 12.5-32.8 12.5-45.3 0l-160-160c-12.5-12.5-12.5-32.8 0-45.3s32.8-12.5 45.3 0L192 402.7 329.4 265.4c12.5-12.5 32.8-12.5 45.3 0s12.5 32.8 0 45.3l-160 160zm160-352l-160 160c-12.5 12.5-32.8 12.5-45.3 0l-160-160c-12.5-12.5-12.5-32.8 0-45.3s32.8-12.5 45.3 0L192 210.7 329.4 73.4c12.5-12.5 32.8-12.5 45.3 0s12.5 32.8 0 45.3z"></path></svg>'
                        gameHtml += '</button>'
                        gameHtml += '</div>'

                        gameHtml += '</div>'; //container div-close
                        
                        let blueTableHtml = '<div class="blueTable">' //blueTable div-open
                        blueTableHtml += '<table>' // table open
                        blueTableHtml +='<thead>'
                        blueTableHtml += '<tr>'
                        blueTableHtml += '<th style="width: 24%; text-align: left;">블루팀</th>'
                        blueTableHtml += '<th style="width: 13%;">KDA</th>'
                        blueTableHtml += '<th style="width: 20%;">피해량</th>'
                        blueTableHtml += '<th style="width: 8%;">CS</th>'
                        blueTableHtml += '<th style="width: 28%">밴 추천</th>'
                        blueTableHtml += '</tr>'
                        blueTableHtml += '</thead>'
                        
                        blueTableHtml += '<tbody>'
                        for (let i = 0; i < 5; i++) {
                            let player = game.other_team_info[i];
                            blueTableHtml += '<tr class="' + (blue_win === '승리' ? 'win-background' : 'lose-background') + '">';
                            blueTableHtml += '<td>';
                            blueTableHtml += '<div class="table-td">';
                            blueTableHtml += '<div class="table-champ">';
                            blueTableHtml += '<img alt="" src="/assets/img/champion/'+player.champion_pic+'">'; // 챔피언 이미지
                            blueTableHtml += '</div>';
                            
                            blueTableHtml += '<div class="table-spell">';
                            
                            blueTableHtml += '<div class="table-inner">';
                            blueTableHtml += '<img alt="" src="/assets/img/'+player.main_rune_id+'">'; // 룬 1 이미지
                            blueTableHtml += '</div>';
                            blueTableHtml += '<div class="table-inner">';
                            blueTableHtml += '<img alt="" src="/assets/img/'+player.sub_rune_type+'">'; // 룬 2 이미지
                            blueTableHtml += '</div>';
                            blueTableHtml += '<div class="table-inner">';
                            blueTableHtml += '<img alt="" src="/assets/img/spell/'+player.spell1_id+'.png">'; // 스펠 1 이미지
                            blueTableHtml += '</div>';
                            blueTableHtml += '<div class="table-inner">';
                            blueTableHtml += '<img alt="" src="/assets/img/spell/'+player.spell2_id+'.png">'; // 스펠 2 이미지
                            blueTableHtml += '</div>';
                            blueTableHtml += '</div>';
                            
                            blueTableHtml += '<div class="table-lolName">';
                            if (player.riotIdGameName === decodeURIComponent(username)) {
                                blueTableHtml += '<span class="highlight-player">'+player.riotIdGameName+'</span>';
                            } else {
                                blueTableHtml += '<span>'+player.riotIdGameName+'</span>';
                            }                        
                            blueTableHtml += '</div>';
                            blueTableHtml += '</div>';
                            blueTableHtml += '</td>';
                            
                            blueTableHtml += '<td>';
                            blueTableHtml += '<div class="table-td">';
                            blueTableHtml += '<div class="table-kda">';
                            blueTableHtml += '<div class="table-inner-kda">';
                            blueTableHtml += '<span class="table-kill">'+player.kill+'</span> / <span>'+player.death+'</span> / <span>'+player.assist+'</span> <span>('+Math.round(player.kill_rate*100)+'%)</span>';
                            blueTableHtml += '</div>';
                            blueTableHtml += '<div class="table-inner-kda">';
                            blueTableHtml += '<span class="table-avg-kda">'+player.kda+' KDA</span>';
                            blueTableHtml += '</div>';
                            blueTableHtml += '</div>';
                            blueTableHtml += '</div>';
                            blueTableHtml += '</td>';
                            
                            blueTableHtml += '<td>';
                            blueTableHtml += '<div class="table-damage">';
                            blueTableHtml += '<div class="table-inner-damage">';
                            blueTableHtml += '<span>'+player.Damage_to_champion+'</span>';
                            blueTableHtml += '<div class="progress-bar" data-percent="50">';
                            blueTableHtml += '<div class="fill fill-red" style="width: '+player.Damage_to_champion_percent*100+'%;"></div>';
                            blueTableHtml += '<span class="percent-label"></span>';
                            blueTableHtml += '</div>';
                            blueTableHtml += '</div>';
                            blueTableHtml += '<div class="table-inner-damage">';
                            blueTableHtml += '<span>'+player.Damagetaken+'</span>';
                            blueTableHtml += '<div class="progress-bar" data-percent="50">';
                            blueTableHtml += '<div class="fill fill-blue" style="width: '+player.Damagetaken_percent*100+'%;"></div>';
                            blueTableHtml += '<span class="percent-label"></span>';
                            blueTableHtml += '</div>';
                            blueTableHtml += '</div>';
                            blueTableHtml += '</div>';
                            blueTableHtml += '</td>';
                            
                            blueTableHtml += '<td>';
                            blueTableHtml += '<div class="table-cs">';
                            blueTableHtml += '<span>'+player.minion_kill+'</span>';
                            blueTableHtml += '<span>분당 '+player.minion_per_min+'</span>';
                            blueTableHtml += '</div>';
                            blueTableHtml += '</td>';
                            
                            blueTableHtml += '<td>';
                            blueTableHtml += '<div class="table-ban">';
                            if (player.kill*2 < player.death) {
                                blueTableHtml += '<span>고의로 게임을 망치거나 포기</span>';
                            } 
                            blueTableHtml += '</div>';
                            blueTableHtml += '</td>';
                            
                            blueTableHtml += '<tr>';
                        }
                        blueTableHtml += '</tbody>';
                        blueTableHtml += '</table>'; // table close
                        blueTableHtml += '</div>'; // blueTable div-close

                        let redTableHtml = '<div class="redTable">'; //redTable div-open
                        redTableHtml += '<table>'; // table open
                        redTableHtml += '<thead>';
                        redTableHtml += '<tr>';
                        redTableHtml += '<th style="width: 24%; text-align: left;">레드팀</th>';
                        redTableHtml += '<th style="width: 13%;">KDA</th>';
                        redTableHtml += '<th style="width: 20%;">피해량</th>';
                        redTableHtml += '<th style="width: 8%;">CS</th>';
                        redTableHtml += '<th style="width: 28%">밴 추천</th>';
                        redTableHtml += '</tr>';
                        redTableHtml += '</thead>';
                        
                        redTableHtml += '<tbody>';
                        for (let i = 5; i < 10; i++) {
                            let player = game.other_team_info[i];
                            redTableHtml += '<tr class="' + (red_win === '승리' ? 'win-background' : 'lose-background') + '">';
                            redTableHtml += '<td>';
                            redTableHtml += '<div class="table-td">';
                            redTableHtml += '<div class="table-champ">';
                            redTableHtml += '<img alt="" src="/assets/img/champion/'+player.champion_pic+'">'; // 챔피언 이미지
                            redTableHtml += '</div>';
                            
                            redTableHtml += '<div class="table-spell">';
                            redTableHtml += '<div class="table-inner">';
                            redTableHtml += '<img alt="" src="/assets/img/'+player.main_rune_id+'">'; // 룬 1 이미지
                            redTableHtml += '</div>';
                            redTableHtml += '<div class="table-inner">';
                            redTableHtml += '<img alt="" src="/assets/img/'+player.sub_rune_type+'">'; // 룬 2 이미지
                            redTableHtml += '</div>';
                            redTableHtml += '<div class="table-inner">';
                            redTableHtml += '<img alt="" src="/assets/img/spell/'+player.spell1_id+'.png">'; // 스펠 1 이미지
                            redTableHtml += '</div>';
                            redTableHtml += '<div class="table-inner">';
                            redTableHtml += '<img alt="" src="/assets/img/spell/'+player.spell2_id+'.png">'; // 스펠 2 이미지
                            redTableHtml += '</div>';
                            redTableHtml += '</div>';
                            
                            redTableHtml += '<div class="table-lolName">';
                            if (player.riotIdGameName === decodeURIComponent(username)) {
                                redTableHtml += '<span class="highlight-player">'+player.riotIdGameName+'</span>';
                            } else {
                                redTableHtml += '<span>'+player.riotIdGameName+'</span>';
                            }                        
                            redTableHtml += '</div>';
                            
                            redTableHtml += '</div>';
                            redTableHtml += '</td>';
                            redTableHtml += '<td>';
                            redTableHtml += '<div class="table-td">';
                            redTableHtml += '<div class="table-kda">';
                            redTableHtml += '<div class="table-inner-kda">';
                            redTableHtml += '<span class="table-kill">'+player.kill+'</span> / <span>'+player.death+'</span> / <span>'+player.assist+'</span> <span>('+Math.round(player.kill_rate*100)+'%)</span>';
                            redTableHtml += '</div>';
                            redTableHtml += '<div class="table-inner-kda">';
                            redTableHtml += '<span class="table-avg-kda">'+player.kda+' KDA</span>';
                            redTableHtml += '</div>';
                            redTableHtml += '</div>';
                            redTableHtml += '</div>';
                            redTableHtml += '</td>';
                            
                            redTableHtml += '<td>';
                            redTableHtml += '<div class="table-damage">';
                            redTableHtml += '<div class="table-inner-damage">';
                            redTableHtml += '<span>'+player.Damage_to_champion+'</span>';
                            redTableHtml += '<div class="progress-bar" data-percent="50">';
                            redTableHtml += '<div class="fill fill-red" style="width: '+player.Damage_to_champion_percent*100+'%;"></div>';
                            redTableHtml += '<span class="percent-label"></span>';
                            redTableHtml += '</div>';
                            redTableHtml += '</div>';
                            redTableHtml += '<div class="table-inner-damage">';
                            redTableHtml += '<span>'+player.Damagetaken+'</span>';
                            redTableHtml += '<div class="progress-bar" data-percent="50">';
                            redTableHtml += '<div class="fill fill-blue" style="width: '+player.Damagetaken_percent*100+'%;"></div>';
                            redTableHtml += '<span class="percent-label"></span>';
                            redTableHtml += '</div>';
                            redTableHtml += '</div>';
                            redTableHtml += '</div>';
                            redTableHtml += '</td>';
                            
                            redTableHtml += '<td>';
                            redTableHtml += '<div class="table-cs">';
                            redTableHtml += '<span>'+player.minion_kill+'</span>';
                            redTableHtml += '<span>분당 '+player.minion_per_min+'</span>';
                            redTableHtml += '</div>';
                            redTableHtml += '</td>';
                            
                            redTableHtml += '<td>';
                            redTableHtml += '<div class="table-ban">';
                            if (player.kill*2 < player.death) {
                                redTableHtml += '<span>고의로 게임을 망치거나 포기</span>';
                            } 
                            redTableHtml += '</div>';
                            redTableHtml += '</td>';
                            
                            redTableHtml += '<tr>';
                        }
                        redTableHtml += '</tbody>';
                        redTableHtml += '</table>'; // table close
                        redTableHtml += '</div>'; // redTable div-close

                        gameHtml += '<div class="Table" style="display: none;">'; // Table div-open
                        if (game.teamId == 100) {
                            gameHtml += blueTableHtml; 
                            gameHtml += redTableHtml;
                        } else {
                            gameHtml += redTableHtml;
                            gameHtml += blueTableHtml;
                        }
                        gameHtml += '</div>'; // Table div-close

                        container.append(gameHtml); // 문자열을 HTML로 변환하여 추가
                    }

                    // 부모의 부모의 부모에 클래스 추가
                    $('.highlight-player').each(function() {
                        $(this).closest('.table-td').parent().parent().addClass('highlight-parent');
                    });
                    
                },
                beforeSend:function(){
                    /*(이미지 보여주기 처리)*/
                    $('.wrap-loading').removeClass('display-none');
                },

                complete:function(){
                    /* (이미지 감추기 처리) */
                    $('.wrap-loading').addClass('display-none');
                },
            
                error: function(xhr, status, error) {
                    console.error("AJAX 요청 실패:", error);
                    container.append("<p>게임 정보를 가져오는 중 오류가 발생했습니다.</p>");
                }
            });
        });
        </script>
		</c:when>
		<c:otherwise>
			<script type="text/javascript">
                alert("로그인이 필요합니다.");
                window.location.href = "/login";
            </script>
		</c:otherwise>
	</c:choose>
</body>
</html>