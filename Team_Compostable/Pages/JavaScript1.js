//$(document).ready(function () {
//    alert("hi!");
//});

//$(".midArrow").hover(function () {
//    $(".midArrow").effect("bounce", { times: 4, distance: 200 }, 400);
//});

$(window).scroll(function () {
    if ($(this).scrollTop() > 1) {
        $(".PrimaryNavigation").addClass("sticky");
    }
    else {
        $(".PrimaryNavigation").removeClass("sticky");
    }
});
$(document).ready(function(){
    $(".ClickMe").click(function () {
        alert("hi!");
    });
});

$(document).ready(function () {
   ///////////////////////////////////////////////////////////////// //MISSION ANIMATION

    // hide our element on page load
    $('#mission').css('opacity', 0);
    $('#mission').waypoint(function () {
        $('#mission').addClass('fadeInUp');
    }, { offset: '70%' });


    // hide our element on page load 
   ////////////////////////////////////// WRAP
    //////WRAP1
    $('#eventsLeftID, #mission2').css('opacity', 0);
    $('#eventsLeftID, #mission2').waypoint(function () {
        $('#eventsLeftID, #mission2').addClass('fadeInLeft');
    }, { offset: '75%' });
    $('#eventsRightID, #mission3').css('opacity', 0);
    $('#eventsRightID, #mission3').waypoint(function () {
        $('#eventsRightID, #mission3').addClass('fadeInRight');
    }, { offset: '75%' });
    // WRAP2
    $('#mission4').css('opacity', 0);
    $('#mission4').waypoint(function () {
        $('#mission4').addClass('fadeInLeft');
    }, { offset: '75%' });

    $('#mission5').css('opacity', 0);
    $('#mission5').waypoint(function () {
        $('#mission5').addClass('fadeInRight');
    }, { offset: '75%' });

    // WRAP3
    $('#mission6').css('opacity', 0);
    $('#mission6').waypoint(function () {
        $('#mission6').addClass('fadeInLeft');
    }, { offset: '75%' });

    $('#mission7').css('opacity', 0);
    $('#mission7').waypoint(function () {
        $('#mission7').addClass('fadeInRight');
    }, { offset: '75%' });
     //////////////////////////////////END WRAP

    $('#eventsHead, #calcHead, #pollutionHead, #homeHead').css('opacity', 0);
    $('#eventsHead, #calcHead, #pollutionHead, #homeHead').waypoint(function () {
        $('#eventsHead, #calcHead, #pollutionHead, #homeHead').addClass('fadeIn');
    }, { offset: '100%' });
 


    ///////////////////////////////////////////////////////POLLUTION ANIMATION
    $('#pollution1, #pollution2').css('opacity', 0);
    $('#pollution1, #pollution2').waypoint(function () {
        $('#pollution1, #pollution2').addClass('rotateInUpLeft');
    }, { offset: '75%' });
    $('#pollution3, #pollution4').css('opacity', 0);
    $('#pollution3, #pollution4').waypoint(function () {
        $('#pollution3, #pollution4').addClass('rotateInUpLeft');
    }, { offset: '75%' });
    $('#pollution5, #pollution6').css('opacity', 0);
    $('#pollution5, #pollution6').waypoint(function () {
        $('#pollution5, #pollution6').addClass('rotateInUpLeft');
    }, { offset: '75%' });

});