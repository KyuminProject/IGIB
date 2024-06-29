<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<head>
<meta charset="UTF-8">
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
#GoldMapBox {
   display: flex; /* Flexbox 레이아웃 사용 */
   justify-content: center; /* 중앙 정렬 */
   align-items: center; /* 수직 중앙 정렬 */
   gap: 20px; /* 이미지 간격 */
}

.mapImg {
   max-width: 100%; /* 이미지가 컨테이너를 넘지 않도록 설정 */
   height: auto; /* 비율을 유지하면서 높이 자동 조절 */
   border-radius: 10px;
}

.image-container {
   position: relative;
   display: inline-block;
   margin: 0 10px; /* Adjust as needed */
}

.overlay-text-3 {
   position: absolute;
   top: 90px; /* Adjust as needed */
   left: 105px; /* Adjust as needed */
   color: white;
   font-size: 15px;
   background-color: rgba(0, 0, 0, 0.8);
   padding: 3px;
   color: deepskyblue;
   white-space: pre-line;
}

.overlay-image-3 {
   position: absolute;
   bottom: 120px; /* Adjust as needed */
   left: 120px; /* Adjust as needed */
   width: 40px; /* Adjust as needed */
   height: 40px; /* Adjust as needed */
}

.overlay-text-4 {
   position: absolute;
   top: 175px;
   left: 195px;
   color: white;
   font-size: 15px;
   background-color: rgba(0, 0, 0, 0.8);
   padding: 3px;
   color: deepskyblue;
   white-space: pre-line;
}

.overlay-image-4 {
   position: absolute;
   bottom: 35px;
   left: 210px;
   width: 40px;
   height: 40px;
}

.overlay-text-2 {
   position: absolute;
   top: 172px;
   left: 46px;
   color: white;
   font-size: 15px;
   background-color: rgba(0, 0, 0, 0.8);
   padding: 3px;
   color: deepskyblue;
   white-space: pre-line;
}

.overlay-image-2 {
   position: absolute;
   bottom: 130px;
   left: 55px;
   width: 40px;
   height: 40px;
}

.overlay-text-5 {
   position: absolute;
   top: 265px;
   left: 230px;
   color: white;
   font-size: 15px;
   background-color: rgba(0, 0, 0, 0.8);
   padding: 3px;
   color: deepskyblue;
   white-space: pre-line;
}

.overlay-image-5 {
   position: absolute;
   bottom: 35px;
   left: 250px;
   width: 40px;
   height: 40px;
}

.overlay-text-1 {
   position: absolute;
   top: 60px;
   left: 20px;
   color: white;
   font-size: 15px;
   background-color: rgba(0, 0, 0, 0.8);
   padding: 3px;
   color: deepskyblue;
   white-space: pre-line;
}

.overlay-image-1 {
   position: absolute;
   bottom: 240px;
   left: 30px;
   width: 40px;
   height: 40px;
}

.overlay-text-8 {
   position: absolute;
   top: 165px;
   left: 123px;
   color: white;
   font-size: 15px;
   background-color: rgba(0, 0, 0, 0.8);
   padding: 3px;
   color: red;
   white-space: pre-line;
}

.overlay-image-8 {
   position: absolute;
   bottom: 135px;
   left: 135px;
   width: 40px;
   height: 40px;
}

.overlay-text-9 {
   position: absolute;
   top: 140px;
   left: 200px;
   color: white;
   font-size: 15px;
   background-color: rgba(0, 0, 0, 0.8);
   padding: 3px;
   color: red;
   white-space: pre-line;
}

.overlay-image-9 {
   position: absolute;
   bottom: 72px;
   left: 215px;
   width: 40px;
   height: 40px;
}

.overlay-text-7 {
   position: absolute;
   top: 72px;
   left: 115px;
   color: white;
   font-size: 15px;
   background-color: rgba(0, 0, 0, 0.8);
   padding: 3px;
   color: red;
   white-space: pre-line;
}

.overlay-image-7 {
   position: absolute;
   bottom: 230px;
   left: 125px;
   width: 40px;
   height: 40px;
}

.overlay-text-0 {
   position: absolute;
   top: 228px;
   left: 228px;
   color: white;
   font-size: 15px;
   background-color: rgba(0, 0, 0, 0.8);
   padding: 4px;
   color: red;
   white-space: pre-line;
}

