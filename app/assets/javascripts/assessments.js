$(function(){
	$('form').on('click', '.remove_fields', function(e){
		$(this).prev('input'[type="hidden"]).val('0');
		$(this).closest('fieldset').hide();
		return e.preventDefault();
	});
});