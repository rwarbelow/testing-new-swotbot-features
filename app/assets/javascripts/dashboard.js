$(document).ready(function() {

	function updateGame(data){
      $.ajax({
        type: "GET",
        url: "/update-messages",
      });
    }
    setInterval(function() {
        $("#refresh").html(updateGame);
    }, 500);
});
