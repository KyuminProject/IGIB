// 용 이미지 선택했을 때
document.addEventListener('DOMContentLoaded', function() {
	const images = document.querySelectorAll('.dragon_img');
	images.forEach(function(image) {
		image.addEventListener('click', function(event) {
			event.preventDefault(); // 기본 동작 방지 (페이지 전환 방지)

			// 모든 이미지에서 clicked 클래스를 제거
			images.forEach(function(img) {
				img.classList.remove('clicked');
			});
			// 클릭된 이미지에만 clicked 클래스 추가
			image.classList.add('clicked');

			// 드래곤 종류 가져오기
			const dragonType = image.parentElement.getAttribute('id');
			console.log(dragonType)

			// AJAX 요청 보내기
			$.ajax({
				url: '/dragonWinning',
				method: 'POST',
				contentType: 'application/x-www-form-urlencoded',
				data: {
					dtype: dragonType
				},
				success: function(response) {
					const winRateBlue = response.dwResultBlue;
					const winRateRed = response.dwResultRed;

					$('#winRateResult').html(
						'<span>블루팀</span> <div class="progress-bar" data-percent="${winRateBlue}"> <div class="fill"></div><div class="percent-label"></div> </div>'
						+ ' <span>레드팀</span> <div class="progress-bar" data-percent="${winRateRed}"> <div class="fill"></div><div class="percent-label"></div>  </div>');

					// 퍼센트 바 업데이트
					const progressBars = document.querySelectorAll(".progress-bar");
					progressBars[0].setAttribute("data-percent", winRateBlue);
					progressBars[1].setAttribute("data-percent", winRateRed);
					updateProgressBars();
				},
				error: function() {
					$('#winRateResult').html('<div>Error occurred while fetching win rate.</div>');
				}
			});
		});
	});

	// 퍼센트 바 업데이트 함수
	function updateProgressBars() {
		const progressBars = document.querySelectorAll(".progress-bar");

		progressBars.forEach(function(progressBar) {
			const fill = progressBar.querySelector(".fill");
			const percentLabel = progressBar.querySelector(".percent-label");
			const percent = progressBar.getAttribute("data-percent");

			fill.style.width = percent + "%"; // 바의 너비 설정
			percentLabel.textContent = "승률 : " + percent + "%"; // 퍼센트 값 설정
		});
	}
});




