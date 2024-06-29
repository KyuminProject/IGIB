<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<title>Combined View</title>
<link rel="icon" type="image/x-icon" href="assets/favicon.ico">
<!-- jQuery -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<!-- Font Awesome icons (free version)-->
<script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js"
	crossorigin="anonymous"></script>
<!-- Google fonts-->
<link rel="preconnect" href="https://fonts.gstatic.com">
<link
	href="https://fonts.googleapis.com/css2?family=Tinos:ital,wght@0,400;0,700;1,400;1,500;1,700&display=swap"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css2?family=DM+Sans:ital,wght@0,400;0,500;0,700;1,400;1,500;1,700&display=swap"
	rel="stylesheet">
<!-- CSS -->
<link href="css/main.css" rel="stylesheet">
<link href="css/menu.css" rel="stylesheet">
<link href="css/movingPage.css" rel="stylesheet">
<link href="css/questionMark.css" rel="stylesheet">

<!-- javaScript -->
<script type="text/javascript" src="script/movingPage.js"></script>
<script type="text/javascript" src="script/questionMark.js"></script>

<!-- jQuery UI CSS -->
<link rel="stylesheet"
	href="https://code.jquery.com/ui/1.13.0/themes/base/jquery-ui.css">

<!-- jQuery UI JS -->
<script src="https://code.jquery.com/ui/1.13.0/jquery-ui.js"></script>
<style type="text/css">

/* 퍼센트바 스타일 시작 */
.progress-bar, .win_progress-bar {
	width: 500px; /* 퍼센트 바의 전체 너비 */
	height: 30px; /* 퍼센트 바의 높이 */
	background: #ddd; /* 퍼센트 바의 기본 색상 */
	border-radius: 5px; /* 퍼센트 바의 모서리를 둥글게 */
	overflow: hidden; /* 넘치는 부분 숨기기 */
	position: relative; /* 위치 설정 */
	margin-top: 5px; /* 각 퍼센트 바 간의 간격 */
	margin-bottom: 10px;
}

.fill, .win_fill {
	height: 100%;
	background-color: #ff3223; /* 퍼센트 바가 채워지는 색상 */
	border-radius: 5px; /* 퍼센트 바의 모서리를 둥글게 */
	width: 0; /* 초기에는 너비를 0으로 설정 */
	animation: fillAnimation 2s ease forwards; /* 채워지는 애니메이션 적용 */
}

.win_fill {
	background-color: #FFD700; /* 승률 퍼센트 바가 채워지는 색상 */
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




















100


















%;
}
}
.percent-label, .win_percent-label {
	position: absolute; /* 절대 위치 설정 */
	top: 50%; /* 수직 중앙 정렬 */
	left: 50%; /* 수평 중앙 정렬 */
	transform: translate(-50%, -50%); /* 정확히 가운데에 위치하도록 조정 */
	font-size: 18px; /* 글자 크기 설정 */
	font-weight: bold; /* 글자 굵게 설정 */
	color: #333; /* 글자 색상 */
}
/* 퍼센트바 스타일 끝 */

/* 레이아웃 스타일 */
.container {
	display: flex;
}

.column {
	flex: 1;
	margin: 10px;
}

#column_right, #column_left {
	overflow: visible;
}

/* 스크롤 바 */
#itemImgBox, #championImgBox {
	overflow-y: auto;
	height: 450px;
}

#itemImgBox::-webkit-scrollbar, #championImgBox::-webkit-scrollbar {
	width: 12px;
}

#itemImgBox::-webkit-scrollbar-thumb, #championImgBox::-webkit-scrollbar-thumb
	{
	background-color: rgba(100, 100, 100, 0.5);
	border-radius: 6px;
	opacity: 0;
	transition: opacity 0.3s;
}

#itemImgBox:hover::-webkit-scrollbar-thumb, #championImgBox:hover::-webkit-scrollbar-thumb
	{
	opacity: 1;
}

.itemImg.dimmed, .championImg.dimmed {
	opacity: 0.2;
	filter: blur(2px);
}

