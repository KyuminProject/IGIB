<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
<!--jQurey -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<!-- Core theme CSS (includes Bootstrap)-->
<link href="css/main.css" rel="stylesheet">
<link href="css/menu.css" rel="stylesheet">
<link href="css/movingPage.css" rel="stylesheet">
<link href="css/join.css" rel="stylesheet">
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
<script type="text/javascript">
    document.addEventListener("DOMContentLoaded", function() {
        // 페이지가 로딩될 때 실행되는 코드

        // .masthead:before 요소 선택
        var mastheadBefore = document.querySelector(".masthead:before");

        // 페이지 로딩 후 1초 후에 position을 fixed로 변경
        setTimeout(function() {
            mastheadBefore.style.position = "fixed";
            mastheadBefore.style.transition = "position 1s ease"; // 부드러운 트랜지션 효과 추가
        }, 1000); // 1초 후에 실행
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
               <a href="/" style="color: whitesmoke;">JOIN</a>
            </h1>

            <form id="joinForm" method="post" action="/memberJoin" onsubmit="return formCheck(this)" class="row g-3">
               <div class="joinBox">
                  <input class="form-control" name="mname" type="text" placeholder="Enter Name" data-sb-validations="required,email" />
               </div>
               <div class="joinBox">
                  <input class="form-control" name="mid" id="inputId" type="text" placeholder="Enter Id" data-sb-validations="required,email" />
                  <button class="btn btn-primary" onclick="idCheck(document.getElementById('inputId').value)" id="checkIdBtn" type="button">중복 확인</button>
               </div>
               <div class="checkMsg" id="idCheckMsg"></div>
               <div class="joinBox">
                  <input class="form-control InputPassword" name="mpw" type="password" placeholder="Enter Password" data-sb-validations="required,email" />
               </div>
               <div class="joinBox">
                  <input class="form-control InputPassword" name="mpw2" type="password" placeholder="Re-enter The Password" data-sb-validations="required,email" />
               </div>
               <div class="joinBox">
                  <div id="selectTag">
                     <input type="text" placeholder="Enter Tag" name="mloltag" id="mloltag">
                     <select class="form-select"  onchange="tagSelect(this)">
                         <option value="KR">KR</option>
                         <option value="KR1">KR1</option>
                          <option value="">직접입력</option>
                     </select>
                  </div>
                  <div class="nicknameBox">
                     <input class="form-control" name="mlolname" type="text" placeholder="Enter Nickname" data-sb-validations="required,email" />
                  </div>
               </div>
               <div class="joinBox">
                  <input class="form-control" name="memail" id="inputemail" type="email" placeholder="Enter Email" aria-label="Enter Nickname" data-sb-validations="required,email" />
                  <button class="btn btn-primary" id="sendEmailBtn" onclick="sendEmail(document.getElementById('inputemail'))" type="button">전송</button>
               </div>
               <div class="joinBox">
                  <input class="form-control" name="emailCheckNumber" id="inputEmailCode" type="text" placeholder="Enter the number you received by email" data-sb-validations="required,email" />
                  <button class="btn btn-primary" id="checkEmailBtn" type="button" onclick="checkEmailCode(document.getElementById('inputEmailCode'))">확인</button>
               </div>
               <div id="Submitbtn">
                  <button class="btn btn-primary" type="submit">
                     <i class="fa-solid fa-arrow-right"></i>
                  </button>
               </div>
            </form>
         </div>
      </div>
   </div>
    <script type="text/javascript">
         /* 이메일 도메인 선택 */
         function tagSelect(selVal) {
            document.querySelector('#mloltag').value = selVal.value;
         }
      </script>
   <script type="text/javascript">
                  /* 아이디 중복 확인 */
                  let idChecked = false;
                  function idCheck(inputId){
                     console.log("inputId : "+ inputId);
                     
                     let msgEl = document.querySelector('#idCheckMsg');
                     if (inputId.length != 0){
                        $.ajax({
                           type:"get",
                           url:"/memberIdCheck",
                           data: {"inputId" : inputId},
                           success: function(checkResult){
                              if(checkResult.length > 0){
                                 msgEl.innerText = "중복된 아이디 입니다.";
                               msgEl.style.color = "red";
                                 idChecked = false;
                              } else{
                                 msgEl.innerText = "사용 가능한 아이디 입니다.";
                               msgEl.style.color = "white";
                               idChecked = true;
                              }
                           }
                        })
                     } else{
                        msgEl.innerText = "가입할 아이디를 입력하세요";
                      msgEl.style.color = "red";
                     }
                  }
               </script>

   <script type="text/javascript">
                  /* 이메일 인증 번호 전송 */
                  let sentEmailCode = false;
                  function sendEmail(inputObj){
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
                      } else{
                         emailCheck = true;
                      }
                      
                      
                      // 이메일 형식이 올바르면 인증 번호 전송
                      if(emailCheck == true){
                         $.ajax({
                           type:"post",
                           url:"/sendEmail",
                           data: {"inputEmail" : memail},
                           success: function(result){
                              if(result == "Y"){
                                 alert("인증번호가 전송되었습니다.")
                                 sentEmailCode = true;
                              }else{
                                 alert("인증번호 전송을 실패하였습니다.")
                              }
                           }
                        })
                      }
                  }
                  
                  /* 이메일 인증 번호 확인  */
                  let checkCode = false;
                  function checkEmailCode(inputObj){
                     let inputCode = inputObj.value;
                     console.log("입력한 인증번호 : " + inputCode);
                     
                     if(inputCode == null){
                        alert("인증번호를 입력해주세요");
                     } else{
                        $.ajax({
                           type:"post",
                           url:"/checkEmailCode",
                           data: {"inputCode" : inputCode},
                           success: function(result){
                              if(result == "Y"){
                                 alert("이메일 인증을 성공하였습니다.")
                                 checkCode = true;
                              } else{
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
                  
                  // 이름
                  let inputName =formObj.mname;
                  if(inputName.value == ""){
                     alert("이름을 입력하세요");
                     inputName.focus();
                     return false;
                  }
                  
                  // 아이디
                  let inputId =formObj.mid;
                  if(inputId.value == ""){
                     alert("아이디를 입력하세요");
                     inputId.focus();
                     return false;
                  }
               
                  
                  // 중복 확인 버튼 클릭 여부 + 중복된 아이디
                  if(idChecked == false){
                     alert("아이디 중복 확인을 해주세요")
                     inputId.focus();
                     return false;
                  }
                  
                  
                  // 비밀번호
                  let inputPw =formObj.mpw;
                  if(inputPw.value == ""){
                     alert("비밀번호를 입력하세요");
                     inputPw.focus();
                     return false;
                  }
                  
                  // 비밀번호 재입력
                  let inputPw2 =formObj.mpw2;
                  if(inputPw2.value == ""){
                     alert("비밀번호를 재입력하세요");
                     inputPw2.focus();
                     return false;
                  }
                  
                  // 1차 비밀번호와 재입력 비밀번호 일치/불일치 확인
                  if(inputPw.value != inputPw2.value){
                     alert("재입력한 비밀번호가 일치하지 않습니다");
                     inputPw2.focus();
                     return false;
                  }
                  
                  // 태그
                  let inputTag =formObj.mloltag;
                  if(inputTag.value == ""){
                     alert("태그를 입력하세요");
                     inputTag.focus();
                     return false;
                  }
                  
                  // 닉네임
                  let inputNickname =formObj.mlolname;
                  if(inputNickname.value == ""){
                     alert("닉네임을 입력하세요");
                     inputNickname.focus();
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
                  
   </script>
  
   <!-- Bootstrap core JS-->
   <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>