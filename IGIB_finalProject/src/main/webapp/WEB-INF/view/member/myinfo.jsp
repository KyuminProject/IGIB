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
<!-- Google fonts-->
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Tinos:ital,wght@0,400;0,700;1,400;1,700&amp;display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=DM+Sans:ital,wght@0,400;0,500;0,700;1,400;1,500;1,700&amp;display=swap" rel="stylesheet">
<!-- Core theme CSS (includes Bootstrap)-->
<link href="css/main.css" rel="stylesheet">
<link href="css/menu.css" rel="stylesheet">
<link href="css/movingPage.css" rel="stylesheet">
<link href="css/myinfo.css" rel="stylesheet">
<!--jQurey -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>

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
				<h1 class="fst-italic lh-1 mb-4" style="width: 80%; margin: auto; text-align: center">MY INFO</h1>
				<form id="myinfoForm" action="/memberInfo" method="post" onsubmit="return formCheck(this);" class="row g-3">
					<div id="userNamearea">
						<div id="name">이름</div>
						<input class="form-control" name="mname" id="userName" type="text" value="${sessionScope.loginName}" readonly />
					</div>
					<div id="userIdarea">
						<div id="id">아이디</div>
						<input class="form-control" name="mid" id="userId" type="text" value="${sessionScope.loginId}" readonly />
					</div>
					<div id="userPwarea">
						<div id="pw">비밀번호</div>
						<div class="btnBox">
							<c:choose>
								<c:when test="${sessionScope.loginState == 'K '}">
									<input class="form-control" name="mpw" id="kakao_userPw" type="password" value="${sessionScope.loginPw}" readonly />
								</c:when>
								<c:otherwise>
									<input class="form-control" name="mpw" id="userPw" type="password" value="${sessionScope.loginPw}" readonly />
									<button class="btn btn-primary" id="BoxBtn" onclick="setPw()" type="button">변경</button>
								</c:otherwise>
							</c:choose>
						</div>
					</div>
					<div id="userEmailarea">
						<div id="email">이메일</div>
						<div class="btnBox">
							<c:choose>
								<c:when test="${sessionScope.loginEmail != '미입력' }">
									<input class="form-control" name="memail" id="userEmail" type="text" value="${sessionScope.loginEmail}">
								</c:when>
								<c:otherwise>
									<input class="form-control" name="memail" id="userEmail" type="text" placeholder="Enter Email">
								</c:otherwise>
							</c:choose>
							<button class="btn btn-primary" id="BoxBtn" onclick="sendEmail(document.getElementById('userEmail'))" type="button">전송</button>
						</div>
					</div>
					<div id="checkEmailBox">
						<div class="btnBox" id="hiddenCheckBox" style="display: none">
							<input class="form-control" name="emailCheckNumber" id="inputEmailCode" type="text" placeholder="Enter the number you received by email" />
							<button class="btn btn-primary" id="BoxBtn" onclick="checkEmailCode(document.getElementById('inputEmailCode'))" type="button">확인</button>
						</div>
					</div>
					<div id="userNicknamearea">
						<div id="nickname">닉네임</div>
						<div style = "width: 80%;display: flex;margin: auto;">
						<input class="form-control" name="mloltag" id="userTag" type="text" placeholder="${sessionScope.loginLolTag}"  style = "width: 15%;margin: 0;"/>
						<input class="form-control" name="mlolname" id="userNickname" type="text" placeholder="${sessionScope.loginLolName}" style="    width: 100%;margin: 0;" />
						</div>
					</div>
					<div id="loginBtn">
						<button class="btn btn-primary" id="submitButton" type="submit">
							<i class="fa-solid fa-repeat"></i>
						</button>
					</div>
				</form>
			</div>
		</div>

		<%@ include file="/WEB-INF/view/include/homeicon.jsp"%>

		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>

		<script type="text/javascript">
 let checkCode = false;

 function setPw() {
     console.log("비밀번호 설정");
     let loginEmail = '<%=session.getAttribute("loginEmail")%>';
     let loginId = '<%=session.getAttribute("loginId")%>';
     console.log(loginEmail);

     if (checkCode == false) {
         if (loginEmail == "미입력") {
             alert("이메일 입력 후 인증을 먼저 해주세요");
         } else {
             alert("이메일 인증을 먼저 해주세요");
         }
     } else {
         console.log("성공");

         // 폼 생성 및 제출
         let form = document.createElement("form");
         form.method = "POST";
         form.action = "/changePw_Page";

         let input = document.createElement("input");
         input.type = "hidden";
         input.name = "mid";
         input.value = document.getElementById('userId').value;
         form.appendChild(input);

         document.body.appendChild(form);
         form.submit();
     }
 }
      </script>
		<script type="text/javascript">
         /* 이메일 인증 번호 전송 */
         let sentEmailCode = false;
         function sendEmail(inputObj) {
            console.log("인증 번호 전송")
            
            document.getElementById('hiddenCheckBox').style.removeProperty('display'); // 보이기
            let memail = inputObj.value;
            console.log(memail);

            // 이메일 형식 확인 (간단한 형식 검사)
            let emailCheck = false;
            var emailPattern = /\S+@\S+\.\S+/;
            if (!emailPattern.test(memail)) {
               alert("유효한 이메일 주소를 입력하세요.");
               emailCheck = false;
               return;
            } else {
               emailCheck = true;
            }

            // 이메일 형식이 올바르면 인증 번호 전송
            if (emailCheck == true) {
               $.ajax({
                  type : "post",
                  url : "/sendEmail",
                  data : {
                     "inputEmail" : memail
                  },
                  success : function(result) {
                     if (result == "Y") {
                        alert("인증번호가 전송되었습니다.")
                        sentEmailCode = true;
                     } else {
                        alert("인증번호 전송을 실패하였습니다.")
                     }
                  }
               })
            }
         }

         /* 이메일 인증 번호 확인  */
        
         function checkEmailCode(inputObj) {
            let inputCode = inputObj.value;
            console.log("입력한 인증번호 : " + inputCode);

            if (inputCode == null) {
               alert("인증번호를 입력해주세요");
            } else {
               $.ajax({
                  type : "post",
                  url : "/checkEmailCode",
                  data : {
                     "inputCode" : inputCode
                  },
                  success : function(result) {
                     checkCode = true;
                     if (result == "Y") {
                        alert("이메일 인증을 성공하였습니다.")
                        console.log(document.getElementById('userEmail').value)
                        /* 이메일 변경 */
                       	$.ajax({
                  		type : "post",
                  		url : "/changeEmail",
                 	 	data : {
                     		"memail" : document.getElementById('userEmail').value,
                     		"mid": document.getElementById('userId').value
                     		
                  		},
                 		 success : function(result) {
                  					alert("이메일 변경을 완료했습니다!")
                  			}
              	 	})
                     } else {
                        alert("이메일 인증을 실패하였습니다.")
                        checkCode = false;
                     }
                  }
               })
            }
         }
      </script>
		<script type="text/javascript">
    function formCheck(formObj) {
        console.log('formCheck() 호출');

        // 아이디가 입력되지 않았으면 false
        let userNickname = formObj.userNickname; // 아이디 입력 input 태그
        if (userNickname.value.length == 0) {
            alert('변경할 닉네임을 입력 해주세요');
            userNickname.focus();
            return false;
        } 
    }
    
    

    window.onload = function() {
        var message = "<%=request.getAttribute("msg")%>
			"; // 메시지 가져오기
				if (message && message.trim() !== ""
						&& message.trim() !== "null") { // 메시지가 null이 아니고 공백이 아닐 때만 표시
					alert(message); // 알림창 표시
				}
			}
		</script>