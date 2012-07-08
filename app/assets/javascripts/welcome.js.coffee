# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
#$(document).onload(function(){
#  $('')
#});


  jQuery ->
    $('form').attr('onsubmit', 'return false')
    $('#submit').click(->
      direction = $('input:radio[name=direction]:checked').val()
      input = $('#input').val()
      url = "converter/convert?input=" + input + "&direction=" + direction
      $.get(url , (data) ->
        $('#answer').html(data)))