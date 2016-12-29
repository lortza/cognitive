document.addEventListener("turbolinks:load", function() {

  $('.progressbar').css("display", "block");

  $('p.step1-link').click(function(event){
    event.preventDefault();
    $('.step').css("display", "none");
    $('#step1').css("display", "block");
    $('.progress-block').css("width", "5%");
  });

  $('p.step2-link').click(function(event){
    event.preventDefault();
    $('#step1').css("display", "none");
    $('.step').css("display", "none");
    $('#step2').css("display", "block");
    $('.progress-block').css("width", "25%");
  });

  $('p.step3-link').click(function(event){
    event.preventDefault();
    $('.step').css("display", "none");
    $('#step3').css("display", "block");
    $('.progress-block').css("width", "50%");
  });

  $('p.step4-link').click(function(event){
    event.preventDefault();
    $('.step').css("display", "none");
    $('#step4').css("display", "block");
    $('.progress-block').css("width", "66%");
  });

  $('p.step5-link').click(function(event){
    event.preventDefault();
    $('.step').css("display", "none");
    $('#step5').css("display", "block");
    $('.progress-block').css("width", "83%");
  });

  $('p.step6-link').click(function(event){
    event.preventDefault();
    $('.step').css("display", "none");
    $('#step6').css("display", "block");
    $('.progress-block').css("width", "99%");
  });

}); // close turbolinks workaround
