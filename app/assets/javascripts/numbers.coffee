# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

source = new EventSource('/numbers/stream');

source.onmessage = (event) ->
  $('#numbers').append('<li>'+$.parseJSON(event.data).number+'</li>');