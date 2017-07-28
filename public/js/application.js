console.log('welcome');

$(document).ready(function() {

  $('#add-answer-button').click(function() {
    console.log('roller skatin baby');
    $('#add-answer-button').hide();
    $('#new-answer-form').show();
  })

  $('#new-answer-form').on("submit", function(event) {
    event.preventDefault();
    console.log('fingertrap');
    var answer = $(this).find('#answer').val();

    // $.ajax({
    //   url: "questions/:id/show",
    //   method: "POST",
    // })
    // .done(function())
  })

})
