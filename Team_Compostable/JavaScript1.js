//$(document).ready(function () {
//    alert("hi!");
//});

$(".midArrow").hover(function () {
    $(".midArrow").effect("bounce", { times: 4, distance: 200 }, 400);
});

$(document).scroll(function () {
    if ($(this).scrollTop() > 1) {
        $(".PrimaryNavigation").addClass("sticky");
        $(".PrimaryNavigation a").css("color", "white");
    }
    else {
        $(".PrimaryNavigation").removeClass("sticky");
        $(".PrimaryNavigation a").css("color", "black");
    }
});