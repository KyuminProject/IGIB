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
<script type="text/javascript" src="script/questionMark.js"></script>

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
	margin-top: auto;
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

.champ {
	width: 442px;
	height: 100%;
	background-color: #2f2b2bd9;
	border-radius: 10px;
}

.champRanking {
	width: 625px;
	background-color: #2f2b2bd9;
	border-radius: 10px;
}

.inner-searchChamp, .inner-selectPosition, .inner-selectAboutRanking {
	width: 100%;
	height: 40px;
	border: 1px solid #494b4bb3;
	margin-bottom: 5px;
}

.inner-searchChamp {
	border-radius: 10px;
}

.inner-champList {
	display: flex;
	flex-wrap: wrap;
	justify-content: flex-start;
}

.inner-champBox {
	width: 55px;
	display: flex;
	flex-direction: column;
	justify-content: center;
	align-items: center;
}

.inner-champBox>a>img:hover {
	border: 2px solid #e8f700;
}

.inner-champBox>a>img {
	width: 48px;
	height: 48px;
}

.inner-champBox>span {
	font-size: 12px;
	width: 48px;
	text-align: center;
	white-space: nowrap;
	overflow: hidden;
	text-overflow: ellipsis;
}

.inner-selectPosition {
	display: flex;
	align-items: center;
}

.inner-selectPosition>button {
	width: 20%;
	height: 35px;
	border: none;
	background-color: unset;
	font-size: small;
	color: azure;
	display: flex;
	justify-content: center;
	align-items: center;
}

.inner-selectPosition>button:hover {
	background-color: #494b4bb3;
}

.inner-selectPosition>button>img {
	width: 30px;
	height: 30px;
}

.btnIcon {
	color: #a9872f;
	font-size: 19px;
	margin-right: 2px;
}

.inner-searchChamp {
	display: flex;
	align-items: center;
	justify-content: flex-start;
}

#searchChampName {
	width: 86%;
	height: 68%;
	background-color: #171a1a;
	border: none;
	outline: none;
	border-radius: 15px;
	padding: 0 12px;
	font-size: small;
	color: #cccccc;
	margin-left: 15px;
}

.inner-searchChamp>button {
	background-color: unset;
	border: unset;
	color: #f0ffffcc;
	font-size: larger;
	padding: 4px;
}

.championRanking {
	display: flex;
	align-items: center;
	justify-content: space-between;
	padding: 10px;
}

#champRankingTitle {
	font-size: 30px;
	display: inline-block;
	margin: 0;
	line-height: normal;
}

.champRanking>table {
	width: 100%;
	text-align: center;
}

.table-counterImg>img {
	width: 35px;
	border-radius: 10px;
}

table>thead {
	background-color: #000000c2;
	height: 27px;
	line-height: 27px;
}

table>thead>tr>th {
	font-weight: lighter;
	color: #bfbfbf;
	font-size: 13px;
}

table>tbody {
	font-size: 12px;
	color: #cdcdcd;
}

table>tbody>tr {
	height: 45px;
	line-height: 45px;
}

.table-inner-champImg {
	display: inline-block;
}

.table-inner-champImg>a>img {
	width: 40px;
	height: 100%;
	border-radius: 5px;
}

.table-champName>span {
	font-size: 15px;
	color: azu;
	margin-left: 2px;
}

.table-positionImg>img {
	width: 35px;
}

select {
	background-color: #0b0c0c;
	color: azure;
	border-radius: 3px;
}

