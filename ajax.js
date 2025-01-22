$(document).ready(function(){
	$("#submit").click(function(){
		var name = $("#pero_name").value();
		var email = $("#perso_email").value();
		// returns succesfsull data submission message when stored in the db
		var dataString = 'name1=' + name + '&email1=' + email;
		if(name=='' || email == ''){
			alert('please fill the form');
			console.log(dataString);
		}else{
			$.ajax({
				type: "post",
				url: "functions.php",
				data: dataString,
				cache: false,
				success: function(result){
					alert(result);
				}
			});
		}
		return false;
	});
});
