$(document).ready(function(){
	$('input[type=checkbox]').hide();
	$('.box').click(function(){
		if($(this).hasClass('selected')){
			$(this).removeClass('selected')
			student = $(this).attr('id')
			$(this).find("input").attr('value', "");
		} else {
			$(this).addClass('selected')
			student = $(this).attr('id')
			$(this).find("input").attr('value', student);
		}
	});

	$("input[type=submit]").click(function(){
		$('#fade').css('display', 'block')
		$('#overlay').css('display', 'block').html("<p class='append-message'>Loading...<p>").show()
	});


});
