$(document).ready(function() {

  $('.answers').on( "click", '#add-answer-comment' ,function (event) {
    event.preventDefault;

    var $answerComment = $(this);

    console.log(this)

    $.ajax({
      url: '/comments',
      type: "POST",

    })
    .done(function(response) {
      $answerComment.after().html(response)
      console.log("success");
    })

  });



});
