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
<link href="css/lolmain.css" rel="stylesheet">
<link href="css/movingPage.css" rel="stylesheet">
<link href="css/menu.css" rel="stylesheet">

<link href="css/questionMark.css" rel="stylesheet">


<style>

/* 퍼센트바 스타일 시작 */
.progress-bar {
	margin: auto;
	margin-top: 20px;
	margin-bottom: 20px;
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

.champImg {
	width: 90px;
	height: 90px;
	cursor: pointer;
	margin-right: 7px;
}

.champImg:hover {
	border: 2px solid #ffffff7a;
	background-color: #ffffff7a;
}

.championImg {
	text-align: center;
}

#counter_champImg {
	margin-top: 10px
}

::-webkit-scrollbar {
	display: none;
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

		<div class="masthead-content text-white" style="margin-top: auto;">
			<div class="container-fluid px-4 px-lg-0"
				style="height: 640px; text-align: center;">
				<h1 class="fst-italic lh-1">
					<a href="/" style="color: whitesmoke;">Champion Recommend</a>
				</h1>
				<span id="questionMark" onmouseover="showTooltip()"
					onmouseout="hideTooltip()"> <i
					class="fa-regular fa-circle-question"></i>
				</span>
				<div id="questionMarkBox"
					style="display: none; z-index: 10; background-color: rgba(0, 0, 0, 0.7);">
					<div id="explainBox">
						<span>티어별 승률 TOP5 챔피언 추천</span>
					</div>
				</div>
				<div id="tierBox1">
					<img class="tierImg" id="IRON" alt="IRON"
						src="/assets/img_tier/Rank=Iron.png"> <img class="tierImg"
						id="BRONZE" alt="BRONZE" src="/assets/img_tier/Rank=Bronze.png">
					<img class="tierImg" id="SILVER" alt="SILVER"
						src="/assets/img_tier/Rank=Silver.png"> <img class="tierImg"
						id="GOLD" alt="GOLD" src="/assets/img_tier/Rank=Gold.png"> <img
						class="tierImg" id="PLATINUM" alt="PLATINUM"
						src="/assets/img_tier/Rank=Platinum.png">
				</div>
				<div id="tierBox2">
					<img class="tierImg" id="EMERALD" alt="EMERALD"
						src="/assets/img_tier/Rank=Emerald.png"> <img
						class="tierImg" id="DIAMOND" alt="DIAMOND"
						src="/assets/img_tier/Rank=Diamond.png"> <img
						class="tierImg" id="MASTER" alt="MASTER"
						src="/assets/img_tier/Rank=Master.png"> <img class="tierImg"
						id="GRANDMASTER" alt="GRANDMASTER"
						src="/assets/img_tier/Rank=Grandmaster.png"> <img
						class="tierImg" id="CHALLENGER" alt="CHALLENGER"
						src="/assets/img_tier/Rank=Challenger.png">
				</div>
				<div id="champImg"></div>

				<div id="counter_champImg"
					style="overflow: scroll; height: 40%; width: 100%;"></div>
			</div>
		</div>

		<div class="social-icons">
			<div
				class="d-flex flex-row flex-lg-column justify-content-center align-items-center h-100 mt-3 mt-lg-0">
				<a class="btn btn-dark m-3" href="/join"><i
					class="fa-regular fa-address-card"></i></a>
			</div>
		</div>
	</div>
</body>
<script type="text/javascript">
   $(document).ready(function() {
      /* 선택된 챔피언 이미지 html  */
      let select_champ_html = ""
      
      /* 티어 이미지 클릭시 최고 승률 구하기 */
      $(".tierImg").click(function() {
         const tier = $(this).attr("id");
         console.log(tier)
         $.ajax({
             type: "GET",
               url: "http://localhost:8081/champRecommendInfo?tier=" + tier,
               dataType: "json",  // 데이터 타입 명시
              success: function(response) {
                 const counter_champImg_div = $("#counter_champImg");
                 counter_champImg_div.empty();
                 const champImg_div = $("#champImg");
                 champImg_div.empty();
                 
                 let champImgHtml = ""
                 for (const champinfo of response){
                    console.log(champinfo['Champ']);
                    champImgHtml += '<img class="champImg" id="'+tier+'_'+champinfo['Champ']+'" alt="'+tier+'" src="/assets/img/champion/'+champinfo['Champ']+'.png">'
                 }
                 champImg_div.append(champImgHtml)
              }
         });
      });
      
      $("#champImg").on("click", ".champImg", function() { // #champImg를 통해 이벤트 위임
          const tier_champ = $(this).attr("id");
          console.log(tier_champ);
          let tier_champ_split = tier_champ.split("_") //아이디에 저장된 티어 와 챔피언 이름을 저장하기 위해서
          
          let tier_sel = tier_champ_split[0] //티어
          let champ_sel = tier_champ_split[1] // 챔피언 이름

          $.ajax({
             type: "GET",
               url: "http://localhost:8081/counterRecommendInfo?tier=" + tier_sel + "&champ="+champ_sel,
               dataType: "json",  // 데이터 타입 명시
              success: function(response) {
                 const counter_champImg_div = $("#counter_champImg");
                 counter_champImg_div.empty();
                 let counter_champImgHtml = ""
                 for (const champinfo of response){
                    console.log(champinfo)
                    counter_champImgHtml += '<div>'
                    counter_champImgHtml += '<div id="championImg">'
                    counter_champImgHtml += '<img class="Counter champImg" id="'+tier_sel+'_'+champ_sel+'" alt="'+tier_sel+'" src="/assets/img/champion/'+champ_sel+'.png">'
                    counter_champImgHtml += '<span style = "margin: 20px; font-size: 25px;">VS</span>'
                    counter_champImgHtml += '<img class="Counter champImg" id="'+tier_sel+'_'+champinfo['Champ']+'" alt="'+tier_sel+'" src="/assets/img/champion/'+champinfo['Champ']+'.png">'
                    counter_champImgHtml += '</div>'
                    counter_champImgHtml += '<div id="percentBar" class="progress-bar" data-percent="'+ champinfo['WINRATE'] +'">'
                    counter_champImgHtml += '<div class="fill"></div>'
                    counter_champImgHtml += '<span class="percent-label" ></span>'
                    counter_champImgHtml += '</div>'
                    counter_champImgHtml += '</div>'
                 }
                 counter_champImg_div.append(counter_champImgHtml)
               var progressBars = document.querySelectorAll(".progress-bar");
      
               progressBars.forEach(function(progressBar) {
                  var fill = progressBar.querySelector(".fill");
                  var percentLabel = progressBar.querySelector(".percent-label");
                  var percent = progressBar.getAttribute("data-percent");
         
                  fill.style.width = percent + "%"; // 바의 너비 설정
                  percentLabel.textContent = "승률 : " + percent + "%"; // 퍼센트 값 설정
                
               });
              }
         });
      });
   });

   </script>

