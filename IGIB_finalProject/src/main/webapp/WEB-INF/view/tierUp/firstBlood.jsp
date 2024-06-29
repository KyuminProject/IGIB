<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<meta charset="UTF-8">
<meta name="viewport"
   content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<title>Coming Soon - Start Bootstrap Theme</title>
<link rel="icon" type="image/x-icon" href="assets/favicon.ico">
<!-- Font Awesome icons (free version)-->
<script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
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
<link href="css/lolmain.css" rel="stylesheet">
<link href="css/movingPage.css" rel="stylesheet">
<link href="css/menu.css" rel="stylesheet">
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
    top: 190px;
    left: 145px;
    color: white;
    font-size: 15px;
    background-color: rgba(0, 0, 0, 0.8);
    padding: 3px;
    color: deepskyblue;
    white-space: pre-line;;
}

.overlay-image-3 {
    position: absolute;
    bottom: 200px;
    left: 210px;
    width: 40px;
    height: 40px;
}

.overlay-text-4 {
    position: absolute;
    top: 299px;
    left: 245px;
    color: white;
    font-size: 15px;
    background-color: rgba(0, 0, 0, 0.8);
    padding: 3px;
    color: deepskyblue;
    white-space: pre-line;
}

.overlay-image-4 {
	position: absolute;
    bottom: 87px;
    left: 307px;
    width: 40px;
    height: 40px;
}

.overlay-text-2 {
    position: absolute;
    top: 129px;
    left: -4px;
    color: white;
    font-size: 15px;
    background-color: rgba(0, 0, 0, 0.8);
    padding: 3px;
    color: deepskyblue;
    white-space: pre-line;
}

.overlay-image-2 {
    position: absolute;
    bottom: 260px;
    left: 75px;
    width: 40px;
    height: 40px;
}

.overlay-text-5 {
   position: absolute;
   top: 421px;
   left: 300px;
   color: white;
   font-size: 15px;
   background-color: rgba(0, 0, 0, 0.8);
   padding: 3px;
   color: deepskyblue;
   white-space: pre-line;
}

.overlay-image-5 {
	position: absolute;		
    bottom: 62px;
    left: 376px;
    width: 40px;
    height: 40px;
}

.overlay-text-1 {
    position: absolute;
    top: 20px;
    left: -40px;
    color: white;
    font-size: 15px;
    background-color: rgba(0, 0, 0, 0.8);
    padding: 3px;
    color: deepskyblue;
    white-space: pre-line;
}

.overlay-image-1 {
    position: absolute;
    bottom: 360px;
    left: 20px;
    width: 40px;
    height: 40px;;
}

.overlay-text-8 {
    position: absolute;
    top: 171px;
    left: 145px;
    color: white;
    font-size: 15px;
    background-color: rgba(0, 0, 0, 0.8);
    padding: 3px;
    color: red;
    white-space: pre-line;
}

.overlay-image-8 {
    position: absolute;
    bottom: 215px;
    left: 205px;
    width: 40px;
    height: 40px;
}

.overlay-text-9 {
   position: absolute;
   top: 250px;
   left: 288px;
   color: white;
   font-size: 15px;
   background-color: rgba(0, 0, 0, 0.8);
   padding: 3px;
   color: red;
   white-space: pre-line;
}

.overlay-image-9 {
    position: absolute;
    bottom: 142px;
    left: 355px;
    width: 40px;
    height: 40px;
}

.overlay-text-7 {
   	position: absolute;
    top: 54px;
    left: 128px;
    color: white;
    font-size: 15px;
    background-color: rgba(0, 0, 0, 0.8);
    padding: 3px;
    color: red;
    white-space: pre-line;
}

.overlay-image-7 {
    position: absolute;
    bottom: 335px;
    left: 195px;
    width: 40px;
    height: 40px;
}

.overlay-text-10 {
    position: absolute;
    top: 418px;
    left: 295px;
    color: white;
    font-size: 15px;
    background-color: rgba(0, 0, 0, 0.8);
    padding: 4px;
    color: red;
    white-space: pre-line;
}

.overlay-image-10 {
    position: absolute;
    bottom: 62px;
    left: 359px;
    width: 40px;
    height: 40px;
}

.overlay-text-6 {
    position: absolute;
    top: -26px;
    left: 40px;
    color: white;
    font-size: 15px;
    background-color: rgba(0, 0, 0, 0.8);
    padding: 3px;
    color: red;
    white-space: pre-line;
}

.overlay-image-6 {
	position: absolute;
    bottom: 416px;
    left: 92px;
    width: 40px;
    height: 40px;
}

.champ_img{
   display: none;
}

.killtime{
   display: none;
}

 #questionMark {
    margin-left: 11px;
    font-size: larger;
    position:absolute;
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


h1 {
    display: inline-block;
}
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
   left: 45%;
   margin-left: -21px;
   margin-top: -21px;
}

