# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready ->
  $('.test-row').on 'focusout', (row) ->
    wordId = $(this).data('word-id')
    compareWord = $(this).find('.word-compare').val()
    typedWord = $(this).find('input.word-input').val()
    if typedWord == compareWord
      html = "<span class='green-text'><i class='material-icons green-text medium'>check_circle</i>"
      $(this).find('.result-msg').html(html)
    else if typedWord != ''
      html = "<i class='material-icons red-text medium'>error</i>"
      $(this).find('.result-msg').html(html)