.itemImg, .championImg {
	width: 90px; /* 고정된 너비 */
	height: 90px; /* 고정된 높이 */
	object-fit: cover; /* 이미지가 요소에 맞게 잘리도록 */
}

.clicked {
	border: 1px solid #ffffff7a;
	background-color: #ffffff7a;
}

#masthead-content {
	max-width: 1000px;
	width: 100%;
}

/* 검색 기능 관련 CSS */
.inner-searchChamp, .inner-searchItem {
	display: flex;
	align-items: center;
	justify-content: flex-start;
	width: 100%;
	height: 40px;
	border: 1px solid #494b4bb3;
	margin-bottom: 5px;
	border-radius: 10px;
	background-color: #171a1a;
	position: sticky;
	top: 0;
	z-index: 10000; /* 다른 요소들 위에 오도록 설정 */
}

#searchChampName, #searchItemName {
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

.inner-searchChamp>button, .inner-searchItem>button {
	background-color: unset;
	border: unset;
	color: #f0ffffcc;
	font-size: larger;
	padding: 4px;
}

/* 챔피언 및 아이템 리스트 CSS */
.champion-row, .item-row {
	display: flex;
	flex-wrap: nowrap;
	margin-bottom: 10px;
}

.inner-itemBox {
	position: relative;
}

.inner-champBox, .inner-itemBox {
	width: 25%; /* 4개가 한 줄에 들어가도록 설정 */
	display: flex;
	flex-direction: column;
	justify-content: center;
	align-items: center;
	box-sizing: border-box;
	padding: 5px;
	cursor: pointer;
	position: relative; /* 팝업을 위한 상대 위치 설정 */
}

.championImg, .itemImg {
	width: 90px;
	height: 90px;
	object-fit: cover;
}

/* 아이템 이름이 길어서 사진이 올라가는 문제 해결 */
.inner-itemBox span, .inner-champBox span {
	display: block;
	width: 90px;
	white-space: nowrap;
	overflow: hidden;
	text-overflow: ellipsis;
	text-align: center;
}

/* 아이템 박스와 챔피언 박스 간 거리 조정 */
.column {
	margin-top: 30px; /* 각 컬럼의 상단 마진을 추가하여 간격을 조정 */
}

.championImg:hover {
	border: 2px solid #FFD700;
	border-radius: 10px;
}

.itemImg:hover {
	border: 2px solid #FFD700;
	border-radius: 10px;
}

.championImg.clicked {
	border: 2px solid #FFD700;
	border-radius: 10px;
}

.itemImg.clicked {
	border: 2px solid #FFD700;
	border-radius: 10px;
}

/* 추가된 CSS */
#usageDataBox {
	margin-top: 30px;
	border: 1px solid #494b4bb3;
	border-radius: 10px;
	padding: 10px;
	background-color: #171a1a;
	color: #cccccc;
	display: none; /* 처음에는 숨김 */
}

#usageDataBox h3 {
	margin-bottom: 20px;
}

#usageDataBox p {
	margin: 5px 0;
}

.hidden {
	display: none;
}
/* masthead-content에 마진 추가 */
#masthead-content {
	margin-top: 80px; /* 메뉴의 높이만큼 마진 추가 */
}

#itembar, #win_itembar {
	margin-top: 20px;
	margin-bottom: 20px; /* 바가 생성될 때 아래에 여유 공간을 추가 */
	color: white;
	display: flex; /* 가운데 정렬을 위해 flexbox 사용 */
	justify-content: center; /* 수평 가운데 정렬 */
	align-items: center; /* 수직 가운데 정렬 */
}

/* 아이템 설명 박스 스타일 */
#itemDescriptionBox {
	position: relative;
	top: 33%;
	left: 6%;
	width: 300px;
	max-height: 450px;
	height: 100%;
	color: #333;
	border-radius: 10px; /* 테두리를 둥글게 */
	z-index: 10000; /* 다른 요소들 위에 오도록 설정 */
	overflow: auto; /* 내용이 넘칠 경우 스크롤 생성 */
	padding: 20px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1); /* 그림자 추가 */
}

