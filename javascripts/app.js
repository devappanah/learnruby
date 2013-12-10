// $(document).ready(function(){
//   $('div.post h2').on('click', function(event){
//     event.preventDefault();
//     $(this).parent().find('p.blue').slideToggle();
//   });
//   $('p#red').on('mouseover', function(event){
//     event.preventDefault();

//     if ($(this).css('color') == 'rgb(255, 0, 0)'){ 
//       $(this).css('color', 'blue');
//     } 
//     else if ($(this).css('color') == 'rgb(0, 0, 255)') { 
//       $(this).css('color','green');
//     } 
//     else if ($(this).css('color') == 'rgb(0, 128, 0)') { 
//       $(this).css('color','yellow');
//     }
//   });

//   // $('p.blue').on('click', function(event){
//   //   event.preventDefault();
//   //   $(this).slideUp('slow')
//   // });
// });

$(document).ready(function(){
  $('div#advanced-fields').hide()
  $('div#advanced a').on('click', function(event){
    event.preventDefault();
    $(this).parent().find('div#advanced-fields').slideToggle();
  });
});