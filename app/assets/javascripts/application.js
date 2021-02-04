// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require underscore
//= require gmaps/google
//= require jquery3
//= require popper
//= require bootstrap-sprockets
//= require rails-ujs
//= require activestorage
//= require jquery.raty.js

/* global $*/

$(function () {
  $(window).scroll(function () {
    $(".effect-fade").each(function () {
      var elemPos = $(this).offset().top; /* 要素の位置を取得 */
      var scroll = $(window).scrollTop(); /* スクロール位置を取得 */
      var windowHeight = $(window).height(); /* 画面幅を取得（画面の下側に入ったときに動作させるため） */
      if (scroll > elemPos - windowHeight) {
        /* 要素位置までスクロール出来たときに動作する */
        $(this).addClass("effect-scroll");
      }else{
        $(this).removeClass("effect-scroll");
      }
    });
  });
});

function hamburger() {
  document.getElementById('line1').classList.toggle('line_1');
  document.getElementById('line2').classList.toggle('line_2');
  document.getElementById('line3').classList.toggle('line_3');
  document.getElementById('nav').classList.toggle('in');
}
document.getElementById('hamburger').addEventListener('click' , function () {
  hamburger();
} );
