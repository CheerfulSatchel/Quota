var ready = function() {
	alert("HELP ME");
	$('#testButton').click(function() {
        $.ajax({
            type: 'GET',
            dataType: 'json',
            url: 'http://api.reimaginebanking.com/accounts?type=Credit%20Card&key=7c26b8201d6a14e230c59a421568e717',
            
            success: function(data){  
                alert(data[0].balance);
                console.log(data);

            }
        });
    }
}

$(document).ready(ready);
