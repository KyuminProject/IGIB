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

<link href="css/main.css" rel="stylesheet">
<link href="css/menu.css" rel="stylesheet">
<link href="css/movingPage.css" rel="stylesheet">
<link href="css/dragonWinning.css" rel="stylesheet">
<link href="css/percentBar.css" rel="stylesheet">
<link href="css/questionMark.css" rel="stylesheet">
<script type="text/javascript" src="script/movingPage.js"></script>
<script type="text/javascript" src="script/questionMark.js"></script>
<script type="text/javascript" src="script/dragonWinning.js"></script>


<!-- Google fonts-->
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Tinos:ital,wght@0,400;0,700;1,400;1,700&amp;display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=DM+Sans:ital,wght@0,400;0,500;0,700;1,400;1,500;1,700&amp;display=swap" rel="stylesheet">
<!-- Core theme CSS (includes Bootstrap)-->
<link href="css/lolmain.css" rel="stylesheet">
<link href="css/subpage.css" rel="stylesheet">
<style>

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
            <h1 class="fst-italic lh-1 mb-4">FIND ID</h1>
            <form id="findIdForm" action="/memberFindId" method="post" onsubmit="return formCheck(this);" class="row g-3">
               <div class="joinBox">
                       <input class="form-control"  name="mname" id="inputName" type="text" placeholder="Enter Name" data-sb-validations="required,email"/>
                   </div>
               <div class="joinBox" style="display:flex;">
                       <input class="form-control"  name="memail" id="inputemail" type="email" placeholder="Enter Email" aria-label="Enter Nickname" data-sb-validations="required,email"/>
                      <button class="btn btn-primary" id="sendEmailBtn" onclick="sendEmail(document.getElementById('inputemail'))"  type="button" style="width:15%;">전송</button>
                   </div>
                   <div class="joinBox" style="display:flex;">
                       <input class="form-control" name="emailCheckNumber" id="inputEmailCode" type="text" placeholder="Enter the number you received by email" data-sb-validations="required,email"/>
                      <button class="btn btn-primary" id="checkEmailBtn" type="button" onclick="checkEmailCode(document.getElementById('inputEmailCode'))" style="width:15%;">확인</button>
                     </div>
               <div id="loginBtn">
                  <button class="btn btn-primary" id="submitButton" type="submit">
                     <i class="fa-solid fa-arrow-right"></i>
                  </button>
               </div>
            </form>
         </div>
      </div>
   </div>

   <%@ include file="/WEB-INF/view/include/homeicon.jsp"%>
   <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
   <script type="text/javascript">
      /* 이메일 인증 번호 전송 */
      let sentEmailCode = false;
      function sendEmail(inputObj) {
         console.log("인증 번호 전송")
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
      let checkCode = false;
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
                  if (result == "Y") {
                     alert("이메일 인증을 성공하였습니다.")
                     checkCode = true;
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
                  /* 정보를 모두 입력해야 회원가입 가능 */
               function formCheck(formObj) {
                  console.log("formCheck() 호출");
                  console.log(formObj)
                  
                  
                  // 아이디
                  let inputName =formObj.mname;
                  if(inputName.value == ""){
                     alert("이름을 입력하세요");
                     inputName.focus();
                     return false;
                  }
                  
                  // 이메일
                  let inputEmail =formObj.memail;
                  if(inputEmail.value == ""){
                     alert("이메일을 입력하세요");
                     inputEmail.focus();
                     return false;
                  }
                  
                  // 이메일 인증번호 전송 여부
                  if(sentEmailCode == false){
                     alert("이메일 인증을 확인해주세요")
                     inputEmail.focus();
                     return false;
                     
                  }
                  
                  // 이메일 인증 번호 입력 여부
                  let inputEmailCheckNumber =formObj.emailCheckNumber;
                  if(inputEmailCheckNumber.value == ""){
                     alert("이메일 인증 번호를 입력하세요");
                     inputEmailCheckNumber.focus();
                     return false;
                  }
                  
                  // 이메일 인증 번호 확인 여부
                  if(checkCode == false){
                     alert("이메일 인증 번호가 일치하지 않습니다.");
                     inputEmailCheckNumber.focus();
                     return false;
                  }
                  
                  
               }
                window.onload = function() {
                       var message = "<%= request.getAttribute("msg") %>";  // 메시지 가져오기
                       if (message && message.trim() !== "" && message.trim() !== "null") {  // 메시지가 null이 아니고 공백이 아닐 때만 표시
                           alert(message);  // 알림창 표시
                       }
                   }
               </script>
   