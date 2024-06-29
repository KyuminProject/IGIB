// 용 이미지 선택했을 때
document.addEventListener('DOMContentLoaded', function() {
    const images = document.querySelectorAll('.tposition_img');
    images.forEach(function(image) {
        image.addEventListener('click', function(event) {
            event.preventDefault(); // 기본 동작 방지 (페이지 전환 방지)

            // 모든 이미지에서 clicked 클래스를 제거
            images.forEach(function(img) {
                img.classList.remove('clicked');
            });
            // 클릭된 이미지에만 clicked 클래스 추가
            image.classList.add('clicked');

            // position 값 가져오기 
            const position = image.parentElement.getAttribute('id');
            const title = image.parentElement.getAttribute('title');

            console.log(position)
            console.log(title)
            // AJAX 요청 보내기
            $.ajax({
                url: '/roamingkill',
                method: 'POST',
                contentType: 'application/x-www-form-urlencoded',
                data: {
                    ptype: position
                },
                success: function(response) {

                    $('#roamingkillbar').html(
                        `<span>정글 킬</span> 
                         <div class="progress-bar" data-percent="${response[0]}"> 
                            <div class="fill"></div>
                            <div class="percent-label"></div> 
                         </div>
                         <span>${title} 킬</span> 
                         <div class="progress-bar" data-percent="${response[1]}"> 
                            <div class="fill"></div>
                            <div class="percent-label"></div>  
                         </div>`
                    );

                    // 퍼센트 바 업데이트
                    updateProgressBars();
                },
                error: function() {
                    $('#roamingkillbar').html('<div>Error occurred while fetching win rate.</div>');
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