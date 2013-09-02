# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
$(document).on 'click', 'form .remove_fields', (event) ->
  $(this).prev('input[type=hidden]').val('1')
  $(this).closest('fieldset').hide()
  event.preventDefault()

$(document).on 'click', 'form .add_fields', (event) ->
  time = new Date().getTime()
  regexp = new RegExp($(this).data('id'), 'g')
  $(this).before($(this).data('fields').replace(regexp, time))

  # $('.datepicker').removeClass('hasDatepicker').datepicker({dateFormat: 'yy/mm/dd'})
  event.preventDefault()

i = 2
$(document).on 'click', 'form .add_tab', (event) ->
  time = new Date().getTime()
  regexp = new RegExp($(this).data('id'), 'g')
  i++
  # obj = $(".nav nav-tabs>ul>li")
  # obj = $('div.tab-pane')[0]
  # obj = $('div.tab-content').find('div#' + i)
  $('div.tab-content').children().last().after("<div class=\"tab-pane\" id=\"" + i + "\">")
  
  $(this).parent().before("<li><a href=\"#" + i + "\" data-toggle=\"tab\">担保人</a></li>")
  # alert $(this).data('fields')
  # $(this).before($(this).data('fields').replace(regexp, time))
  # $(this).parent().before($('#' + i).data('fields').replace(regexp, time))
  event.preventDefault()