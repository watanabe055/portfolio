# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

#文字数とカウント
$ ->
  $('.content').on('keyup keydown keypress change',->
      thisValueLength = $(this).val().length
      limit = 200
      if thisValueLength < limit
        $('.count').html(limit - thisValueLength).removeClass("text-danger")
      else
        $('.count').html(limit - thisValueLength).addClass("text-danger")
  ).keyup()
