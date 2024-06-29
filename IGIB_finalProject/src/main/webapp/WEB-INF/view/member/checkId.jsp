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
<link href="css/menu.css" rel="stylesheet">
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
		<%@ include file="../include/menu.jsp" %>
		
		<div class="masthead-content text-white">
			<div class="container-fluid px-4 px-lg-0">
				<h1 class="fst-italic lh-1 mb-4">
					CHECK ID
				</h1>
                    	<span style="font-size: 20px;">회원님의 아이디는 ${mid}입니다</span>
			</div>
		</div>
	</div>

	<%@ include file="/WEB-INF/view/include/homeicon.jsp"%>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
	
	            <script type="text/javascript">
					 window.onload = function() {
					        var message = "<%= request.getAttribute("msg") %>";  // 메시지 가져오기
					        if (message && message.trim() !== "" && message.trim() !== "null") {  // 메시지가 null이 아니고 공백이 아닐 때만 표시
					            alert(message);  // 알림창 표시
					        }
					    }
	            </script>
	