<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<div class="menu" onmouseover="showSubmenu()" onmouseout="hideSubmenu()" style="margin: 30px 30px">
	<ul>

		<li><span class="menuspan" style="color: whitesmoke;">승률</span>
			<div class="submenu" style="z-index: 10; background-color: rgba(0, 0, 0, 0.7);">
				<a href="/laneWinning">라인별 궁합 승률</a>
				<a href="/searchfriend">내 친구와의 승률</a>
				<a href="/dragonWinning">용별 승률</a>
				<a href="/hordeVsDragon">공허 vs 용</a>
			</div></li>

		<li><span class="menuspan" style="color: whitesmoke;">티어 올리기</span>
			<div class="submenu" style="z-index: 10; background-color: rgba(0, 0, 0, 0.7);">
				<a href="/champRecommend">챔피언 추천</a>
				<a href="/tierspell">티어별 스펠 사용횟수</a>
				<a href="/sightScore">티어별 와드 사용개수 or 시야점수</a>
				<a href="/roamingkill">로밍 킬) 정글 vs 라인챔</a>
			</div></li>

		<li><span class="menuspan" style="color: whitesmoke;">롤 정보</span>
			<div class="submenu" style="z-index: 10; background-color: rgba(0, 0, 0, 0.7);">
				<a href="/champions">챔피언 정보</a>
				<a href="/itemSynergy">아이템별 상성 선택률</a>
				<a href="/minuteGold">라인별 분당 골드 및 분당 CS</a>
			</div></li>

		<li><span class="menuspan" style="color: whitesmoke;">나의 롤 정보</span>
			<div class="submenu" style="z-index: 10; background-color: rgba(0, 0, 0, 0.7);">
				<a href="/ban">밴 추천</a>
				<a href="/firstBlood">퍼블 속도 및 라인별 퍼블 빈도</a>
				<a href="/firstKillTime">라인별 첫 킬 시간 (퍼블)</a>
			</div></li>
	</ul>
</div>