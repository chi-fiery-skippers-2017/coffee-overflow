$(document).ready(function() {
  $('#add-question-button').on("click", function(){
    // console.log("This button has been clicked");
    $button = this
    $.ajax({
      url: '/questions/new',
      method: 'get'
    }).done(function(response){
      $($button).hide();
      $('body').append(response)
    })
  });

  $('body').on('submit', '#new-question-form', function(){
      event.preventDefault();
      // console.log($(this));
      var $form = $(this);
      var $formUrl = $(this).attr('action')
      var data = $form.serialize();
      // console.log($formUrl);
      // console.log(data)
      $.ajax({
        method: 'post',
        url: $formUrl,
        data: data
      })
      .done(function(response){
        // console.log(response);
        $form.hide();
        $('#question-list').append(response);
      });

  });

  // console.log($('#question-list'));

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



});
