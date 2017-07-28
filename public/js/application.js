$(document).ready(function() {
  $('#add-question-button').on("click", function(){
    console.log("This button has been clicked");
    var $button = $(this)
    $.ajax({
      url: '/questions/new',
      method: 'get'
    }).done(function(response){
      $('body').append(response)
    })
  });


});