.table-champName {
	display: flex;
	justify-content: flex-start;
	width: 174px;
	margin: auto;
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
        
        // 전역 변수로 챔피언 목록 저장
        let championList = [];
        let championListWithChosung = []; // 초성 정보를 포함한 리스트

        // 한글 초성 분리 함수
        function getChosung(str) {
            const CHOSUNG_LIST = [
                'ㄱ', 'ㄲ', 'ㄴ', 'ㄷ', 'ㄸ', 'ㄹ', 'ㅁ', 'ㅂ', 'ㅃ', 'ㅅ', 'ㅆ', 'ㅇ', 'ㅈ', 'ㅉ', 'ㅊ', 'ㅋ', 'ㅌ', 'ㅍ', 'ㅎ'
            ];
            const START_CODE = 44032;
            const END_CODE = 55203;
            let result = '';

            for (let i = 0; i < str.length; i++) {
                let code = str.charCodeAt(i);
                if (code >= START_CODE && code <= END_CODE) {
                    let index = Math.floor((code - START_CODE) / (21 * 28));
                    result += CHOSUNG_LIST[index];
                } else {
                    result += str.charAt(i);
                }
            }

            return result;
        }

        // 챔피언 목록을 전역 변수에 설정하는 함수
        function setChampionList(list) {
            championList = list;
            championListWithChosung = list.map(champ => {
                return {
                    ...champ,
                    CHOSUNG: getChosung(champ.CNAME)
                };
            });
        }

        // 검색 입력 이벤트 처리 함수
        function searchChampionByName() {
            var searchQuery = document.getElementById("searchChampName").value.toLowerCase();
            var results = championListWithChosung.filter(champ => 
                champ.CNAME.toLowerCase().includes(searchQuery) ||
                champ.CHOSUNG.includes(searchQuery)
            );
            printChampList(results);
        }

        // 챔피언 목록 출력 함수
        function printChampList(champList) {
            var champListArea = document.querySelector("#champListArea");
            champListArea.innerHTML = "";

            for (let ch of champList) {
                var cname = ch.CNAME;
                var cid = ch.CID;

                let innerChampBox = document.createElement('div');
                innerChampBox.classList.add('inner-champBox');

                let aTag = document.createElement('a');
                aTag.href = "/champion?cid="+cid;

                let imgTag = document.createElement('img');
                imgTag.alt = cname;
                imgTag.src = "assets/champion/tiles_mini/" + cid + ".png";

                aTag.appendChild(imgTag);

                let spanTag = document.createElement('span');
                spanTag.innerText = cname;

                innerChampBox.appendChild(aTag);
                innerChampBox.appendChild(spanTag);
                champListArea.appendChild(innerChampBox);
            }
        }

        // 페이지 로드 시 초기화 작업
        document.addEventListener("DOMContentLoaded", function() {
            champList('all');
            champRanking('all');
            document.getElementById("searchChampName").addEventListener("keyup", searchChampionByName);
            document.querySelector(".inner-selectTier").addEventListener("change", function() {
                champRanking('all');
            });
        });

        // 챔피언 목록 조회 함수 (기존에 제공된 AJAX 함수 수정)
        function champList(position) {
            console.log(position);
            if (position == 'all') {
                $.ajax({
                    type: "get",
                    url: "/getChampListAll",
                    dataType: "json",
                    success: function(result) {
                        console.log(result);
                        setChampionList(result); // 챔피언 목록을 전역 변수에 저장
                        printChampList(result);  // 초기 챔피언 목록 출력
                    }
                });
            } else {
                $.ajax({
                    type: "get",
                    url: "/getChampListByPosition",
                    data: { "position": position },
                    dataType: "json",
                    success: function(result) {
                        console.log(result);
                        setChampionList(result); // 챔피언 목록을 전역 변수에 저장
                        printChampList(result);  // 포지션별 챔피언 목록 출력
                    }
                });
            }
        }
        
        /* 랭킹 조회 */
        function champRanking(position){
            var tier = document.querySelector(".inner-selectTier").value;
            console.log(position + " : " + tier)
            
            if(position == 'all'){
                // 전체
                $.ajax({
                      type : "get",
                      url : "/getChampRankingAll",
                      data: {"tier":tier},
                      dataType:"json",
                      success : function(result) {
                            console.log(result);
                            printChampRanking(result);

                      }
                   })
            } else{
                // 포지션별
                $.ajax({
                      type : "get",
                      url : "/getChampRankingByPosition",
                      data: {
                          "tier":tier,
                          "position":position    
                      },
                      dataType:"json",
                      success : function(result) {
                            console.log(result);
                            printChampRanking(result)

                      }
                   })
            }
        }
        
        /* 랭킹 출력 */
        function printChampRanking(champRankingList){
            console.log("");
            var tableTody = document.querySelector("#table-tbody");
            tableTody.innerHTML = "";
            
            let num = 1;
            for(let ch of champRankingList){
                
                var cid = ch.CID;
                var cname = ch.CNAME;
                var cTier = ch.TIER
                var position = ch.POSITION
                var winRate = ch.WIN_RATE
                var pickRate = ch.PICK_RATE
                var counter1 = ch.COUNTER_CHAMPION1
                var counter1Name = ch.COUNTER_CHAMPION1_NAME
                var counter2 = ch.COUNTER_CHAMPION2
                var counter2Name = ch.COUNTER_CHAMPION2_NAME
                var counter3 = ch.COUNTER_CHAMPION3
                var counter3Name = ch.COUNTER_CHAMPION3_NAME
                
                
                var trArea = document.createElement('tr');
                
                // 랭킹
                let tdTagRanking = document.createElement('td');
                tdTagRanking.innerText = num;
                num = num + 1;
                
                // 챔피언 이미지 + 이름
                let tableChampName = document.createElement('td');
                tableChampName.classList.add('table-champName');
                
                let tableInnerChampImg = document.createElement('div');
                tableInnerChampImg.classList.add('table-inner-champImg');
                
                let aTag =  document.createElement('a');
                aTag.href = "/champion?cid="+cid;
                
                let imgTagChamp = document.createElement('img');
                imgTagChamp.alt = cname;
                imgTagChamp.src = "assets/champion/tiles_mini/"+cid+".png"
                
                aTag.appendChild(imgTagChamp);
                
                let spanTag = document.createElement('span')
                spanTag.innerText = cname;
                
                tableInnerChampImg.appendChild(aTag);
                tableChampName.appendChild(tableInnerChampImg)
                tableChampName.appendChild(spanTag);
                
                // 챔피언 티어
                let tdTagChampTier = document.createElement('td');
                tdTagChampTier.innerText = cTier;
                
                // 챔피언 포지션
                let tablePositionImg = document.createElement('td');
                tablePositionImg.classList.add('table-positionImg');
                
                let imgTagPosition = document.createElement('img');
                imgTagPosition.alt = position;
                imgTagPosition.src = "/assets/rankingPosition/Position_Challenger-"+position+".png"
                
                tablePositionImg.appendChild(imgTagPosition);
                
                // 승률
                let tdTagWinRate = document.createElement('td');
                tdTagWinRate.innerText = winRate;
                
                // 픽률
                let tdTagPickRate = document.createElement('td');
                tdTagPickRate.innerText = pickRate;
                
                
                // 카운터
                let tableCounterImg = document.createElement('td');
                tableCounterImg.classList.add('table-counterImg');
                
                if(counter1 != null ){
                    let imgTagPCounter1 = document.createElement('img');
                    imgTagPCounter1.alt = counter1;
                    imgTagPCounter1.src = "assets/champion/tiles_mini/"+counter1+".png"
                    
                    let imgTagPCounter2 = document.createElement('img');
                    imgTagPCounter2.alt = counter2;
                    imgTagPCounter2.src = "assets/champion/tiles_mini/"+counter2+".png"
                    
                    let imgTagPCounter3 = document.createElement('img');
                    imgTagPCounter3.alt = counter3;
                    imgTagPCounter3.src = "assets/champion/tiles_mini/"+counter3+".png"
                    
                    tableCounterImg.appendChild(imgTagPCounter1)
                    tableCounterImg.appendChild(imgTagPCounter2)
                    tableCounterImg.appendChild(imgTagPCounter3)
                                        
                }
                
                
                trArea.appendChild(tdTagRanking);
                trArea.appendChild(tableChampName);
                trArea.appendChild(tdTagChampTier);
                trArea.appendChild(tablePositionImg);
                trArea.appendChild(tdTagWinRate);
                trArea.appendChild(tdTagPickRate);
                trArea.appendChild(tableCounterImg);
                
                tableTody.appendChild(trArea);
                
            }
                
                
        }
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
						<a href="/" style="color: whitesmoke;">Champions</a>
					</h1>
					<span id="questionMark" onmouseover="showTooltip()"
						onmouseout="hideTooltip()"> <i
						class="fa-regular fa-circle-question"></i>
					</span>
					<div id="questionMarkBox" style="display: none; background-color: rgba(0, 0, 0, 0.7);">
						<div id="explainBox">
							<span>챔피언들 정보</span>
						</div>
					</div>
				</div>

				<section>
					<div class="champ">
						<div class="inner-searchChamp">
							<input id="searchChampName" placeholder="챔피언 검색">
							<button>
								<i class="fa-solid fa-magnifying-glass"></i>
							</button>
						</div>
						<div class="inner-selectPosition">
							<button onclick="champList('all')">
								<i class="fa-solid fa-star-of-life btnIcon"></i>
							</button>
							<button onclick="champList('TOP')">
								<img alt="" src="/assets/position/Position_Challenger-Top.png">
							</button>
							<button onclick="champList('JUNGLE')">
								<img alt=""
									src="/assets/position/Position_Challenger-Jungle.png">
							</button>
							<button onclick="champList('MIDDLE')">
								<img alt="" src="/assets/position/Position_Challenger-Mid.png">
							</button>
							<button onclick="champList('BOTTOM')">
								<img alt="" src="/assets/position/Position_Challenger-Bot.png">
							</button>
							<button onclick="champList('UTILITY')">
								<img alt=""
									src="/assets/position/Position_Challenger-Support.png">
							</button>
						</div>
						<div class="inner-champList" id="champListArea"></div>
					</div>
					<div class="champRanking">
						<div class="championRanking">
							<h1 id="champRankingTitle">챔피언 랭킹</h1>
							<select class="inner-selectTier">
								<option>CHALLENGER</option>
								<option>GRANDMASTER</option>
								<option>MASTER</option>
								<option>DIAMOND</option>
								<option>EMERALD</option>
								<option>PLATINUM</option>
								<option>GOLD</option>
								<option>SILVER</option>
								<option>BRONZE</option>
								<option>IRON</option>
							</select>
						</div>
						<div class="inner-selectPosition">
							<button onclick="champRanking('all')">
								<i class="fa-solid fa-star-of-life btnIcon"></i> 전체
							</button>
							<button onclick="champRanking('TOP')">
								<img alt="" src="/assets/position/Position_Challenger-Top.png">탑
							</button>
							<button onclick="champRanking('JUNGLE')">
								<img alt=""
									src="/assets/position/Position_Challenger-Jungle.png"> 정글
							</button>
							<button onclick="champRanking('MIDDLE')">
								<img alt="" src="/assets/position/Position_Challenger-Mid.png">
								미드
							</button>
							<button onclick="champRanking('BOTTOM')">
								<img alt="" src="/assets/position/Position_Challenger-Bot.png">
								바텀
							</button>
							<button onclick="champRanking('UTILITY')">
								<img alt=""
									src="/assets/position/Position_Challenger-Support.png">
								서포터
							</button>
						</div>
						<table>
							<thead>
								<tr>
									<th>랭킹</th>
									<th>챔피언</th>
									<th>티어</th>
									<th>포지션</th>
									<th>승률</th>
									<th>픽률</th>
									<th>카운터</th>
								</tr>
							</thead>
							<tbody id="table-tbody">

							</tbody>
						</table>
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
</html>
