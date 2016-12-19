/*=============================================================
    Authour URI: www.binarytheme.com
    License: Commons Attribution 3.0

    http://creativecommons.org/licenses/by/3.0/

    100% To use For Personal And Commercial Use.
    IN EXCHANGE JUST GIVE US CREDITS AND TELL YOUR FRIENDS ABOUT US
   
    ========================================================  */


(function ($) {
    "use strict";
    var mainApp = {

        main_fun: function () {
            /*====================================
             CUSTOM LINKS SCROLLING FUNCTION 
            ======================================*/

            $('a[href*=#]').click(function () {
                if (location.pathname.replace(/^\//, '') == this.pathname.replace(/^\//, '')
               && location.hostname == this.hostname) {
                    var $target = $(this.hash);
                    $target = $target.length && $target
                    || $('[name=' + this.hash.slice(1) + ']');
                    if ($target.length) {
                        var targetOffset = $target.offset().top;
                        $('html,body')
                        .animate({ scrollTop: targetOffset }, 800); //set scroll speed here
                        return false;
                    }
                }
            });
            /*====================================
            VAGAS SLIDESHOW SCRIPTS
            ======================================*/
            $(function () {
                $.vegas('slideshow', {
                    backgrounds: [
                      { src: 'assets/img/4.jpg', fade: 1000, delay: 9000 }, //CHANGE THESE IMAGES WITH YOUR ORIGINAL IMAGES
                      { src: 'assets/img/5.jpg', fade: 1000, delay: 9000 }, //THESE IMAGES ARE FOR DEMO PURPOSE ONLY YOU, CAN NOT USE THEM WITHOUT AUTHORS PERMISSION
                       { src: 'assets/img/6.jpg', fade: 1000, delay: 9000 }, 
                     
                    ]
                })('overlay', {
                    /** SLIDESHOW OVERLAY IMAGE **/
                    src: 'assets/plugins/vegas/overlays/01.png' // THERE ARE TOTAL 01 TO 15 .png IMAGES AT THE PATH GIVEN, WHICH YOU CAN USE HERE
                });

            });

            /*====================================
                NAV SCRIPTS
            ======================================*/
            $(window).bind('scroll', function () {
                var navHeight = $(window).height() -50;
                if ($(window).scrollTop() > navHeight) {
                    $('nav').addClass('fixed');
                }
                else {
                    $('nav').removeClass('fixed');
                }
            });

            /*====================================
               WRITE YOUR SCRIPTS BELOW 
           ======================================*/
           

          /*====================================
               WRITE YOUR SCRIPTS BELOW 
           ======================================*/
        },

        initialization: function () {
            mainApp.main_fun();

        }

    }
    // Initializing ///

    $(document).ready(function () {
        mainApp.main_fun();
    });

}(jQuery));


$(function(){
            
                  var $elementList = $('#toSearchFor').find('tr');
                  $('#searchInput').keyup(function(eve){
                          searchString=$(this).val().toLowerCase();
                  searchArray=searchString.split(' ');
                  var len = searchArray.length;
                  $elementList.each(function(index,elem){
                        $eleli = $(elem)
                        $eleli.removeClass('hideThisLine');
                        var oneLine = $eleli.text().toLowerCase()
                        match = true,
                        sal = len;
                        while(sal--){
                          if( oneLine.indexOf( searchArray[sal] ) == -1 ){
                            match = false;
                          }
                        }
                        if(!match){
                          //console.log('this one is gets hidden',searchString);
                          $eleli.addClass('hideThisLine');
                        }
                      });
                      $('.dontShow').removeClass('dontShow');
                      $('.hideThisLine').addClass('dontShow');
                    });
                  $('#clearSearch').click(function (e){
                    $('#cBuscador').val('').keyup();
                  });
           }
            );

//quiz//



    function ayantoggle(){
        $(".forgot").slideToggle('slow');
    }
     function ayantogglequiz(){
        $(".forgotquiz").slideToggle('slow');
    }

    /*check*/
$(function(){
    var demoApp = angular.module('demoApp',[])
    .controller( "RegisterCtrl",['$scope', function($scope) {
        $scope.success=false;
        $scope.register = function(){
            $scope.success=true;
        }
    }]);
})
$(function(){
    var demoApp1 = angular.module('demoApp1',[])
    .controller( "RegisterCtrl",['$scope', function($scope) {
        $scope.success=false;
        $scope.register = function(){
            $scope.success=true;
        }
    }]);
})
     ;
      
function checkPass()
{
    //Store the password field objects into variables ...
    var pass1 = document.getElementById('pass1');
    var pass2 = document.getElementById('pass2');
    //Store the Confimation Message Object ...
    var message = document.getElementById('confirmMessage');
    //Set the colors we will be using ...
    var goodColor = "#66cc66";
    var badColor = "#ff6666";
    //Compare the values in the password field 
    //and the confirmation field
    if(pass1.value == pass2.value){
        //The passwords match. 
        //Set the color to the good color and inform
        //the user that they have entered the correct password 
        pass2.style.backgroundColor = goodColor;
        message.style.color = goodColor;
        message.innerHTML = "Trùng khớp!"
    }else{
        //The passwords do not match.
        //Set the color to the bad color and
        //notify the user.
        pass2.style.backgroundColor = badColor;
        message.style.color = badColor;
        message.innerHTML = "Không khớp!"
    }
}  

$('form input[name="email"]').blur(function () {
    var email = $(this).val();
var re = /^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/igm;
if (re.test(email)) {
    $('.msg').hide();
    $('.success').show();
} else {
    $('.msg').hide();
    $('.error').show();
}

});
