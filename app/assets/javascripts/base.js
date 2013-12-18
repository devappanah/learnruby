$(document).ready(function(){
  $('div#advanced-fields').hide()
  $('div#advanced a').on('click', function(event){
    event.preventDefault();
    $(this).parent().find('div#advanced-fields').slideToggle();
  });
});