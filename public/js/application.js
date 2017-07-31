$(document).ready(function() {

  $('.answers').on("click", "#add-answer-comment", function(event){
    event.preventDefault();

   var $addCButton = $(this);
   $addCButton.toggle()
   $('#comment-form').toggle()

   $.ajax({
     url: '/comments/new',
     type: 'GET',
   })
   .done(function(response) {
     $addCButton.after(response);
   })
  });

  $('.answers').on("click", "#comment-button", function(event){
    event.preventDefault();
    var $submitComment = $(this);
    var data = $submitComment.closest('form').serialize();
    var formUrl = $submitComment.closest('form').attr('action');
    var formMethod = $submitComment.closest('form').attr('method');


    $('#comment-form').toggle()
    $('#add-answer-comment').toggle();

    $.ajax({
      url: formUrl,
      type: formMethod,
      data: data,
    })
    .done(function(response) {
      $submitComment.parent().next().append(response);
    })
  });

  $(".question").on("click", "#add-question-comment-button", function(event){
      event.preventDefault();

      var $questionComment = $(this);
      $questionComment.toggle()
      $('#comment-form').toggle()

      $.ajax({
        url: '/comments/new',
        type: 'GET'

      })
      .done(function(response) {
        $questionComment.after(response);
      })
    })

    $('.question').on("click", "#comment-button", function(event){
    event.preventDefault();
    var $submitComment = $(this);
    var data = $submitComment.closest('form').serialize();
    var formUrl = $submitComment.closest('form').attr('action');
    var formMethod = $submitComment.closest('form').attr('method');


    $('#comment-form').toggle()
    $('#add-question-comment-button').toggle();

    $.ajax({
      url: formUrl,
      type: formMethod,
      data: data,
    })
    .done(function(response) {
      console.log(response);
      $('.question-comments').append(response);
    })
  });



})


