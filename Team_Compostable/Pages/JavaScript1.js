//$(document).ready(function () {
//    alert("hi!");
//});

//$(".midArrow").hover(function () {
//    $(".midArrow").effect("bounce", { times: 4, distance: 200 }, 400);
//});

$(window).scroll(function () {
    if ($(this).scrollTop() > 1) {
        $(".PrimaryNavigation").addClass("sticky");
        $(".PrimaryNavigation a").css("color", "white");
    }
    else {
        $(".PrimaryNavigation").removeClass("sticky");
        $(".PrimaryNavigation a").css("color", "black");
    }
});
$(document).ready(function(){
    $(".ClickMe").click(function () {
        alert("hi!");
    });
});

$(document).ready(function () {

    // hide our element on page load
    $('#mission').css('opacity', 0);
    $('#mission').waypoint(function () {
        $('#mission').addClass('fadeInUp');
    }, { offset: '50%' });

    // hide our element on page load
    $('#eventsRightID').css('opacity', 0);
    $('#eventsRightID').waypoint(function() {
        $('#eventsRightID').addClass('fadeInRight');
    }, { offset: '100%' });
    $('#eventsLeftID').css('opacity', 0);
    $('#eventsLeftID').waypoint(function () {
        $('#eventsLeftID').addClass('fadeInLeft');
    }, { offset: '100%' });

    $('#eventsHead, #calcHead').css('opacity', 0);
    $('#eventsHead, #calcHead').waypoint(function () {
        $('#eventsHead, #calcHead').addClass('fadeIn');
    }, { offset: '100%' });
 
});