$(function(){
	$('form').on('click', '.remove_fields', function(e){
		$(this).prev('input'[type="hidden"]).val('0');
		$(this).closest('fieldset').hide();
		return e.preventDefault();
	});
	$('form').on('click', '.add_fields', function(event) {
  var regexp, time;
  time = new Date().getTime();
  regexp = new RegExp($(this).data('id'), 'g');
  $(this).before($(this).data('fields').replace(regexp, time));
  return event.preventDefault();
});
});