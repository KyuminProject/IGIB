<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<div class="social-icons">
	<c:choose>
        <c:when test="${sessionScope.loginId == null}">
            <div class="d-flex flex-row flex-lg-column justify-content-center align-items-center h-100 mt-3 mt-lg-0">
                <a class="btn btn-dark m-3" href="/login"><i class="fa-solid fa-right-to-bracket"></i></a>
            </div>
        </c:when>
        <c:when test="${sessionScope.loginId != null}">
            <div class="d-flex flex-row flex-lg-column justify-content-center align-items-center h-100 mt-3 mt-lg-0">
                <a class="btn btn-dark m-3" href="/" onclick="kakao_formCheck(event)"><i class="fa-solid fa-house"></i></a>
				<a class="btn btn-dark m-3" href="/logout" onclick="kakao_formCheck(event)"><i class="fa-solid fa-right-from-bracket"></i></a>
				<a class="btn btn-dark m-3" href="/myinfo" onclick="kakao_formCheck(event)"><i class="fa-solid fa-user"></i></a>
            </div>
        </c:when>
        <c:otherwise>
            <div class="d-flex flex-row flex-lg-column justify-content-center align-items-center h-100 mt-3 mt-lg-0">
                <a class="btn btn-dark m-3" href="/"><i class="fa-solid fa-house"></i></a>
                <a class="btn btn-dark m-3" href="/logout"><i class="fa-solid fa-right-from-bracket"></i></a>
                <a class="btn btn-dark m-3" href="/myinfo"><i class="fa-solid fa-user"></i></a>
            </div>
        </c:otherwise>
    </c:choose>
</div>
<script type="text/javascript">
    var loginState = '${sessionScope.loginState}';
    var loginEmail = '${sessionScope.loginEmail}';
    var loginLolname = '${sessionScope.loginLolName}';
    function kakao_formCheck(event){
        console.log(loginState + " " + loginEmail + " " + loginLolname);
        if(loginState == 'K '){
        	if(loginEmail == '미입력' || loginLolName == '미입력'){
            	alert("이메일과 닉네임은 필수 입력 사항입니다.")
        		event.preventDefault(); // 이벤트의 기본 동작 중단
        		
        	}
        }
    }
</script>