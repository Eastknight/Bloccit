// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require bootstrap
//= require_tree .

var _easy_data = (function (){

  var _ed_url = "http://localhost:3000/events.json";
  var _ed_authToken = "fc103e77be76da5b12cd4508c2baa8a511230fbe466ca9f89c955f4b2db6ba84"

  return function (_event_name){
    var _ed_event = {
      name:        _event_name,
      auth_token:  _ed_authToken 
    };
    var _ed_request = new XMLHttpRequest();
    _ed_request.open("POST", _ed_url, true);
    _ed_request.setRequestHeader('Content-Type', 'application/json');
    _ed_request.onreadystatechange = function() {
      // this function runs when the Ajax request changes state.
      // https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest
    }; 
    _ed_request.send(JSON.stringify(_ed_event));
  };
}());

$('.sign-up').click(_easy_data("Sign up Button Clicked"))
$('#topic-tag').click(_easy_data("Topic Tag Clicked"))