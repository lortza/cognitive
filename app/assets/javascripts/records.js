document.addEventListener("turbolinks:change", function() {

  $('p.step1-link').click(function(event){
    event.preventDefault();
    $('#step0').css("display", "none");
    $('#step1').css("display", "block");
    $('.progressbar').css("display", "block");
    $('#step2').css("display", "none");
  });

  $('p.step2-link').click(function(event){
    event.preventDefault();
    $('#step1').css("display", "none");
    $('#step2').css("display", "block");
    $('.progress-block').css("width", "25%");
    $('#step3').css("display", "none");
  });

  $('p.step3-link').click(function(event){
    event.preventDefault();
    $('#step2').css("display", "none");
    $('#step3').css("display", "block");
    $('.progress-block').css("width", "45%");
    $('#step4').css("display", "none");
  });

  $('p.step4-link').click(function(event){
    event.preventDefault();
    $('#step3').css("display", "none");
    $('#step4').css("display", "block");
    $('.progress-block').css("width", "65%");
    $('#step5').css("display", "none");
  });

  $('p.step5-link').click(function(event){
    event.preventDefault();
    $('#step4').css("display", "none");
    $('#step5').css("display", "block");
    $('.progress-block').css("width", "85%");
    $('#step6').css("display", "none");
  });

  $('p.step6-link').click(function(event){
    event.preventDefault();
    $('#step5').css("display", "none");
    $('#step6').css("display", "block");
    $('.progress-block').css("width", "99%");
  });

}); // close turbolinks workaround
