jQuery ->
  $('form').on 'click', '.remove_fields', (event) ->
    $(this).prev('input[type=hidden]').val('1')
    $(this).closest('fieldset').hide()
    event.preventDefault()
# $(this).before($(this).closest('.counter').html numItems
$ ->
	$('form').on 'click', '.add_fields', (event) ->
	  time = new Date().getTime()
	  regexp = new RegExp($(this).data('id'), 'g')
	  $(this).before($(this).data('fields').replace(regexp, time))
	  numItems = $(".book-rec-form-container").length
	  x = $(this).prev(".book-rec-form-container").find('h4.counter').replaceWith( "<h4>" + numItems + ". </h4>")
	  
	  event.preventDefault()