.overlay-image-0 {
   position: absolute;
   bottom: 71px;
   left: 252px;
   width: 40px;
   height: 40px;
}

.overlay-text-6 {
   position: absolute;
   top: 54px;
   left: 20px;
   color: white;
   font-size: 15px;
   background-color: rgba(0, 0, 0, 0.8);
   padding: 3px;
   color: red;
   white-space: pre-line;
}

.overlay-image-6 {
   position: absolute;
   bottom: 246px;
   left: 32px;
   width: 40px;
   height: 40px;
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
            <h1 class="fst-italic lh-1" style="margin-bottom: 20px">
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
            
            <div class="map-container"
               style="display: flex; justify-content: center;">
               <div class="image-container">
                  <img src="/assets/map/map.png" alt="Map Image" class="mapImg">

                  <div class="overlay-text-1"></div>
                  <img src="/assets/position/Position_${tier}-Top.png"
                     alt="Overlay Image-1" class="overlay-image-1">

                  <div class="overlay-text-2"></div>
                  <img src="/assets/position/Position_${tier}-Jungle.png"
                     alt="Overlay Image-2" class="overlay-image-2">

                  <div class="overlay-text-3"></div>
                  <img src="/assets/position/Position_${tier}-Mid.png"
                     alt="Overlay Image-3" class="overlay-image-3">

                  <div class="overlay-text-4"></div>
                  <img src="/assets/position/Position_${tier}-Bot.png"
                     alt="Overlay Image-4" class="overlay-image-4">

                  <div class="overlay-text-5"></div>
                  <img src="/assets/position/Position_${tier}-Support.png"
                     alt="Overlay Image-5" class="overlay-image-5">
               </div>
               <div class="image-container">
                  <img src="/assets/map/map.png" alt="Map Image" class="mapImg">

                  <div class="overlay-text-6"></div>
                  <img src="/assets/position/Position_${tier}-Top.png"
                     alt="Overlay Image-6" class="overlay-image-6">

                  <div class="overlay-text-7"></div>
                  <img src="/assets/position/Position_${tier}-Jungle.png"
                     alt="Overlay Image-7" class="overlay-image-7">

                  <div class="overlay-text-8"></div>
                  <img src="/assets/position/Position_${tier}-Mid.png"
                     alt="Overlay Image-8" class="overlay-image-8">

                  <div class="overlay-text-9"></div>
                  <img src="/assets/position/Position_${tier}-Bot.png"
                     alt="Overlay Image-9" class="overlay-image-9">

                  <div class="overlay-text-0"></div>
                  <img src="/assets/position/Position_${tier}-Support.png"
                     alt="Overlay Image-0" class="overlay-image-0">
               </div>
            </div>

            <h1 class="fst-italic lh-1 mb-1" style="padding: 30px;     width: 100%;
    text-align: center;">
               <a href="/" style="color: whitesmoke; font-size: 40px">TIME BAR</a>
            </h1>
            <!-- 시간바 html -->
            <div class="time-progress-container">
               <div class="time-progress-bar">
                  <div class="time-fill"></div>
               </div>
               <input type="range" style="width: 100%" class="time-slider" min="1"
                  max="${goldDtos[9].timecount}" value="1"
                  oninput="updateGoldValue(this.value)"> <span
                  class="time-label">1분</span>
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
         // JSON 데이터를 JavaScript 객체로 파싱
         var goldValuesList = JSON.parse('${goldValuesJson}');
         /* 시간 바 */
         document.addEventListener("DOMContentLoaded", function() {
            var slider = document.querySelector(".time-slider");
            var fill = document.querySelector(".time-fill");
            var timeLabel = document.querySelector(".time-label");

            slider.addEventListener("input", function() {
               var percent = slider.value;
               fill.style.width = percent + "%";
               timeLabel.textContent = percent + "분";
               timeLabel.style.left = percent + "%";
            });

         });

         /* goldDto 값을 업데이트하는 함수 */
         function updateGoldValue(value) {
            // value는 1부터 시작한다고 가정 (시간 값)
            var timecount = ${goldDtos[0].timecount};
            var gtcs = ${goldDtos[0].gtcs};
            var csValue = gtcs/timecount;
            var goldValue = goldValuesList[0][value - 1];// goldValuesList[2]의 value-1 인덱스 값 가져오기
            document.querySelector('.overlay-text-1').textContent = goldValue.toFixed(0)+"\nCS : "+ csValue.toFixed(2); // .overlay-text-3에 goldValue 설정

            var timecount = ${goldDtos[1].timecount};
            var gtcs = ${goldDtos[1].gtcs};
            var csValue = gtcs/timecount
            var goldValue = goldValuesList[1][value - 1]; // goldValuesList[2]의 value-1 인덱스 값 가져오기
            document.querySelector('.overlay-text-2').textContent = goldValue.toFixed(0)+"\nCS : "+ csValue.toFixed(2);; // .overlay-text-3에 goldValue 설정

            var timecount = ${goldDtos[2].timecount};
            var gtcs = ${goldDtos[2].gtcs};
            var csValue = gtcs/timecount
            var goldValue = goldValuesList[2][value - 1]; // goldValuesList[2]의 value-1 인덱스 값 가져오기
            document.querySelector('.overlay-text-3').textContent = goldValue.toFixed(0)+"\nCS : "+ csValue.toFixed(2); // .overlay-text-3에 goldValue 설정
            
            var timecount = ${goldDtos[3].timecount};
            var gtcs = ${goldDtos[3].gtcs};
            var csValue = gtcs/timecount
            var goldValue = goldValuesList[3][value - 1]; // goldValuesList[2]의 value-1 인덱스 값 가져오기
            document.querySelector('.overlay-text-4').textContent = goldValue.toFixed(0)+"\nCS : "+ csValue.toFixed(2); // .overlay-text-3에 goldValue 설정

            var timecount = ${goldDtos[4].timecount};
            var gtcs = ${goldDtos[4].gtcs};
            var csValue = gtcs/timecount
            var goldValue = goldValuesList[4][value - 1]; // goldValuesList[2]의 value-1 인덱스 값 가져오기
            document.querySelector('.overlay-text-5').textContent = goldValue.toFixed(0)+"\nCS : "+ csValue.toFixed(2); // .overlay-text-3에 goldValue 설정

            var timecount = ${goldDtos[5].timecount};
            var gtcs = ${goldDtos[5].gtcs};
            var csValue = gtcs/timecount
            var goldValue = goldValuesList[5][value - 1]; // goldValuesList[2]의 value-1 인덱스 값 가져오기
            document.querySelector('.overlay-text-6').textContent = goldValue.toFixed(0)+"\nCS : "+ csValue.toFixed(2); // .overlay-text-3에 goldValue 설정

            var timecount = ${goldDtos[6].timecount};
            var gtcs = ${goldDtos[6].gtcs};
            var csValue = gtcs/timecount
            var goldValue = goldValuesList[6][value - 1]; // goldValuesList[2]의 value-1 인덱스 값 가져오기
            document.querySelector('.overlay-text-7').textContent = goldValue.toFixed(0)+"\nCS : "+ csValue.toFixed(2);
            var timecount = ${goldDtos[7].timecount};
            var gtcs = ${goldDtos[7].gtcs};
            var csValue = gtcs/timecount
            var goldValue = goldValuesList[7][value - 1]; // goldValuesList[2]의 value-1 인덱스 값 가져오기
            document.querySelector('.overlay-text-8').textContent = goldValue.toFixed(0)+"\nCS : "+ csValue.toFixed(2); // .overlay-text-3에 goldValue 설정

            var timecount = ${goldDtos[8].timecount};
            var gtcs = ${goldDtos[8].gtcs};
            var csValue = gtcs/timecount
            var goldValue = goldValuesList[8][value - 1]; // goldValuesList[2]의 value-1 인덱스 값 가져오기
            document.querySelector('.overlay-text-9').textContent = goldValue.toFixed(0)+"\nCS : "+ csValue.toFixed(2); // .overlay-text-3에 goldValue 설정

            var timecount = ${goldDtos[9].timecount};
            var gtcs = ${goldDtos[9].gtcs};
            var csValue = gtcs/timecount
            var goldValue = goldValuesList[9][value - 1]; // goldValuesList[2]의 value-1 인덱스 값 가져오기
            document.querySelector('.overlay-text-0').textContent = goldValue.toFixed(0)+"\nCS : "+ csValue.toFixed(2); // .overlay-text-3에 goldValue 설정
         }
      </script>
</body>
</html>