
document.addEventListener("DOMContentLoaded", function() {
	var masthead = document.querySelector(".masthead");
	setTimeout(function() {
		masthead.classList.add("fixed");
	}, 1000);
});

/*
document.addEventListener("DOMContentLoaded", function() {
	var mastheadBefore = document.querySelector(".masthead:before");
	setTimeout(function() {
		mastheadBefore.style.position = "fixed";
		mastheadBefore.style.transition = "position 1s ease";
	}, 1000);
});
*/