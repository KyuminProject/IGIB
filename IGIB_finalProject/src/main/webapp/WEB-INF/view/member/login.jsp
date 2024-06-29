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
<!-- jQuery -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<!-- Google fonts-->
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Tinos:ital,wght@0,400;0,700;1,400;1,700&amp;display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=DM+Sans:ital,wght@0,400;0,500;0,700;1,400;1,500;1,700&amp;display=swap" rel="stylesheet">
<!-- Core theme CSS (includes Bootstrap)-->
<link href="css/main.css" rel="stylesheet">
<link href="css/menu.css" rel="stylesheet">
<link href="css/movingPage.css" rel="stylesheet">
<link href="css/login.css" rel="stylesheet">

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
				<h1 class="fst-italic lh-1 mb-4">
					<a href="/" style="color: whitesmoke;">ITAD</a>
				</h1>
				<form id="loginForm" action="/memberLogin" method="post" onsubmit="return formCheck(this);" class="row g-3">
					<div id="userIdarea">
						<input class="form-control" name="mid" id="userId" type="text" placeholder="Enter ID" />
					</div>
					<div id="userPwarea">
						<input class="form-control" name="mpw" id="userPw" type="password" placeholder="Enter Password" />
					</div>
					<div id="loginBtn">
						<button class="btn btn-primary" id="submitButton" type="submit">
							<i class="fa-solid fa-arrow-right"></i>
						</button>
					</div>
				</form>
			</div>
			<div id="loginMenu">
				<a href="/findId" id="findId">아이디찾기</a>
				<a href="/findPw" id="findPw">비밀번호찾기</a>
			</div>
			<div id='kakaobtn'>
				<button onclick="memberLogin_kakao()" class="btn btn-warning">
					<i class="fa-solid fa-comment"></i>
				</button>
			</div>
		</div>
	</div>

	<div class="social-icons">
		<div class="d-flex flex-row flex-lg-column justify-content-center align-items-center h-100 mt-3 mt-lg-0">
			<a class="btn btn-dark m-3" href="/join">
				<i class="fa-regular fa-address-card"></i>
			</a>
		</div>
	</div>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
	<script type="text/javascript">
    function formCheck(formObj) {
        console.log('formCheck() 호출');

        // 아이디가 입력되지 않았으면 false
        let inputId = formObj.userId; // 아이디 입력 input 태그
        if (inputId.value.length == 0) {
            alert('아이디를 입력 해주세요');
            inputId.focus();
            return false;
        }

        // 비밀번호가 입력되지 않았으면 false
        let inputPw = formObj.userPw; // 비밀번호 입력 input 태그
        if (inputPw.value.length == 0) {
            alert('비밀번호를 입력 해주세요');
            inputPw.focus();
            return false;
        }
    }

    window.onload = function() {
        var message = "<%=request.getAttribute("msg")%>";  // 메시지 가져오기
        if (message && message.trim() !== "" && message.trim() !== "null") {  // 메시지가 null이 아니고 공백이 아닐 때만 표시
            alert(message);  // 알림창 표시
        }
    }
</script>

	<!-- 카카오 로그인 JS -->
	<script src="https://t1.kakaocdn.net/kakao_js_sdk/2.7.1/kakao.min.js" integrity="sha384-kDljxUXHaJ9xAb2AzRd59KxjrFjzHa5TAoFQ6GbYTCAG0bjM55XohjjDT7tDDC01" crossorigin="anonymous"></script>
	<script type="text/javascript">
        Kakao.init('2e75afe18cd6fd16b9ced6aa7002388d');
      Kakao.isInitialized();
      
      function memberLogin_kakao(){
         console.log('카카오 로그인 호출()');
          Kakao.Auth.authorize({
            redirectUri: 'http://localhost:8081/login',
          });
      }
         let authCode = '${param.code}';   
         console.log("authCode: " + authCode);
         if(authCode.length > 0){
            console.log("카카오 인가코드 있음");
            console.log("인증토큰 요청");
            $.ajax({
               type : 'post',
               url : 'https://kauth.kakao.com/oauth/token',
               contentType : 'application/x-www-form-urlencoded;charset=utf-8',
               data : {'grant_type' : 'authorization_code', 
                     'client_id' : '28ef86f6559f0b7113a40efa709cbd0e',
                     'redirect_uri' : 'http://localhost:8081/login',
                     'code' : authCode
                     },
               success : function(response){
                  console.log("인증토큰" + response.access_token);
                  Kakao.Auth.setAccessToken(response.access_token);
                  
                  Kakao.API.request({
                       url: '/v2/user/me',
                     })
                       .then(function(response) {
                        console.log("카카오 계정 정보")
                         console.log("id : " + response.id);
                        console.log("nickname : " + response.properties.nickname);
                        console.log("profile_image : " + response.properties.profile_image);
                        /*ajax 카카오계정 정보가 members 테이블에서 조회(select)*/
                        $.ajax({
                           type : 'get',
                           url : 'memberLogin_kakao',
                           data : {'id' : response.id},
                           success : function(checkMember_kakao){
                              if(checkMember_kakao == 'Y'){
                                 alert('로그인 되었습니다');
                                 location.href="/";
                              } else if(checkMember_kakao == 'NN') {
                                 alert('이메일과 소환사ID를 입력해주세요');
                                 location.href="/myinfo";
                              } else {
                                 let check = confirm('가입된 정보가 없습니다 \n 카카오 계정으로 가입하시겠습니까?')
                                 if(check){
                                    console.log('카카오 회원가입 기능 호출');
                                    memberJoin_kakao(response);
                                 }
                              }
                           }                     
                        });                     
                        
                       })
                       .catch(function(error) {
                         console.log(error);
                       });
               }
            });
         }
      </script>

	<script type="text/javascript">
         function memberJoin_kakao(res){
            console.log('memberJoin_kakao 호출');
            console.log(res);
            $.ajax({
               type : 'get',
               url : 'memberJoin_kakao',
               data : {'mid' : res.id,
                  'mname' : res.properties.nickname,
                  'memail' : 'nonenonenone',
                  'mimg' : res.properties.profile_image},
               success : function(joinResult){
                  alert('카카오 계정으로 회원가입 되었습니다. \n다시 로그인 해주세요');
                  location.href="/login";
               }
            });
         }
      </script>