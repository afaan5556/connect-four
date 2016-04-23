$(document).ready(function() {
  // This is called after the document has loaded in its entirety
  // This guarantees that any elements we bind to will exist on the page
  // when we try to bind to them
$('.modal-trigger').leanModal();
  // See: http://docs.jquery.com/Tutorials:Introducing_$(document).ready()

$('#postForm').submit(function(event) {
  event.preventDefault();
  $.ajax({
    url: $(this).attr('action'),
    data: $(this).serialize(),
    type: $(this).attr('method'),
  }).done(function(data){
    $('ul').append(data)
  })

})
});
