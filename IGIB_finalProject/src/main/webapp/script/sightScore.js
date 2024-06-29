document.addEventListener('DOMContentLoaded', function() {
	const images = document.querySelectorAll('.ward_img');
	images.forEach(function(image) {
		image.addEventListener('click', function(event) {
			event.preventDefault(); // 기본 동작 방지 (페이지 전환 방지)

			// 모든 이미지에서 clicked 클래스를 제거
			images.forEach(function(img) {
				img.classList.remove('clicked');
			});
			// 클릭된 이미지에만 clicked 클래스 추가
			image.classList.add('clicked');

			// 와드 종류 가져오기
			const wardType = image.parentElement.getAttribute('id');
			console.log(wardType);

			// AJAX 요청 보내기
			$.ajax({
				url: '/sightScore',
				method: 'POST',
				contentType: 'application/x-www-form-urlencoded',
				data: {
					wardType: wardType
				},
				success: function(response) {
					const labels = response.tiers;  // "tiers" 리스트를 labels에 할당
					const tierCounts = response.tierCounts;   // "tierCounts" 리스트를 tierCounts에 할당
					const averageScores = response.averageScores; // "averageScores" 리스트를 averageScores에 할당

					console.log(labels);
					console.log(tierCounts);
					console.log(averageScores);
					
					// wardType 값을 텍스트로 변환
					let wardTypeText = '';
					if (wardType === 'YELLOW_TRINKET') {
						wardTypeText = '투명 와드';
					} else if (wardType === 'BLUE_TRINKET') {
						wardTypeText = '망원형 개조';
					} else if (wardType === 'CONTROL_WARD') {
						wardTypeText = '제어 와드';
					} else if (wardType === 'SIGHT_WARD') {
						wardTypeText = '경계의 와드석';
					}

					const lineCtx = document.getElementById('myLineChart').getContext('2d');
					const barCtx = document.getElementById('myBarChart').getContext('2d');

					// 기존 차트를 파괴하기 전에 window.myLineChart와 window.myBarChart가 Chart.js 인스턴스인지 확인
					if (window.myLineChart instanceof Chart) {
						window.myLineChart.destroy();
					}
					if (window.myBarChart instanceof Chart) {
						window.myBarChart.destroy();
					}

					// Line Chart
					window.myLineChart = new Chart(lineCtx, {
						type: 'line',  // bar를 line으로 변경
						data: {
							labels: labels,
							datasets: [{
								label: wardTypeText + " 평균 사용 횟수",
								data: tierCounts,
								backgroundColor: 'rgba(0, 191, 255, 1)',  // DIAMOND - 투명도 0 (밝은 푸른 계열)
								borderColor: 'rgba(0, 191, 255, 1)',  // DIAMOND - 투명도 0 (밝은 푸른 계열)
								borderWidth: 2,
								fill: false,
								tension: 0.1
							}]
						},
						options: {
							maintainAspectRatio: false, // 높이 조정을 위해 비율 유지 해제
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

					// Bar Chart
					window.myBarChart = new Chart(barCtx, {
						type: 'bar',
						data: {
							labels: labels,
							datasets: [{
								label: wardTypeText + " 사용시 평균 시야 점수",
								data: averageScores,
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
							maintainAspectRatio: false, // 높이 조정을 위해 비율 유지 해제
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
									max: 60, // y축 최대값 설정
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