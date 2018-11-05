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
//= require rails-ujs
//= require activestorage
//= require turbolinks
//= require jquery
//= require_tree .

//Show Page Next Function
$(document).ready(function() {
$(function () {
  $(".js-next").on("click", function(event) {
    event.preventDefault();
    var nextId = parseInt($(".js-next").attr("data-id")) + 1;
    $.get("/rockets/" + nextId + ".json", function(data) {
      var rocket = data;
      $(".rocketName").text(rocket["name"]);
      $(".rocketSpeed").text(rocket["top_speed"]);
      $(".rocketCapacity").text(rocket["capcity"]);
      $(".rocketPilot").text(rocket["pilot"]["last_name"]);
      // re-set the id to current on the link
      $(".js-next").attr("data-id", nextId);
    });
  });
});
});

//New Page dynamic submission
$(document).ready(function() {
$(function () {
  $('form').submit(function(event) {
    event.preventDefault();

    var values = $(this).serialize();
    var posting = $.post('/rockets', values);

    posting.done(function(data){
      var rocket = data;
      $("#rocketName").text(rocket["name"]);
      $("#rocketSpeed").text(rocket["top_speed"]);
      $(".rocketCapacity").text(rocket["capcity"]);
      $("#rocketPilot").text(rocket["pilot"]["last_name"]);
    });
  });
});
});

//For Rocket Index Page
