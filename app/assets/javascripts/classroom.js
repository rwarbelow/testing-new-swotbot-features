$(document).ready(function(){
	// $('input[type=checkbox]').hide();
	$('.student').click(function(){
		$(this).toggleClass('selected');
	});

	$('.submit').click(function () {

		var students = $.makeArray($('.student.selected').map(function(index, student) {
			return this.dataset.studentId;
		}));

		var data = {
			students: students,
			actionType: this.dataset.actionType
		};

		$.ajax({
  		type: "POST",
  		url: '/classroom/update',
  		data: data,
  		success: displaySuccessfulResponse,
  		dataType: 'json'
		});
	});

	var displaySuccessfulResponse = function (response) {
		var numberOfStudents = response.studentIds.length;
		var message = numberOfStudents + ' students were reported ' + response.actionType + '.'
		$('.message').text(message);
	}

});