.fst-italic {
	text-align: center;
}

#itemDescriptionContent::-webkit-scrollbar {
	display: none; /* 크롬, 사파리, 엣지 */
}

#itemDescriptionContent {
	-ms-overflow-style: none; /* 인터넷 익스플로러 */
	scrollbar-width: none; /* 파이어폭스 */
}
</style>
</head>

<body>
	<!-- Background Video-->
	<%@ include file="../include/video.jsp"%>

	<div class="masthead">
		<!-- menu -->
		<%@ include file="../include/menu.jsp"%>

		<div class="masthead-content text-white" id="masthead-content">
			<div class="container-fluid px-4 px-lg-0"
				style="margin-left: 100px; text-align: center;">
				<h1 class="fst-italic lh-1 mb-4">
					<a href="/" style="color: whitesmoke;">Item Compatibility
						Selection Rate</a>
				</h1>
				<span id="questionMark" onmouseover="showTooltip()"
					onmouseout="hideTooltip()"> <i
					class="fa-regular fa-circle-question"></i>
				</span>
				<div id="questionMarkBox"
					style="display: none; z-index: 10; background-color: rgba(0, 0, 0, 0.7);">
					<div id="explainBox">
						<span>각 아이템별 챔피언 선택률</span>
					</div>
				</div>


				<div class="container">
					<!-- 아이템 목록 -->
					<div class="column" style="margin-right: 50px;" id="column_left">
						<!-- 검색 기능 추가 -->
						<div class="inner-searchItem">
							<input id="searchItemName" placeholder="아이템 검색"
								onkeyup="searchItemByName()">
							<button>
								<i class="fa-solid fa-magnifying-glass"></i>
							</button>
						</div>
						<div id="itemImgBox">
							<div id="itemListArea">
								<c:forEach items="${itemSynergy}" var="item"
									varStatus="loopOuter">
									<c:if test="${loopOuter.index % 4 == 0}">
										<div class="item-row">
									</c:if>
									<div class="inner-itemBox">
										<img
											class="itemImg ${selectedItem == item.ITID ? 'clicked' : ''}"
											id="${item.ITID}" alt="${item.ITNAME}" title="${item.ITNAME}"
											src="${pageContext.request.contextPath}/assets/img/item/${item.ITID}.png"
											value="${item.ITNAME}" data-id="${item.ITID}"
											data-description="${item.ITDESCRIPTION}"> <span>${item.ITNAME}</span>
									</div>
									<c:if test="${loopOuter.index % 4 == 3 or loopOuter.last}">
							</div>
							</c:if>
							</c:forEach>
						</div>
					</div>
				</div>

				<!-- 챔피언 목록 -->
				<div class="column" style="margin-left: 10px;" id="column_right">
					<!-- 검색 기능 추가 -->
					<div class="inner-searchChamp">
						<input id="searchChampName" placeholder="챔피언 검색"
							onkeyup="searchChampionByName()">
						<button>
							<i class="fa-solid fa-magnifying-glass"></i>
						</button>
					</div>
					<div id="championImgBox">
						<div id="champListArea">
							<c:forEach items="${championName}" var="champion"
								varStatus="loopOuter">
								<c:if test="${loopOuter.index % 4 == 0}">
									<div class="champion-row">
								</c:if>
								<div class="inner-champBox">
									<img
										class="championImg ${selectedChampion == champion.cid ? 'clicked' : ''}"
										id="${champion.cid}" alt="${champion.cname}"
										title="${champion.cname}"
										src="${pageContext.request.contextPath}/assets/champion/tiles_mini/${champion.cid}.png"
										value="${champion.cname}" data-cid="${champion.cid}"> <span>${champion.cname}</span>
								</div>
								<c:if test="${loopOuter.index % 4 == 3 or loopOuter.last}">
						</div>
						</c:if>
						</c:forEach>
					</div>
				</div>
			</div>
		</div>
		<!-- 추가된 부분: 사용 정보 표시 영역 -->
		<div id="itembar" style="margin-top: 20px; color: white;"></div>
		<div id="win_itembar" style="margin-top: 20px; color: white;"></div>
	</div>
	</div>
	</div>
	<%@ include file="/WEB-INF/view/include/icon.jsp"%>

	<!-- 추가된 설명 박스 -->
	<div id="itemDescriptionBox" class="hidden"
		style="background-color: rgba(0, 0, 0, 0.7); color: whitesmoke; overflow: hidden;">
		<h3>아이템 설명</h3>
		<img id="itemDescriptionImage" src="" alt="Item Image"
			style="width: 30%; border-radius: 5px;">
		<h4 id="itemDescriptionName" style="margin-top: 10px"></h4>
		<p id="itemDescriptionContent"
			style="max-height: 200px; overflow-y: scroll;"></p>
	</div>

	<!-- 추가된 JavaScript -->
	<script>
        let selectedChampion = null;
        let selectedItem = null;

        document.addEventListener('DOMContentLoaded', function () {
            const itemImages = document.querySelectorAll('.itemImg');
            itemImages.forEach(function (image) {
                image.addEventListener('click', function (event) {
                    event.preventDefault(); // 기본 동작 방지 (페이지 전환 방지)

                    // 모든 이미지에서 clicked 클래스를 제거
                    itemImages.forEach(function (img) {
                        img.classList.remove('clicked');
                    });
                    // 클릭된 이미지에만 clicked 클래스 추가
                    image.classList.add('clicked');

                    // 선택된 아이템 ID 저장
                    selectedItem = image.getAttribute('data-id');


                    // 선택된 챔피언과 아이템이 있을 경우, 데이터 조회 요청
                    if (selectedChampion && selectedItem) {
                        fetchItemUsageData(selectedChampion, selectedItem);
                    }
                });
            });

            const championImages = document.querySelectorAll('.championImg');
            championImages.forEach(function (image) {
                image.addEventListener('click', function (event) {
                    event.preventDefault(); // 기본 동작 방지 (페이지 전환 방지)

                    // 모든 이미지에서 clicked 클래스를 제거
                    championImages.forEach(function (img) {
                        img.classList.remove('clicked');
                    });
                    // 클릭된 이미지에만 clicked 클래스 추가
                    image.classList.add('clicked');

                    // 선택된 챔피언 ID 저장
                    selectedChampion = image.getAttribute('data-cid');

                    // 선택된 챔피언과 아이템이 있을 경우, 데이터 조회 요청
                    if (selectedChampion && selectedItem) {
                        fetchItemUsageData(selectedChampion, selectedItem);
                    }
                });
            });
        });
        
        // 선택된 챔피언과 아이템 정보를 기반으로 데이터 조회
        function fetchItemUsageData(championId, itemId) {
            $.ajax({
                url: "/getItemUsageByChampionAndItem",
                method: 'POST',
                data: { championName: championId, itemId: itemId },
                success: function (itemUsageData) {
                    console.log("Fetched Data:", itemUsageData);
                    const percent = itemUsageData['USAGE_PERCENTAGE'];
                    const winPercent = itemUsageData['WIN_PERCENTAGE'];
                    const itemName = itemUsageData['ITEM_NAME'];
                    const itemDescription = itemUsageData['ITEM_DESCRIPTION'];
                    console.log(percent, winPercent);

                    if (percent !== undefined && winPercent !== undefined) {
                        $('#itembar').html(
                                `<div class="progress-bar" data-percent=""> 
                                    <div class="fill" ></div>
                                    <div class="percent-label"></div> 
                                </div>`
                            );

                        $('#win_itembar').html(
                                `<div class="win_progress-bar" data-percent=""> 
                                    <div class="win_fill" ></div>
                                    <div class="win_percent-label"></div> 
                                </div>`
                            );
                            $(".progress-bar").attr("data-percent", percent);
                            $(".fill").css("width", percent + "%");
                            $(".percent-label").text("선택률: " + percent + "%");

                            $(".win_progress-bar").attr("data-percent", winPercent);
                            $(".win_fill").css("width", winPercent + "%");
                            $(".win_percent-label").text("승률: " + winPercent + "%");
                            updateProgressBars();
                            
                        updateProgressBars();
                    } else {
                        alert("데이터가 없습니다.");
                        resetSelections();
                    }
                },
                error: function () {
                    alert("Error occurred while fetching usage data.");
                }
            });
        }

        // 선택 초기화 함수
        function resetSelections() {
            selectedChampion = null;
            selectedItem = null;

            const itemImages = document.querySelectorAll('.itemImg');
            itemImages.forEach(function (img) {
                img.classList.remove('clicked');
            });

            const championImages = document.querySelectorAll('.championImg');
            championImages.forEach(function (img) {
                img.classList.remove('clicked');
            });

            $('#itembar').empty();
            $('#win_itembar').empty();
        }

        // 퍼센트 바 업데이트 함수
        function updateProgressBars() {
            const progressBars = document.querySelectorAll(".progress-bar, .win_progress-bar");

            progressBars.forEach(function (progressBar) {
                const fill = progressBar.querySelector(".fill, .win_fill");
                const percentLabel = progressBar.querySelector(".percent-label, .win_percent-label");
                const percent = progressBar.getAttribute("data-percent");

                fill.style.width = percent + "%"; // 바의 너비 설정
                if (percentLabel.classList.contains('win_percent-label')) {
                    percentLabel.textContent = "승률: " + percent + "%"; // 승률 설정
                } else {
                    percentLabel.textContent = "선택률: " + percent + "%"; // 선택률 설정
                }
            });
        }

        function searchItemByName() {
            var searchQuery = document.getElementById("searchItemName").value.toLowerCase();
            var results = itemList.filter(item =>
                item.ITNAME.toLowerCase().includes(searchQuery)
            );
            printItemList(results);
        }

        function searchChampionByName() {
            var searchQuery = document.getElementById("searchChampName").value.toLowerCase();
            var results = championListWithChosung.filter(champ =>
                champ.CNAME.toLowerCase().includes(searchQuery) ||
                champ.CHOSUNG.includes(searchQuery)
            );
            printChampList(results);
        }

        function setItemList(list) {
            itemList = list;
        }

        function setChampionList(list) {
            championList = list;
            championListWithChosung = list.map(champ => {
                return {
                    ...champ,
                    CHOSUNG: getChosung(champ.CNAME)
                };
            });
        }

        function printItemList(itemList) {
            var itemListArea = document.querySelector("#itemListArea");
            itemListArea.innerHTML = "";

            for (let i = 0; i < itemList.length; i += 4) {
                let itemRow = document.createElement('div');
                itemRow.classList.add('item-row');

                for (let j = i; j < i + 4 && j < itemList.length; j++) {
                    let item = itemList[j];
                    var itname = item.ITNAME;
                    var itid = item.ITID;
                    var itcontent = item.ITCONTENT;

                    let innerItemBox = document.createElement('div');
                    innerItemBox.classList.add('inner-itemBox');

                    let imgTag = document.createElement('img');
                    imgTag.alt = itname;
                    imgTag.src = "assets/img/item/" + itid + ".png";
                    imgTag.classList.add('itemImg');
                    imgTag.setAttribute('data-id', itid);
                    imgTag.setAttribute('title', itname);
                    imgTag.setAttribute('data-description', itcontent); // 아이템 설명 데이터 속성 추가

                    let spanTag = document.createElement('span');
                    spanTag.innerText = itname;

                    innerItemBox.appendChild(imgTag);
                    innerItemBox.appendChild(spanTag);
                    itemRow.appendChild(innerItemBox);
                }
                itemListArea.appendChild(itemRow);
            }

            // 이벤트 리스너 재설정
            const itemImages = document.querySelectorAll('.itemImg');
            itemImages.forEach(function (image) {
                image.addEventListener('click', function (event) {
                    event.preventDefault(); // 기본 동작 방지 (페이지 전환 방지)

                    // 모든 이미지에서 clicked 클래스를 제거
                    itemImages.forEach(function (img) {
                        img.classList.remove('clicked');
                    });
                    // 클릭된 이미지에만 clicked 클래스 추가
                    image.classList.add('clicked');

                    // 선택된 아이템 ID 저장
                    selectedItem = image.getAttribute('data-id');

                    // 선택된 아이템 설명 표시
                    document.getElementById('itemDescriptionImage').src =  image.src;
            		document.getElementById('itemDescriptionName').innerText = image.getAttribute('title');
                    document.getElementById('itemDescriptionContent').innerText = image.getAttribute('data-description');
                    document.getElementById('itemDescriptionBox').classList.remove('hidden');

                    // 선택된 챔피언과 아이템이 있을 경우, 데이터 조회 요청
                    if (selectedChampion && selectedItem) {
                        fetchItemUsageData(selectedChampion, selectedItem);
                    }
                });
            });
        }

        function printChampList(champList) {
            var champListArea = document.querySelector("#champListArea");
            champListArea.innerHTML = "";

            for (let i = 0; i < champList.length; i += 4) {
                let champRow = document.createElement('div');
                champRow.classList.add('champion-row');

                for (let j = i; j < i + 4 && j < champList.length; j++) {
                    let ch = champList[j];
                    var cname = ch.CNAME;
                    var cid = ch.CID;

                    let innerChampBox = document.createElement('div');
                    innerChampBox.classList.add('inner-champBox');

                    let imgTag = document.createElement('img');
                    imgTag.alt = cname;
                    imgTag.src = "assets/champion/tiles_mini/" + cid + ".png";
                    imgTag.classList.add('championImg');
                    imgTag.setAttribute('data-cid', cid);
                    imgTag.setAttribute('title', cname);

                    let spanTag = document.createElement('span');
                    spanTag.innerText = cname;

                    innerChampBox.appendChild(imgTag);
                    innerChampBox.appendChild(spanTag);
                    champRow.appendChild(innerChampBox);
                }
                champListArea.appendChild(champRow);
            }

            // 이벤트 리스너 재설정
            const championImages = document.querySelectorAll('.championImg');
            championImages.forEach(function (image) {
                image.addEventListener('click', function (event) {
                    event.preventDefault(); // 기본 동작 방지 (페이지 전환 방지)

                    // 모든 이미지에서 clicked 클래스를 제거
                    championImages.forEach(function (img) {
                        img.classList.remove('clicked');
                    });
                    // 클릭된 이미지에만 clicked 클래스 추가
                    image.classList.add('clicked');

                    // 선택된 챔피언 ID 저장
                    selectedChampion = image.getAttribute('data-cid');

                    // 선택된 챔피언과 아이템이 있을 경우, 데이터 조회 요청
                    if (selectedChampion && selectedItem) {
                        fetchItemUsageData(selectedChampion, selectedItem);
                    }
                });
            });
        }

        function loadItemList() {
            $.ajax({
                type: "get",
                url: "/getItemListAll",
                dataType: "json",
                success: function (result) {
                    console.log(result);
                    setItemList(result); // 아이템 목록을 전역 변수에 저장
                    printItemList(result);  // 초기 아이템 목록 출력
                }
            });
        }

        function champList(position) {
            if (position == 'all') {
                $.ajax({
                    type: "get",
                    url: "/getChampListAll",
                    dataType: "json",
                    success: function (result) {
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
                    success: function (result) {
                        console.log(result);
                        setChampionList(result); // 챔피언 목록을 전역 변수에 저장
                        printChampList(result);  // 포지션별 챔피언 목록 출력
                    }
                });
            }
        }

        document.addEventListener("DOMContentLoaded", function () {
            loadItemList(); // 아이템 목록 로드
            champList('all'); // 챔피언 목록 로드
            document.getElementById("searchItemName").addEventListener("keyup", searchItemByName);
            document.getElementById("searchChampName").addEventListener("keyup", searchChampionByName);
        });

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
    </script>

</body>

</html>
