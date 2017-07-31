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

});