﻿$(document).ready(function () {
   
    if (document.location.pathname === '/Pages/UserPage.aspx') {
        $("#userPageID").css("display", "block")
        $(".modals").css("display", "none")
    }
});



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
//MODAL TOGGLE
$(document).ready(function () {
    function modalClose() {
        if (location.hash == '#openModal') {
            location.hash = '';
        }
    }
    var modal = document.querySelector('#openModal');
    modal.addEventListener('click', function (e) {
        modalClose();
    }, false);

    modal.children[0].addEventListener('click', function (e) {
        e.stopPropagation();
    }, false);

    function modalClose2() {
        if (location.hash == '#openModal2') {
            location.hash = '';
        }
    }
    var modal = document.querySelector('#openModal2');
    modal.addEventListener('click', function (e) {
        modalClose2();
    }, false);

    modal.children[0].addEventListener('click', function (e) {
        e.stopPropagation();
    }, false);
});

$(document).ready(function () {
    ///////////////////////////////////////////////////////////////// //MISSION/EVENTS ANIMATION

    // hide our element on page load
    $('#mission, #events, #calendar').css('opacity', 0);
    $('#mission, #events, #calendar').waypoint(function () {
        $('#mission, #events').addClass('fadeInUp');
        $('#calendar').addClass('rollIn');
        $('#calendar, #events, #mission').css('animation-duration', '1.5s');
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
    $('#mission6, #calcLeft').css('opacity', 0);
    $('#mission6, #calcLeft').waypoint(function () {
        $('#mission6, #calcLeft').addClass('fadeInLeft');
    }, { offset: '75%' });

    $('#mission7').css('opacity', 0);
    $('#mission7').waypoint(function () {
        $('#mission7').addClass('fadeInRight');
    }, { offset: '75%' });
    //////////////////////////////////END WRAP

    $('#eventsHead, #calcHead, #pollutionHead, #homeHead').waypoint(function () {
        $('#eventsHead, #calcHead, #pollutionHead, #homeHead').addClass('fadeInDown').css('display','block')
    }, { offset: '100%' });

    $('#eventsHead, #calcHead, #pollutionHead, #homeHead').css('animation-duration', '1.3s', 'transition', 'ease-out');



    ///////////////////////////////////////////////////////POLLUTION ANIMATION
    $('#pollution1, #pollution2').css('opacity', 0);
    $('#pollution1, #pollution2').waypoint(function () {
        $('#pollution1, #pollution2').addClass('fadeInUp');
    }, { offset: '75%' });
    $('#pollution3, #pollution4').css('opacity', 0);
    $('#pollution3, #pollution4').waypoint(function () {
        $('#pollution3, #pollution4').addClass('fadeInUp');
    }, { offset: '75%' });
    $('#pollution5, #pollution6').css('opacity', 0);
    $('#pollution5, #pollution6').waypoint(function () {
        $('#pollution5, #pollution6').addClass('fadeInUp');
    }, { offset: '75%' });


    $('#calc').css('opacity', 0);
    $('#calc').waypoint(function () {
        $('#calc').addClass('fadeInUp');
    }, { offset: '75%' });

    $('#calc2, #calc4').css('opacity', 0);
    $('#calc2, #calc4').waypoint(function () {
        $('#calc2, #calc4').addClass('fadeInUp');
    }, { offset: '75%' });

    $('#calc3').css('opacity', 0);
    $('#calc3').waypoint(function () {
        $('#calc3').addClass('fadeInUp');
    }, { offset: '75%' });

    $('#solUP').css('opacity', 0);
    $('#solUP').waypoint(function () {
        $('#solUP').addClass('fadeInUp');
    }, { offset: '75%' });

    //User Page Begins
    $(function () {
        $("#accordion").accordion({
            collapsible: true,
            animate: 200

        });
    });

})