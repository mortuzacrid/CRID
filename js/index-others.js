jQuery(document).ready(function($){
'use strict';
    jQuery('body').backstretch([
        "images/bg/bg1.jpg",
        "images/bg/bg2.jpg"
    ], {duration: 5000, fade: 500, centeredY: true });
    var preloader = $('.preloader');
    $(window).load(function(){
        preloader.remove();
    });
});
new TypeIt('#replaceStrings', {
  strings: ["Bring us your prototype", "Improvise it at our lab","We will fund it",
  "We will help you to patent it","Market it","Be a successful Innovator"],
  speed: 100,
  breakLines: false,
  waitUntilVisible: true
}).go();

$('#main-slider .carousel-content').flexVerticalCenter({ cssAttribute: 'padding-top' });
