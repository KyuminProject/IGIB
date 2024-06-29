<div class="social-icons">
	<c:choose>
        <c:when test="${sessionScope.loginId == null}">
            <div class="d-flex flex-row flex-lg-column justify-content-center align-items-center h-100 mt-3 mt-lg-0">
                <a class="btn btn-dark m-3" href="/login"><i class="fa-solid fa-right-to-bracket"></i></a>
            </div>
        </c:when>
        <c:when test="${sessionScope.loginId != null}">
            <div class="d-flex flex-row flex-lg-column justify-content-center align-items-center h-100 mt-3 mt-lg-0">
                <a class="btn btn-dark m-3" href="/logout"><i class="fa-solid fa-right-from-bracket"></i></a>
                <a class="btn btn-dark m-3" href="/myinfo"><i class="fa-solid fa-user"></i></a>
            </div>
        </c:when>
        <c:otherwise>
            <div class="d-flex flex-row flex-lg-column justify-content-center align-items-center h-100 mt-3 mt-lg-0">
                <a class="btn btn-dark m-3" href="/logout"><i class="fa-solid fa-right-from-bracket"></i></a>
                <a class="btn btn-dark m-3" href="/myinfo"><i class="fa-solid fa-user"></i></a>
            </div>
        </c:otherwise>
    </c:choose>
</div>