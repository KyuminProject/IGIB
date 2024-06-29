
// 스펠 이미지 선택했을 때
document.addEventListener('DOMContentLoaded', function() {
	const images = document.querySelectorAll('.spell_img');
	images.forEach(function(image) {
		image.addEventListener('click', function(event) {
			event.preventDefault(); // 기본 동작 방지 (페이지 전환 방지)

			// 모든 이미지에서 clicked 클래스를 제거
			images.forEach(function(img) {
				img.classList.remove('clicked');
			});
			// 클릭된 이미지에만 clicked 클래스 추가
			image.classList.add('clicked');


			// 스펠 종류 가져오는 법
			const title = image.parentElement.getAttribute('title');
			const spnumber = parseInt(image.parentElement.getAttribute('data-spell-id'), 10);

			console.log(title)
			console.log(spnumber)

			// AJAX 요청 보내기
			$.ajax({
				url: '/tierspell',
				method: 'POST',
				contentType: 'application/x-www-form-urlencoded',
				data: {
					spnumber: spnumber
				},
				success: function(response) {
					const labels = response.tiers;  // "tiers" 리스트를 labels에 할당
					const data = response.counts;   // "counts" 리스트를 data에 할당
					console.log(data)
					console.log(labels)

					const ctx = document.getElementById('myChart');

					// 기존 차트를 파괴하기 전에 window.myChart가 Chart.js 인스턴스인지 확인
					if (window.myChart instanceof Chart) {
						window.myChart.destroy();
					}




					// Y축 최대값 설정
					let yAxisMin, yAxisMax;
					if (Math.max(...data) >= 80) {
						yAxisMin = 80;
						yAxisMax = 100;
					} else {
						yAxisMin = 0;
						yAxisMax = 40;
					}




					// Chart.js를 사용하여 차트를 그리는 함수
					window.myChart = new Chart(ctx, {
						type: 'bar',
						data: {
							labels: labels,
							datasets: [{
								label: "티어별 " + title + " 평균 사용 횟수",
								data: data,
								backgroundColor: [
									'rgba(169, 169, 169, 1)',  // IRON - 투명도 0 (완전 불투명)
									'rgba(205, 127, 50, 1)',   // BRONZE - 투명도 0 (완전 불투명)
									'rgba(192, 192, 192, 1)',  // SILVER - 투명도 0 (완전 불투명)
									'rgba(255, 223, 0, 1)',    // GOLD - 투명도 0 (완전 불투명, 금색)
									'rgba(0, 255, 255, 1)',    // PLATINUM - 투명도 0 (완전 불투명)
									'rgba(0, 128, 0, 1)',      // EMERALD - 투명도 0 (완전 불투명)
									'rgba(0, 191, 255, 1)',    // DIAMOND - 투명도 0 (밝은 푸른 계열))
									'rgba(128, 0, 128, 1)',    // MASTER - 투명도 0 (완전 불투명)
									'rgba(255, 69, 0, 1)',     // GRANDMASTER - 투명도 0 (완전 불투명)
									'rgba(0, 0, 255, 1)'       // CHALLENGER - 투명도 0 (푸른 불꽃)
								],
								borderColor: [
									'rgba(169, 169, 169, 1)',  // IRON
									'rgba(205, 127, 50, 1)',   // BRONZE
									'rgba(192, 192, 192, 1)',  // SILVER
									'rgba(255, 223, 0, 1)',    // GOLD (금색)
									'rgba(0, 255, 255, 1)',    // PLATINUM
									'rgba(0, 128, 0, 1)',      // EMERALD
									'rgba(0, 191, 255, 1)',    // DIAMOND - 투명도 0 (밝은 푸른 계열)
									'rgba(128, 0, 128, 1)',    // MASTER
									'rgba(255, 69, 0, 1)',     // GRANDMASTER
									'rgba(0, 0, 255, 1)'       // CHALLENGER (푸른 불꽃)
								],
								borderWidth: 1
							}]
						},
						options: {
							scales: {
								x: {
									ticks: {
										color: '#FFFFFF', // 레이블 색상
										font: {
											size: 14, // 레이블 폰트 크기
											weight: 'bold', // 레이블 폰트 굵기
										}
									}
								},
								y: {
									beginAtZero: true,
									min: yAxisMin, // Y축 최소값
									max: yAxisMax, // Y축 최대값
									ticks: {
										color: '#FFFFFF', // 레이블 색상
										font: {
											size: 14, // 레이블 폰트 크기
											weight: 'bold', // 레이블 폰트 굵기
										}
									}
								}
							},
							plugins: {
								legend: {
									labels: {
										color: '#FFFFFF', // 범례 레이블 색상
										font: {
											size: 16, // 범례 레이블 폰트 크기
											weight: 'bold', // 범례 레이블 폰트 굵기
										}
									}
								}
							}
						}
					});
				},
				error: function() {
					$('#winRateResult').html('<div>승률을 가져오는 중 오류가 발생했습니다.</div>');
				}
			});
		});
	});
});