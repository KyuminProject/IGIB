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

#overlay-text-3 {
   position: absolute;
    top: 103px;
    left: 122px;
   color: white;
   font-size: 15px;
   background-color: rgba(0, 0, 0, 0.8);
   padding: 3px;
   color: deepskyblue;
   white-space: pre-line;
}

#overlay-image-3 {
   position: absolute;
   bottom: 126px;
    left: 128px;
   width: 40px; /* Adjust as needed */
   height: 40px; /* Adjust as needed */
}

#overlay-text-5 {
   position: absolute;
    top: 209px;
    left: 233px;
   color: white;
   font-size: 15px;
   background-color: rgba(0, 0, 0, 0.8);
   padding: 3px;
   color: deepskyblue;
   white-space: pre-line;
}

#overlay-image-5 {
   position: absolute;
    bottom: 20px;
    left: 235px;
   width: 40px;
   height: 40px;
}

#overlay-text-1 {
   position: absolute;
    top: 12px;
    left: 18px;
   color: white;
   font-size: 15px;
   background-color: rgba(0, 0, 0, 0.8);
   padding: 3px;
   color: deepskyblue;
   white-space: pre-line;
}

#overlay-image-1 {
   position: absolute;
   bottom: 216px;
    left: 20px;
   width: 40px;
   height: 40px;
}

#overlay-text-8 {
   position: absolute;
   top: 82px;
   left: 142px;
   color: white;
   font-size: 15px;
   background-color: rgba(0, 0, 0, 0.8);
   padding: 3px;
   color: red;
   white-space: pre-line;
}

#overlay-image-8 {
   position: absolute;
   bottom: 147px;
   left: 149px;
   width: 40px;
   height: 40px;
}

#overlay-text-0 {
   position: absolute;
   top: 170px;
   left: 235px;
   color: white;
   font-size: 15px;
   background-color: rgba(0, 0, 0, 0.8);
   padding: 4px;
   color: red;
   white-space: pre-line;
}

#overlay-image-0 {
   position: absolute;
   bottom: 57px;
   left: 240px;
   width: 40px;
   height: 40px;
}

#overlay-text-6 {
   position: absolute;
   top: 6px;
   left: 37px;
   color: white;
   font-size: 15px;
   background-color: rgba(0, 0, 0, 0.8);
   padding: 3px;
   color: red;
   white-space: pre-line;
}

#overlay-image-6 {
   position: absolute;
   bottom: 222px;
   left: 40px;
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
</style>
 <script>
        // 페이지 로딩 후 실행되는 JavaScript
        document.addEventListener("DOMContentLoaded", function() {
            var masthead = document.querySelector(".masthead");
            setTimeout(function() {
                masthead.classList.add("fixed");
            }, 1000);
        });

        // 툴팁 보이기
        function showTooltip() {
            document.getElementById('questionMarkBox').style.display = 'inline';
        }

        // 툴팁 숨기기
        function hideTooltip() {
            document.getElementById('questionMarkBox').style.display = 'none';
        }

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
                url: "http://kyu233.iptime.org:200/firstBlood",
                data: data,
                success: function(response) {
                    let Red_Adc = response.Red_Adc
                    let Red_Mid = response.Red_Mid
                    let Red_Top = response.Red_Top

                    let Blue_Top = response.Blue_Top
                    let Blue_Mid = response.Blue_Mid
                    let Blue_Adc = response.Blue_Adc

                    let Red_Top_time = response.Red_Top_time
                    let Red_Mid_time = response.Red_Mid_time
                    let Red_Adc_time = response.Red_Adc_time

                    let Blue_Top_time = response.Blue_Top_time
                    let Blue_Mid_time = response.Blue_Mid_time
                    let Blue_Adc_time = response.Blue_Adc_time

                    $("#overlay-image-1").attr("src", "/assets/img/champion/" + Blue_Top + ".png");
                    $("#overlay-image-3").attr("src", "/assets/img/champion/" + Blue_Mid + ".png");
                    $("#overlay-image-5").attr("src", "/assets/img/champion/" + Blue_Adc + ".png");

                    $("#overlay-image-6").attr("src", "/assets/img/champion/" + Red_Top + ".png");
                    $("#overlay-image-8").attr("src", "/assets/img/champion/" + Red_Mid + ".png");
                    $("#overlay-image-0").attr("src", "/assets/img/champion/" + Red_Adc + ".png");

                    $("#overlay-text-1").text(parseInt(Blue_Top_time / 60) + ":" + Blue_Top_time % 60 + "분");
                    $("#overlay-text-3").text(parseInt(Blue_Mid_time / 60) + ":" + Blue_Mid_time % 60 + "분");
                    $("#overlay-text-5").text(parseInt(Blue_Adc_time / 60) + ":" + Blue_Adc_time % 60 + "분");

                    $("#overlay-text-6").text(parseInt(Red_Top_time / 60) + ":" + Red_Top_time % 60 + "분");
                    $("#overlay-text-8").text(parseInt(Red_Mid_time / 60) + ":" + Red_Mid_time % 60 + "분");
                    $("#overlay-text-0").text(parseInt(Red_Adc_time / 60) + ":" + Red_Adc_time % 60 + "분");

                    $(".killtime").show();
                    $(".champ_img").show();
                }
            })
        });
    </script>
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
            <div class="masthead-content text-white">
                <div class="container-fluid px-4 px-lg-0">
                    <h1 class="fst-italic lh-1 mb-4">
                        <a href="/" style="color: whitesmoke;">Lane First Kill</a>
                    </h1>
                    <span id="questionMark" onmouseover="showTooltip()" onmouseout="hideTooltip()">
                        <i class="fa-regular fa-circle-question"></i>
                    </span>
                    <div id="questionMarkBox" style="display: none; z-index: 10; background-color: rgba(0, 0, 0, 0.7);">
                        <div id="explainBox">
                            <span> 나의 게임 전적에서 탑, 미드, 바텀에서 가장 많이 픽된 챔피언과 라인별 평균 첫킬시간을 알아보자 </span>
                        </div>
                    </div>
                    <div class="map-container" style="display: flex; justify-content: center;">
                        <div class="image-container">
                            <img src="/assets/map/map.png" alt="Map Image" class="mapImg">
                            <div id="overlay-text-1" class="killtime"></div>
                            <img src="" alt="Overlay Image-1" id="overlay-image-1" class="champ_img">
                            <div id="overlay-text-3" class="killtime"></div>
                            <img src="" alt="Overlay Image-3" id="overlay-image-3" class="champ_img">
                            <div id="overlay-text-5" class="killtime"></div>
                            <img src="" alt="Overlay Image-5" id="overlay-image-5" class="champ_img">
                        </div>
                        <div class="image-container">
                            <img src="/assets/map/map.png" alt="Map Image" class="mapImg">
                            <div id="overlay-text-6" class="killtime"></div>
                            <img src="" alt="Overlay Image-6" id="overlay-image-6" class="champ_img">
                            <div id="overlay-text-8" class="killtime"></div>
                            <img src="" alt="Overlay Image-8" id="overlay-image-8" class="champ_img">
                            <div id="overlay-text-0" class="killtime"></div>
                            <img src="" alt="Overlay Image-0" id="overlay-image-0" class="champ_img">
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