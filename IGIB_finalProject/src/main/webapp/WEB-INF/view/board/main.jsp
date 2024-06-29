<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<title>IGIB - Welcome to our site</title>
<link rel="icon" type="image/x-icon" href="assets/favicon.ico">
<!-- Font Awesome icons (free version)-->
<script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
<!-- jQuery -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<!-- Google fonts-->
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Tinos:ital,wght@0,400;0,700;1,400;1,700&amp;display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=DM+Sans:ital,wght@0,400;0,500;0,700;1,400;1,500;1,700&amp;display=swap" rel="stylesheet">
<!-- Core theme CSS (includes Bootstrap)-->
<link href="css/main.css" rel="stylesheet">
<link href="css/lolmain.css" rel="stylesheet">
<link href="css/menu.css" rel="stylesheet">

</head>
<body>
	<!-- Background Video-->
	<%@ include file="../include/video.jsp"%>

	<div class="masthead">

		<!-- menu -->
		<%@ include file="../include/menu.jsp"%>

		<div class="masthead-content text-white">
			<div class="container-fluid px-4 px-lg-0">
				<h1 class="fst-italic lh-1 mb-4">
					<a href="/" style="color: whitesmoke;">ITAD</a>
				</h1>

				<form id="contactForm" data-sb-form-api-token="API_TOKEN" class="row g-3" action="/search" method="get">
					<div id="selectServer">
						<input type="text" class="form-control" id="tag" name="tag" placeholder="tag (#제외)">
					</div>
					<div id="searchNickname">
						<input class="form-control" id="username" name="username" type="text" placeholder="소환사 이름" aria-label="Enter Nickname" data-sb-validations="required,email" />
					</div>
					<div id="searchBtn">
						<button class="btn btn-primary" id="submitButton">Find</button>
					</div>
				</form>

				<div id="searchResults"></div>
			</div>
		</div>
	</div>

	<%@ include file="../include/footer.jsp"%>
	<%@ include file="/WEB-INF/view/include/icon.jsp"%>

	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
	<script type="text/javascript">
        window.onload = function() {
            var message = "<%=request.getAttribute("msg")%>"; // 메시지 가져오기
			if (message && message.trim() !== "" && message.trim() !== "null") { // 메시지가 null이 아니고 공백이 아닐 때만 표시
				alert(message); // 알림창 표시
			}
		}
	</script>

	<script>
        $(document).ready(function() {
            $('#submitButton').click(function() {
                var tag = $('#tag').val();
                var nickname = $('#nickname').val();
                
                console.log(tag, nickname)
            });
        });
    </script>

	<script>
        $(document).ready(function() {
            $('#submitButton').click(function() {
                var tag = $('#tag').val();
                var username = $('#username').val();
                
                $.ajax({
                    type: "GET",
                    url: "/search",
                    data: {
                        username: username,
                        tag: tag
                    },
                    success: function(response) {
                        $('#searchResults').html(response).slideDown('slow');
                        $('html, body').animate({
                            scrollTop: $("#searchResults").offset().top
                        }, 500);
                    },
                    error: function(xhr, status, error) {
                        console.error("AJAX 요청 실패:", error);
                        $('#userResult').text("검색 중 오류가 발생했습니다.");
                    }
                });
            });
        });
    </script>
</body>
</html>