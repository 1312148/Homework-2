# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready ->
  $('#characterLeft').text '140 characters left'
  $('.message').keyup ->
    max = 140
    len = $(this).val().length
    if len >= max
      $('#characterLeft').text 'You have reached the limit'
      $('#characterLeft').addClass 'red'
      $('.btn btn-success green').addClass 'disabled'
    else
      ch = max - len
      $('#characterLeft').text ch + ' characters left'
      $('.btn btn-success green').removeClass 'disabled'
      $('#characterLeft').removeClass 'red'
    return
  return