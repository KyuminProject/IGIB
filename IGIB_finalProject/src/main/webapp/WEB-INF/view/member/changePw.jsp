<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<title>Coming Soon - Start Bootstrap Theme</title>
<link rel="icon" type="image/x-icon" href="assets/favicon.ico">
<link href="css/main.css" rel="stylesheet">
<link href="css/menu.css" rel="stylesheet">
<link href="css/movingPage.css" rel="stylesheet">
<link href="css/dragonWinning.css" rel="stylesheet">
<link href="css/percentBar.css" rel="stylesheet">
<link href="css/questionMark.css" rel="stylesheet">
<script type="text/javascript" src="script/movingPage.js"></script>
<script type="text/javascript" src="script/questionMark.js"></script>
<script type="text/javascript" src="script/dragonWinning.js"></script>
<!-- Font Awesome icons (free version)-->
<script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>

<!-- Google fonts-->
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Tinos:ital,wght@0,400;0,700;1,400;1,700&amp;display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=DM+Sans:ital,wght@0,400;0,500;0,700;1,400;1,500;1,700&amp;display=swap" rel="stylesheet">
<!-- Core theme CSS (includes Bootstrap)-->
<link href="css/main.css" rel="stylesheet">
<link href="css/lolmain.css" rel="stylesheet">
<link href="css/subpage.css" rel="stylesheet">

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
				<h1 class="fst-italic lh-1 mb-4">CHANGE PASSWORD</h1>
				<form id="changePW" action="changePw" method="post" onsubmit="return formCheck(this);" class="row g-3">
					<input type="hidden" name="mid" value="${mid}">

					<div class="joinBox">
						<input class="form-control" name="mpw" id="inputPw" type="text" placeholder="Enter Password" />
					</div>
					<div class="joinBox">
						<input class="form-control" name="checkpw" id="inputCheckPw" type="password" placeholder="Enter Check Password" aria-label="Enter Check Password" />
					</div>
					<div id="loginBtn">
						<button class="btn btn-primary" id="submitButton" type="submit">
							<i class="fa-solid fa-arrow-right"></i>
						</button>
					</div>
					<span id="passwordMismatch" style="display: none; color: red;">비밀번호가 일치하지 않습니다.</span>
				</form>
			</div>
		</div>
	</div>

	<%@ include file="/WEB-INF/view/include/homeicon.jsp"%>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>

	<script type="text/javascript">
		            /* 정보를 모두 입력해야 회원가입 가능 */
					function formCheck(formObj) {
						console.log("formCheck() 호출");
						console.log(formObj)
						
						
						// 비밀번호
						let inputPw =formObj.mpw;
						if(inputPw.value == ""){
							alert("비밀번호를 입력하세요");
							inputPw.focus();
							return false;
						}
						
						// 비밀번호 확인
						let inputCheckPw =formObj.checkpw;
						if(inputCheckPw.value == ""){
							alert("비밀번호를 재입력하세요");
							inputCheckPw.focus();
							return false;
						}
						
						// 비밀번호 재확인 처리
						// 비밀번호 일치 여부 확인 후 span 요소 보이기/숨기기
						if (inputPw.value !== inputCheckPw.value) {
    						document.getElementById('passwordMismatch').style.display = 'block'; // 보이기
    						inputPw.focus(); // 비밀번호 입력란에 포커스
    						return false;
						} else {
    						document.getElementById('passwordMismatch').style.display = 'none'; // 숨기기
    						return true;
						}
						
					}
		            
					 window.onload = function() {
					        var message = "<%=request.getAttribute("msg")%>
		"; // 메시지 가져오기
			if (message && message.trim() !== "" && message.trim() !== "null") { // 메시지가 null이 아니고 공백이 아닐 때만 표시
				alert(message); // 알림창 표시
			}
		}
	</script>