.display-none { /*감추기*/
   display: none !important;
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
<body>
<!-- Background Video-->
   <%@ include file="../include/video.jsp"%>

   <!-- Masthead-->
   <div class="masthead">
      <!-- menu -->
      <%@ include file="../include/menu.jsp"%>

      <div class="masthead-content text-white" style="max-width:10000px">
         <div class="container-fluid px-4 px-lg-0" style="width: 70%">
            <h1 class="fst-italic lh-1" style="margin-bottom: 20px">
               <a href="/" style="color: whitesmoke;">Lane First Blood</a>
            </h1>
            <span id="questionMark" onmouseover="showTooltip()" onmouseout="hideTooltip()">
               <i class="fa-regular fa-circle-question"></i>
            </span>
            <div id="questionMarkBox" style="display: none; z-index : 10; background-color: rgba(0, 0, 0, 0.7);">
               <div id="explainBox">
                  <span> 최근 나의 20게임중 퍼블이 가장 많이 나온 곳과 평균 시간을 알수 있다</span>
               </div>
            </div>
            <!-- 로딩 아이콘 시작-->
            <div class="wrap-loading display-none">
               <div>
                  <img src="/assets/img/loading.gif" />
               </div>
            </div>
            <!-- 로딩 아이콘 끝-->
            <div class="map-container"
               style="display: flex; justify-content: center; width: 1000px;">
               <div class="image-container">
                  <img src="/assets/map/map.png" alt="Map Image" class="mapImg">

                  <div class="overlay-text-1"></div>
                  <img src="/assets/position/Position_GOLD-Top.png"
                     alt="Overlay Image-1" class="overlay-image-1">

                  <div class="overlay-text-2"></div>
                  <img src="/assets/position/Position_GOLD-Jungle.png"
                     alt="Overlay Image-2" class="overlay-image-2">

                  <div class="overlay-text-3"></div>
                  <img src="/assets/position/Position_GOLD-Mid.png"
                     alt="Overlay Image-3" class="overlay-image-3">

                  <div class="overlay-text-4"></div>
                  <img src="/assets/position/Position_GOLD-Bot.png"
                     alt="Overlay Image-4" class="overlay-image-4">

                  <div class="overlay-text-5"></div>
                  <img src="/assets/position/Position_GOLD-Support.png"
                     alt="Overlay Image-5" class="overlay-image-5">
               </div>
               <div class="image-container">
                  <img src="/assets/map/map.png" alt="Map Image" class="mapImg">

                  <div class="overlay-text-6"></div>
                  <img src="/assets/position/Position_GOLD-Top.png"
                     alt="Overlay Image-6" class="overlay-image-6">

                  <div class="overlay-text-7"></div>
                  <img src="/assets/position/Position_GOLD-Jungle.png"
                     alt="Overlay Image-7" class="overlay-image-7">

                  <div class="overlay-text-8"></div>
                  <img src="/assets/position/Position_GOLD-Mid.png"
                     alt="Overlay Image-8" class="overlay-image-8">

                  <div class="overlay-text-9"></div>
                  <img src="/assets/position/Position_GOLD-Bot.png"
                     alt="Overlay Image-9" class="overlay-image-9">

                  <div class="overlay-text-10"></div>
                  <img src="/assets/position/Position_GOLD-Support.png"
                     alt="Overlay Image-10" class="overlay-image-10">
               </div>
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
   </div>
</body>
<script>
$(document).ready(function() {
      username = "${loginLolName}";
       tag = "${loginLolTag}";
       
       console.log(username)
       console.log(tag)
       
       const data = {
             username: username,
             tag: tag,
       };
       
       $.ajax({
          type: "POST",
            url: "http://kyu233.iptime.org:200/firstKill",
            data: data,
           success: function(response) {
              for (const result of response){
            	  console.log(result);
            	  let text = $('.overlay-text-'+result['position']);
            	  text.text('퍼플 확률 : ' + result['kill_percent']+'%\n퍼블 평균 시간 : '+result['kill_time_average'])
              }
           },
           beforeSend:function(){
               /*(이미지 보여주기 처리)*/
               $('.wrap-loading').removeClass('display-none');
               $('.map-container').addClass('display-none');
           },

           complete:function(){
               /* (이미지 감추기 처리) */
               $('.wrap-loading').addClass('display-none');
               $('.map-container').removeClass('display-none');
           },
	       error: function(xhr, status, error) {
	           console.error("AJAX 요청 실패:", error);
	            alert("로그인이 필요합니다.");
	            window.location.replace("/login");
	        }
   	   })
})

// 툴팁 보이기
function showTooltip() {
    document.getElementById('questionMarkBox').style.display = 'inline';
}

// 툴팁 숨기기
function hideTooltip() {
    document.getElementById('questionMarkBox').style.display = 'none';
}
</script>
</html>